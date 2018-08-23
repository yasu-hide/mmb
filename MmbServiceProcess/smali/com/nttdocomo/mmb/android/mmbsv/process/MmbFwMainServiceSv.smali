.class public Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
.super Landroid/app/Service;
.source "MmbFwMainServiceSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwComplementHandlerSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwDownloadHandlerSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwForeignHandlerSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
    }
.end annotation


# static fields
.field private static final BROADCAST_ACTIONS:[Ljava/lang/String;

.field private static final CALLBACK_TEST:Ljava/lang/String;

.field private static final CALLBACK_TEST_OUT:Ljava/lang/String;

.field private static final HOME_DIR:Ljava/lang/String;

.field private static final MEDIA_ACTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEDIA_ACTIONS_ARRAY:[Ljava/lang/String;

.field private static final PACKAGE_NAME:Ljava/lang/String;

.field private static final SD_HOME_DIR:Ljava/lang/String;

.field private static final SEPARATOR:Ljava/lang/String;

.field private static final USE_PSEUDO_SERVER_FILE:Ljava/lang/String;

.field static sTheService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

.field static usePseudoServer:Z


# instance fields
.field private final handlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;",
            ">;"
        }
    .end annotation
.end field

.field final lFcPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;

.field private final mAm:Landroid/app/IActivityManager;

.field private mBTPorting:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;

.field private mBackgroundOpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mForegroundToken:Landroid/os/IBinder;

.field private mInitializedFlag:Z

.field private mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

.field private mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mRecodingAvailability:Z

.field private mRestartInvoked:Z

.field private final mRestartLock:Ljava/lang/Object;

.field private mRestarted:Z

.field private final mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

.field private mTimerAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;

.field private mTimerTask:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    aput-object v1, v0, v3

    const-string v1, "android.intent.action.TIME_SET"

    aput-object v1, v0, v4

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    aput-object v1, v0, v5

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->BROADCAST_ACTIONS:[Ljava/lang/String;

    .line 154
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    aput-object v1, v0, v3

    const-string v1, "android.intent.action.MEDIA_EJECT"

    aput-object v1, v0, v4

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    aput-object v1, v0, v5

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->MEDIA_ACTIONS_ARRAY:[Ljava/lang/String;

    .line 163
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->MEDIA_ACTIONS_ARRAY:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->MEDIA_ACTIONS:Ljava/util/List;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/PseudoServer.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->USE_PSEUDO_SERVER_FILE:Ljava/lang/String;

    .line 240
    sput-boolean v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->usePseudoServer:Z

    .line 245
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->PACKAGE_NAME:Ljava/lang/String;

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->HOME_DIR:Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->SD_HOME_DIR:Ljava/lang/String;

    .line 3335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/private/tmm/callbackTest.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->CALLBACK_TEST:Ljava/lang/String;

    .line 3348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MMbTest/database"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->CALLBACK_TEST_OUT:Ljava/lang/String;

    .line 3356
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 285
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 144
    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mForegroundToken:Landroid/os/IBinder;

    .line 149
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mAm:Landroid/app/IActivityManager;

    .line 222
    iput-boolean v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mInitializedFlag:Z

    .line 227
    iput-boolean v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRestarted:Z

    .line 270
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBTPorting:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;

    .line 693
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$2;

    invoke-direct {v8, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 786
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$3;

    invoke-direct {v8, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 2370
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->handlerMap:Ljava/util/Map;

    .line 2371
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;

    invoke-direct {v7, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSignalHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 2372
    .local v7, "signalHandler":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwDownloadHandlerSv;

    invoke-direct {v5, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwDownloadHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 2373
    .local v5, "downloadHandler":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;

    invoke-direct {v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 2374
    .local v2, "bgmStHandler":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 2375
    .local v0, "bgmFcHandler":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 2376
    .local v1, "bgmFcMP4Handler":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;

    invoke-direct {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 2377
    .local v3, "bgmStRecHandler":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwForeignHandlerSv;

    invoke-direct {v6, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwForeignHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 2378
    .local v6, "foreignHandler":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwComplementHandlerSv;

    invoke-direct {v4, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwComplementHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 2379
    .local v4, "complementHandler":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
    const/high16 v8, 0x10000

    invoke-direct {p0, v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->addHandler(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;)V

    .line 2380
    const v8, 0x10001

    invoke-direct {p0, v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->addHandler(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;)V

    .line 2381
    const v8, 0x10002

    invoke-direct {p0, v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->addHandler(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;)V

    .line 2382
    const v8, 0x10003

    invoke-direct {p0, v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->addHandler(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;)V

    .line 2383
    const/high16 v8, 0x20000

    invoke-direct {p0, v8, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->addHandler(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;)V

    .line 2384
    const v8, 0x20001

    invoke-direct {p0, v8, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->addHandler(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;)V

    .line 2385
    const v8, 0x20002

    invoke-direct {p0, v8, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->addHandler(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;)V

    .line 2386
    const/high16 v8, 0x70000

    invoke-direct {p0, v8, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->addHandler(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;)V

    .line 2387
    const v8, 0x30001

    invoke-direct {p0, v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->addHandler(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;)V

    .line 2388
    const/high16 v8, 0x80000

    invoke-direct {p0, v8, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->addHandler(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;)V

    .line 2389
    const/high16 v8, 0x90000

    invoke-direct {p0, v8, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->addHandler(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;)V

    .line 2390
    const/high16 v8, 0x40000

    invoke-direct {p0, v8, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->addHandler(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;)V

    .line 2391
    const/high16 v8, 0x50000

    invoke-direct {p0, v8, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->addHandler(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;)V

    .line 2528
    iput-boolean v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRestartInvoked:Z

    .line 2530
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRestartLock:Ljava/lang/Object;

    .line 2799
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBackgroundOpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3469
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$4;

    invoke-direct {v8, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$4;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->lFcPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;

    .line 289
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-direct {v8, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    .line 290
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    invoke-direct {v8, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    .line 291
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;

    invoke-direct {v8, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mTimerAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;

    .line 292
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->hasRecordingFunction()Z

    move-result v8

    iput-boolean v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRecodingAvailability:Z

    .line 293
    invoke-static {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->setInstance(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 297
    return-void
.end method

.method private acceptBroadcastAction(Landroid/content/Intent;)V
    .locals 2
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 1450
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1451
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->handleAndroidIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)I
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getSubId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getStreamingText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetaText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mTimerTask:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p1, "x1"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mTimerTask:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRecodingAvailability:Z

    return v0
.end method

.method static synthetic access$800(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mTimerAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBTPorting:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;

    return-object v0
.end method

.method private addHandler(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;)V
    .locals 2
    .param p1, "aId"    # I
    .param p2, "aHandler"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;

    .prologue
    .line 2408
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getGroupId(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->setNotificationId(I)V

    .line 2409
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->handlerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2413
    return-void
.end method

.method private checkBluetoothAction(Landroid/content/Intent;)V
    .locals 3
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 3731
    if-nez p1, :cond_1

    .line 3732
    const-string v1, "Intent is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3746
    :cond_0
    :goto_0
    return-void

    .line 3735
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3736
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3740
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->initBluetoothPorting()V

    goto :goto_0
.end method

.method private clearCaSystemInformation()V
    .locals 2

    .prologue
    .line 3804
    new-instance v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-direct {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;-><init>()V

    .line 3805
    .local v0, "mwStCtl":Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;
    invoke-virtual {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->clearCaSystem()I

    move-result v1

    .line 3806
    .local v1, "result":I
    const/4 v0, 0x0

    .line 3810
    return-void
.end method

.method private clearNotification()V
    .locals 3

    .prologue
    .line 2520
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->handlerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;

    .line 2521
    .local v0, "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->hideNotifyAll()V

    goto :goto_0

    .line 2526
    .end local v0    # "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
    :cond_0
    return-void
.end method

.method private createBluetoothPorting()V
    .locals 1

    .prologue
    .line 3705
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBTPorting:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;

    if-nez v0, :cond_0

    .line 3706
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;->createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBTPorting:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;

    .line 3709
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->initBluetoothPorting()V

    .line 3714
    return-void
.end method

.method private detectMmbiAppRemoved()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3603
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->isEnableBackgroundOperation()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3604
    const-string v2, "Background operation is disabled."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3643
    :cond_0
    :goto_0
    return-void

    .line 3612
    :cond_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->isExistMmbiApp()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3618
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBackgroundOpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3622
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    .line 3624
    .local v1, "pre":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoReceptionForRecommend(I)I

    .line 3625
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoReceptionForForceReceive(I)I

    .line 3626
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoReceptionForAutoReceive(I)I

    .line 3628
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoCompletion(I)I

    .line 3630
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoAcquireLisence(I)I

    .line 3632
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setViewLogTransmission(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3633
    .end local v1    # "pre":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :catch_0
    move-exception v0

    .line 3634
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3635
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 3636
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private dispatchSpecificAction(Landroid/content/Intent;)V
    .locals 14
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 893
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 897
    const/4 v6, 0x0

    .line 898
    .local v6, "recState":Z
    iget-boolean v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRecodingAvailability:Z

    if-eqz v10, :cond_1

    .line 900
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getRecordingModule()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMmbStRecordingCurrentState(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;

    move-result-object v7

    .line 902
    .local v7, "recStateList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 903
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    .line 904
    .local v9, "state":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;
    iget v10, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbState:I

    if-eqz v10, :cond_0

    .line 905
    const/4 v6, 0x1

    .line 913
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "recStateList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;>;"
    .end local v9    # "state":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;
    :cond_1
    const-string v10, "scheduleType"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 915
    .local v8, "recordtype":I
    const/4 v1, 0x0

    .line 916
    .local v1, "checktype":I
    or-int/lit8 v1, v1, 0x4

    .line 917
    or-int/lit8 v1, v1, 0x10

    .line 918
    or-int/lit16 v1, v1, 0x2000

    .line 920
    and-int/lit16 v10, v8, 0x2014

    if-eqz v10, :cond_2

    .line 921
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mTimerAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;

    const-wide/32 v12, 0xea60

    invoke-virtual {v10, v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;->registTimer(J)V

    .line 924
    :cond_2
    const/16 v1, 0x1000

    .line 925
    and-int v10, v8, v1

    if-eqz v10, :cond_3

    .line 926
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mTimerAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;

    const-wide/32 v12, 0xea60

    invoke-virtual {v10, v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;->registTimer(J)V

    .line 929
    :cond_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 930
    .local v5, "moduleclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    invoke-virtual {v10, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->getModule(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    move-result-object v4

    .line 931
    .local v4, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->dispatchSpecificAction(Landroid/content/Intent;)V

    .line 941
    .end local v1    # "checktype":I
    .end local v4    # "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    .end local v5    # "moduleclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "recState":Z
    .end local v8    # "recordtype":I
    :goto_0
    return-void

    .line 933
    :cond_4
    const-string v10, "action is null"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 935
    :catch_0
    move-exception v2

    .line 936
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v10, "class %s not found"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private fallIntoSleepFcPgInfoMw()V
    .locals 4

    .prologue
    .line 2926
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-direct {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;-><init>()V

    .line 2931
    .local v0, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->lFcPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->registListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;)I

    move-result v1

    .line 2935
    .local v1, "result":I
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->OK:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2936
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v3, "Failed in registListener"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2943
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->fallIntoSleep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2951
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 2959
    return-void

    .line 2948
    :catchall_0
    move-exception v2

    .line 2951
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    throw v2
.end method

.method private getContentText(I)Ljava/lang/String;
    .locals 3
    .param p1, "aValue"    # I

    .prologue
    const v2, 0x7f04000d

    .line 1949
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1951
    .local v0, "res":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 1968
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 1953
    :pswitch_0
    const v2, 0x7f04000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1973
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1956
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1957
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1959
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1960
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1962
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1963
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1965
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1966
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1951
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getGroupId(I)I
    .locals 2
    .param p1, "aId"    # I

    .prologue
    .line 2426
    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private getHandler(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
    .locals 3
    .param p1, "aId"    # I

    .prologue
    .line 2456
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->handlerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;

    .line 2460
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
    return-object v0
.end method

.method static declared-synchronized getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .locals 3

    .prologue
    .line 2769
    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sTheService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2773
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    monitor-exit v1

    return-object v0

    .line 2769
    .end local v0    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private getLoggerClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "aFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 426
    const/4 v5, 0x0

    .line 427
    .local v5, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 430
    .local v3, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 432
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    .end local v3    # "input":Ljava/io/InputStream;
    .local v4, "input":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v7

    new-array v0, v7, [B

    .line 435
    .local v0, "buf":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 436
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    move-object v5, v6

    .line 441
    .end local v0    # "buf":[B
    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    .line 443
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 450
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v5

    .line 444
    .restart local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 445
    .local v1, "err":Ljava/lang/Exception;
    const-string v7, "close error"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 438
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 439
    .restart local v1    # "err":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 441
    if-eqz v3, :cond_1

    .line 443
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 444
    :catch_2
    move-exception v1

    .line 445
    const-string v7, "close error"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 441
    .end local v1    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v3, :cond_2

    .line 443
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 446
    :cond_2
    :goto_3
    throw v7

    .line 444
    :catch_3
    move-exception v1

    .line 445
    .restart local v1    # "err":Ljava/lang/Exception;
    const-string v8, "close error"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 441
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "input":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_2

    .line 438
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private getMetaText(I)Ljava/lang/String;
    .locals 3
    .param p1, "aValue"    # I

    .prologue
    const v2, 0x7f04000f

    .line 1988
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1990
    .local v0, "res":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 2007
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 1992
    :pswitch_0
    const v2, 0x7f040010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2012
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1995
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1996
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1998
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1999
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 2001
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2002
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 2004
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2005
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1990
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getStreamingText(I)Ljava/lang/String;
    .locals 3
    .param p1, "aValue"    # I

    .prologue
    const v2, 0x7f04000b

    .line 1910
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1912
    .local v0, "res":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 1929
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 1914
    :pswitch_0
    const v2, 0x7f04000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1934
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1917
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1918
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1920
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1921
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1923
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1924
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1926
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1927
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1912
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getSubId(I)I
    .locals 2
    .param p1, "aId"    # I

    .prologue
    .line 2440
    shr-int/lit8 v0, p1, 0x0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private handleAndroidIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 613
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->checkBluetoothAction(Landroid/content/Intent;)V

    .line 614
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->acceptBroadcastAction(Landroid/content/Intent;)V

    .line 615
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->notifyBroadcastAction(Landroid/content/Intent;)V

    .line 619
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 562
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 564
    const-string v1, "action is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    :goto_0
    return-void

    .line 565
    :cond_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->MEDIA_ACTIONS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->notifyMediaIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 567
    :cond_1
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 568
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->detectMmbiAppRemoved()V

    goto :goto_0

    .line 569
    :cond_2
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 570
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->onShutdown()V

    goto :goto_0

    .line 571
    :cond_3
    const-string v1, "android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 572
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->handleAndroidIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 573
    :cond_4
    const-string v1, "com.nttdocomo.mmb.android.mmbsv.process.arbitration.MmbCfConflictModuleSv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 574
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->notifyBroadcastAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 575
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 576
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->dispatchSpecificAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 577
    :cond_6
    const-string v1, "com.nttdocomo.mmb.android.mmbsv.ACTION_RESTART_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 582
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$1;

    invoke-direct {v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 588
    :cond_7
    const-string v1, "com.nttdocomo.android.portablesim.action.PSIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 592
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->handlePsimStateChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 594
    :cond_8
    const-string v1, "unrecognizable action"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handlePsimStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 637
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->shouldRestartService(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartServiceUnpluggedSIM()V

    .line 647
    :cond_0
    return-void
.end method

.method private initBluetoothPorting()V
    .locals 2

    .prologue
    .line 3765
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$5;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$5;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3787
    return-void
.end method

.method private initLogger()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 394
    :try_start_0
    const-string v4, "/data/local/tmp/conf.txt"

    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getLoggerClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, "loggername":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 396
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 397
    .local v2, "loggerclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;

    .line 398
    .local v1, "logger":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->setLogger(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 410
    .end local v1    # "logger":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;
    .end local v2    # "loggerclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "loggername":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 402
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 404
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isExistMmbiApp()Z
    .locals 7

    .prologue
    .line 3560
    const/4 v4, 0x0

    .line 3563
    .local v4, "result":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3564
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 3567
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 3568
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 3572
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "jp.co.mmbi.app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3573
    const/4 v4, 0x1

    .line 3581
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method private notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 5
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 769
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->notifyBroadcastAction(Landroid/content/Intent;)V

    .line 770
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->notifyBroadcastAction(Landroid/content/Intent;)V

    .line 772
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getIpcResponse()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 773
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    invoke-interface {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->notifyBroadcastAction(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 775
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 781
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private notifyFatalError()V
    .locals 5

    .prologue
    .line 2697
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getIpcResponse()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2699
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    invoke-interface {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->notifyFatalError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2700
    :catch_0
    move-exception v0

    .line 2701
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2707
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;>;"
    :cond_0
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 6

    .prologue
    .line 722
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 723
    .local v2, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->BROADCAST_ACTIONS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 724
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 723
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 726
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 730
    return-void
.end method

.method private static declared-synchronized setInstance(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 2
    .param p0, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 2749
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sTheService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2753
    monitor-exit v0

    return-void

    .line 2749
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private shouldRestartService(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 665
    const-string v1, "com.nttdocomo.android.portablesim.extra.CONN_STATE"

    .line 666
    .local v1, "extraConnState":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 672
    .local v0, "connState":I
    const/4 v2, 0x0

    .line 673
    .local v2, "shouldRestartService":Z
    sparse-switch v0, :sswitch_data_0

    .line 687
    :goto_0
    return v2

    .line 678
    :sswitch_0
    const/4 v2, 0x1

    .line 679
    goto :goto_0

    .line 673
    :sswitch_data_0
    .sparse-switch
        0x10101 -> :sswitch_0
        0x10202 -> :sswitch_0
        0x100202 -> :sswitch_0
        0x110202 -> :sswitch_0
    .end sparse-switch
.end method

.method private unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 750
    return-void
.end method


# virtual methods
.method public backupFiles()V
    .locals 0

    .prologue
    .line 3005
    return-void
.end method

.method enableBackgroundOperation()V
    .locals 3

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBackgroundOpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2908
    :cond_0
    return-void
.end method

.method public getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    .locals 4

    .prologue
    .line 1119
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->getModule(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    move-result-object v0

    .local v0, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    move-object v1, v0

    .line 1120
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    .line 1124
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    return-object v1
.end method

.method public getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .locals 4

    .prologue
    .line 1095
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->getModule(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    move-result-object v0

    .local v0, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    move-object v1, v0

    .line 1096
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    .line 1100
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    return-object v1
.end method

.method public getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .locals 4

    .prologue
    .line 1143
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->getModule(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    move-result-object v0

    .local v0, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    move-object v1, v0

    .line 1144
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 1148
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    return-object v1
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2723
    move-object v0, p0

    .line 2727
    .local v0, "result":Landroid/content/Context;
    return-object v0
.end method

.method public getHistoryModule()Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;
    .locals 4

    .prologue
    .line 1167
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->getModule(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    move-result-object v0

    .local v0, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    move-object v1, v0

    .line 1168
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;

    .line 1172
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;
    return-object v1
.end method

.method getInitializedFlag()Z
    .locals 1

    .prologue
    .line 2789
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mInitializedFlag:Z

    .line 2793
    .local v0, "result":Z
    return v0
.end method

.method public getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    return-object v0
.end method

.method public getLogModule()Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;
    .locals 4

    .prologue
    .line 1191
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->getModule(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    move-result-object v0

    .local v0, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    move-object v1, v0

    .line 1192
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    .line 1196
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;
    return-object v1
.end method

.method public getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    .locals 4

    .prologue
    .line 1215
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->getModule(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    move-result-object v0

    .local v0, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    move-object v1, v0

    .line 1216
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    .line 1220
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    return-object v1
.end method

.method public getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .locals 4

    .prologue
    .line 1239
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->getModule(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    move-result-object v0

    .local v0, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    move-object v1, v0

    .line 1240
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    .line 1244
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    return-object v1
.end method

.method public getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;
    .locals 4

    .prologue
    .line 3508
    iget-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRecodingAvailability:Z

    if-nez v2, :cond_0

    .line 3509
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    const-string v3, "Recoding Module Unsupported"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3511
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->getModule(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    move-result-object v0

    .local v0, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    move-object v1, v0

    .line 3512
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    .line 3516
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;
    return-object v1
.end method

.method public getRecommendModule()Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;
    .locals 4

    .prologue
    .line 1263
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->getModule(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    move-result-object v0

    .local v0, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    move-object v1, v0

    .line 1264
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;

    .line 1268
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;
    return-object v1
.end method

.method public getRecordingModule()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;
    .locals 4

    .prologue
    .line 1312
    iget-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRecodingAvailability:Z

    if-nez v2, :cond_0

    .line 1313
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    const-string v3, "Recoding Module Unsupported"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1315
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->getModule(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    move-result-object v0

    .local v0, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    move-object v1, v0

    .line 1316
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    .line 1320
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;
    return-object v1
.end method

.method public getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    .locals 4

    .prologue
    .line 1287
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->getModule(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    move-result-object v0

    .local v0, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    move-object v1, v0

    .line 1288
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    .line 1292
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    return-object v1
.end method

.method public getServiceListModule()Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;
    .locals 4

    .prologue
    .line 1339
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->getModule(Ljava/lang/Class;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;

    move-result-object v0

    .local v0, "module":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
    move-object v1, v0

    .line 1340
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;

    .line 1344
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;
    return-object v1
.end method

.method public hasRecordingFunction()Z
    .locals 1

    .prologue
    .line 3539
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRecodingAvailability:Z

    return v0
.end method

.method public isA2dpConnected()Z
    .locals 2

    .prologue
    .line 3660
    const/4 v0, 0x0

    .line 3661
    .local v0, "result":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBTPorting:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;

    if-eqz v1, :cond_0

    .line 3662
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBTPorting:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;->isDevicesConnected()Z

    move-result v0

    .line 3667
    :cond_0
    return v0
.end method

.method public isA2dpScmstSupported()Z
    .locals 2

    .prologue
    .line 3682
    const/4 v0, 0x0

    .line 3683
    .local v0, "result":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBTPorting:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;

    if-eqz v1, :cond_0

    .line 3684
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBTPorting:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;->isScmstSupported()Z

    move-result v0

    .line 3689
    :cond_0
    return v0
.end method

.method public isEnableBackgroundOperation()Z
    .locals 2

    .prologue
    .line 2876
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBackgroundOpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 2880
    .local v0, "result":Z
    return v0
.end method

.method public killSelf()V
    .locals 3

    .prologue
    .line 2621
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 2622
    .local v0, "pid":I
    const-string v1, "killSelf invoking"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2623
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 2627
    return-void
.end method

.method notifyConnect()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->notifyConnect()V

    .line 817
    return-void
.end method

.method notifyDisconnect()V
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->notifyDisconnect()V

    .line 837
    return-void
.end method

.method notifyFirstSessionCreated()V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->notifyFirstSessionCreated()V

    .line 856
    return-void
.end method

.method notifyLastSessionDeleted()V
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->notifyLastSessionDeleted()V

    .line 874
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 961
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 962
    const/4 v1, 0x0

    .line 963
    .local v1, "result":Landroid/os/IBinder;
    if-eqz p1, :cond_2

    .line 964
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 966
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 970
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    .line 983
    .end local v0    # "action":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 972
    .restart local v0    # "action":Ljava/lang/String;
    :cond_0
    const-string v2, "unrecognizable action"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 975
    :cond_1
    const-string v2, "action is null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 978
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    const-string v2, "aIntent is null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 339
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->initLogger()V

    .line 340
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 342
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->startupModule()V

    .line 344
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    .line 345
    .local v3, "pref":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getInitializedFlag()I

    move-result v1

    .line 346
    .local v1, "flag":I
    if-nez v1, :cond_0

    .line 347
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->installModule()V

    .line 348
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setInitializedFlag(I)I

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->detectMmbiAppRemoved()V

    .line 352
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->setupModule()V

    .line 353
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->registerBroadcastReceiver()V

    .line 355
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->startForeground()V

    .line 357
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->clearNotification()V

    .line 358
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mInitializedFlag:Z

    .line 359
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRestarted:Z

    .line 361
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->registerMediaReceiver(Landroid/content/BroadcastReceiver;)V

    .line 363
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->createBluetoothPorting()V

    .line 365
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.nttdocomo.mmb.android.mmbsv.ACTION_STARTED_SERVICE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "[[Intent]:%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v1    # "flag":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pref":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->unregisterMediaReceiver(Landroid/content/BroadcastReceiver;)V

    .line 472
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBTPorting:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBTPorting:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoBluetoothSp/MmbPoBluetoothSp;->closeObject()V

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->cleanupModule()V

    .line 476
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->clearNotification()V

    .line 477
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->stopForeground()V

    .line 478
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->unregisterBroadcastReceiver()V

    .line 479
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 1045
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 1049
    return-void
.end method

.method public onShutdown()V
    .locals 2

    .prologue
    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mServiceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceModuleSv;->cleanupModule()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "aIntent"    # Landroid/content/Intent;
    .param p2, "aFlags"    # I
    .param p3, "aStartId"    # I

    .prologue
    .line 536
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 538
    if-eqz p1, :cond_0

    .line 539
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->handleIntent(Landroid/content/Intent;)V

    .line 541
    :cond_0
    const/4 v0, 0x1

    .line 545
    .local v0, "result":I
    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1003
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1004
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v1

    .line 1005
    .local v1, "result":Z
    if-eqz p1, :cond_2

    .line 1006
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1008
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1010
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeDeadResponses()V

    .line 1011
    const/4 v1, 0x1

    .line 1024
    .end local v0    # "action":Ljava/lang/String;
    :goto_0
    return v1

    .line 1013
    .restart local v0    # "action":Ljava/lang/String;
    :cond_0
    const-string v2, "unrecognizable action"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1016
    :cond_1
    const-string v2, "action is null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1019
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    const-string v2, "aIntent is null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public restartService(Z)V
    .locals 2
    .param p1, "aBackground"    # Z

    .prologue
    .line 2549
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRestartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2550
    :try_start_0
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRestartInvoked:Z

    if-eqz v0, :cond_0

    .line 2551
    monitor-exit v1

    .line 2567
    :goto_0
    return-void

    .line 2553
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRestartInvoked:Z

    .line 2554
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2555
    const-string v0, "starts restarting."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2557
    :try_start_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->notifyFatalError()V

    .line 2558
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->cancelJobAndWaitAll()V

    .line 2559
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeAllResponses()V

    .line 2560
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->onDestroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2562
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->killSelf()V

    goto :goto_0

    .line 2554
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2562
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->killSelf()V

    throw v0
.end method

.method public restartServiceUnpluggedSIM()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2586
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRestartLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2587
    :try_start_0
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRestartInvoked:Z

    if-eqz v1, :cond_0

    .line 2588
    monitor-exit v2

    .line 2607
    :goto_0
    return-void

    .line 2590
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRestartInvoked:Z

    .line 2591
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2592
    const-string v1, "starts restarting."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2594
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->stopBackgroundOperation()V

    .line 2595
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->clearCaSystemInformation()V

    .line 2596
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->notifyFatalError()V

    .line 2597
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeAllResponses()V

    .line 2598
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->onDestroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2602
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->killSelf()V

    goto :goto_0

    .line 2591
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2599
    :catch_0
    move-exception v0

    .line 2600
    .local v0, "err":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "Exception Error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2602
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->killSelf()V

    goto :goto_0

    .end local v0    # "err":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->killSelf()V

    throw v1
.end method

.method public setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "aMode"    # I
    .param p2, "aOnOff"    # Z
    .param p3, "aValue"    # I
    .param p4, "aTitle"    # Ljava/lang/String;
    .param p5, "aText"    # Ljava/lang/String;
    .param p6, "aIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2491
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getHandler(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;

    move-result-object v0

    .line 2492
    .local v0, "handler":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
    if-nez v0, :cond_0

    .line 2493
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid aMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2495
    :cond_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getSubId(I)I

    move-result v1

    .line 2496
    .local v1, "subId":I
    if-eqz p2, :cond_1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 2497
    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->showNotify(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 2504
    :goto_0
    return-void

    .line 2499
    :cond_1
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;->hideNotify(I)V

    goto :goto_0
.end method

.method public setSleepTimerForStRecStart()V
    .locals 4

    .prologue
    .line 3310
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mRecodingAvailability:Z

    if-eqz v1, :cond_0

    .line 3314
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    move-result-object v0

    .line 3317
    .local v0, "sleepcontrol":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;
    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->wakeupDevice(J)V

    .line 3319
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mTimerAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;->registTimer(J)V

    .line 3324
    .end local v0    # "sleepcontrol":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;
    :cond_0
    return-void
.end method

.method public startForeground()V
    .locals 6

    .prologue
    .line 1367
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "mmbservice"

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    return-void

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1370
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopBackgroundOperation()V
    .locals 4

    .prologue
    .line 2827
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mBackgroundOpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2855
    :goto_0
    return-void

    .line 2835
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getRecordingModule()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->stopRec()V

    .line 2838
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelAllOperation()V

    .line 2841
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderSv;->disableContentProvider()V

    .line 2844
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->cancelJobAndWaitAll()V

    .line 2847
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->fallIntoSleepFcPgInfoMw()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2848
    :catch_0
    move-exception v0

    .line 2849
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2850
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopForeground()V
    .locals 6

    .prologue
    .line 1419
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const/4 v4, 0x0

    const-string v5, "mmbservice"

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    return-void

    .line 1420
    :catch_0
    move-exception v0

    .line 1421
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1422
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
