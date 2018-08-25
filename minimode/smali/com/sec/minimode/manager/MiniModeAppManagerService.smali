.class public Lcom/sec/minimode/manager/MiniModeAppManagerService;
.super Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;
.source "MiniModeAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicySplitMode;,
        Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicyMiniPhoneMode;,
        Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicyMiniTabletMode;,
        Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;,
        Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;
    }
.end annotation


# static fields
.field private static final ATTACH_MSG:I = 0x7

.field private static final CLOSE_MSG:I = 0xc

.field private static final DEBUG:Z = false

.field private static final DEBUG_DUMP:Z = false

.field private static final DEBUG_VERBOSE:Z = false

.field private static final DETACH_MSG:I = 0x8

.field private static final HIDE_MSG:I = 0xe

.field private static final MOVE_MSG:I = 0xb

.field private static final REGISTER_CALLBACK_MSG:I = 0x4

.field private static final REQUEST_FOCUS_MSG:I = 0x6

.field private static final SET_LAST_SIZE_MSG:I = 0xa

.field private static final SET_POSITION_MSG:I = 0x9

.field private static final SHOW_MSG:I = 0xd

.field private static final START_MSG:I = 0x1

.field private static final START_WITH_POSITION_MSG:I = 0x2

.field private static final STOP_MSG:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MiniModeAppManager"

.field private static final UNREGISTER_CALLBACK_MSG:I = 0x5


# instance fields
.field private mConnectedMiniAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInstanceStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniModeCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniModeCallbacksHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPolicyMiniPhoneMode:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

.field private mPolicyMiniTabletMode:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

.field private mPolicySplitMode:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-direct {p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;-><init>()V

    .line 49
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicyMiniPhoneMode;

    invoke-direct {v0, p0, v1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicyMiniPhoneMode;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;Lcom/sec/minimode/manager/MiniModeAppManagerService$1;)V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mPolicyMiniPhoneMode:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    .line 50
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicyMiniTabletMode;

    invoke-direct {v0, p0, v1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicyMiniTabletMode;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;Lcom/sec/minimode/manager/MiniModeAppManagerService$1;)V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mPolicyMiniTabletMode:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    .line 51
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicySplitMode;

    invoke-direct {v0, p0, v1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicySplitMode;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;Lcom/sec/minimode/manager/MiniModeAppManagerService$1;)V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mPolicySplitMode:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    .line 572
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;

    invoke-direct {v0, p0}, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    .line 272
    if-nez p1, :cond_0

    .line 273
    const-string v0, "MiniModeAppManager"

    const-string v1, "MiniModeAppManagerService initial failed!! (context is null)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    return-void

    .line 277
    :cond_0
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mContext:Landroid/content/Context;

    .line 278
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mPm:Landroid/content/pm/PackageManager;

    .line 279
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$1;

    invoke-direct {v0, p0}, Lcom/sec/minimode/manager/MiniModeAppManagerService$1;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacksHashMap:Ljava/util/HashMap;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mConnectedMiniAppsList:Ljava/util/List;

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mInstanceStateMap:Ljava/util/HashMap;

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sec/minimode/manager/MiniModeAppManagerService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mConnectedMiniAppsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/minimode/manager/MiniModeAppManagerService;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/minimode/manager/MiniModeAppManagerService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->dumpList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/minimode/manager/MiniModeAppManagerService;Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/minimode/manager/MiniModeAppManagerService;
    .param p1, "x1"    # Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->removeDiedCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/minimode/manager/MiniModeAppManagerService;I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    .locals 1
    .param p0, "x0"    # Lcom/sec/minimode/manager/MiniModeAppManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->getPolicy(I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/minimode/manager/MiniModeAppManagerService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/minimode/manager/MiniModeAppManagerService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacksHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/minimode/manager/MiniModeAppManagerService;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->dumpMap(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/minimode/manager/MiniModeAppManagerService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private dumpList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    return-void
.end method

.method private dumpMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/content/ComponentName;>;"
    return-void
.end method

.method private getPolicy(I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    .locals 1
    .param p1, "policyMode"    # I

    .prologue
    .line 259
    packed-switch p1, :pswitch_data_0

    .line 267
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 261
    :pswitch_0
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mPolicyMiniTabletMode:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mPolicyMiniPhoneMode:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    goto :goto_0

    .line 265
    :pswitch_2
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mPolicySplitMode:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private removeDiedCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .locals 6
    .param p1, "cb"    # Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .prologue
    .line 519
    const-string v1, "MiniModeAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeDiedCallback() : cb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacksHashMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacksHashMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    const-string v1, "MiniModeAppManager"

    const-string v2, "removeDiedCallback() : remove cb from mMiniModeCallbacksHashMap"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacksHashMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 526
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 527
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public closeAll()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 429
    return-void
.end method

.method public closeOthers(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 438
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 293
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mInstanceStateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllInstalledMiniApps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 511
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0xc0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAllRunningMiniApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mConnectedMiniAppsList:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 459
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mInstanceStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastPosition(ILandroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "policyMode"    # I
    .param p2, "cn"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->getPolicy(I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v0

    .line 357
    .local v0, "policy":Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    if-nez v0, :cond_0

    .line 358
    const/4 v1, 0x0

    .line 360
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->getLastPosition(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public getMiniModeAppCallback(Landroid/content/ComponentName;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 469
    if-nez p1, :cond_0

    .line 470
    const/4 v1, 0x0

    .line 484
    :goto_0
    return-object v1

    .line 473
    :cond_0
    const/4 v1, 0x0

    .line 474
    .local v1, "cb":Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    iget-object v4, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 475
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 476
    iget-object v4, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 478
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 479
    iget-object v4, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    .end local v1    # "cb":Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    check-cast v1, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .line 483
    .end local v2    # "cn":Landroid/content/ComponentName;
    .restart local v1    # "cb":Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    :cond_1
    iget-object v4, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0

    .line 475
    .restart local v2    # "cn":Landroid/content/ComponentName;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getPosition(ILandroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "policyMode"    # I
    .param p2, "cn"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->getPolicy(I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v0

    .line 367
    .local v0, "policy":Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    if-nez v0, :cond_0

    .line 368
    const/4 v1, 0x0

    .line 370
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->getPosition(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public hideAll()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 450
    return-void
.end method

.method public isInstalledMiniApp(Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 488
    if-nez p1, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v4

    .line 491
    :cond_1
    invoke-virtual {p0}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->getAllInstalledMiniApps()Ljava/util/List;

    move-result-object v3

    .line 492
    .local v3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 495
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 496
    .local v2, "rInfo":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .local v1, "miniAppCN":Landroid/content/ComponentName;
    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 499
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isOccupiedPosition(III)Z
    .locals 2
    .param p1, "policyMode"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->getPolicy(I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v0

    .line 410
    .local v0, "policy":Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    if-nez v0, :cond_0

    .line 411
    const/4 v1, 0x0

    .line 413
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->isOccupiedPosition(II)Z

    move-result v1

    goto :goto_0
.end method

.method public move(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 423
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "cb"    # Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "policyMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 327
    .local v0, "obj":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;>;"
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 328
    return-void
.end method

.method public removePosition(ILandroid/content/ComponentName;)V
    .locals 1
    .param p1, "policyMode"    # I
    .param p2, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->getPolicy(I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v0

    .line 389
    .local v0, "policy":Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {v0, p2}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->removePosition(Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public requestFocus(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "hasFocus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 339
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 340
    .local v0, "focused":I
    :goto_0
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v0, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 341
    return-void

    .line 339
    .end local v0    # "focused":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mInstanceStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLastSize(ILandroid/content/ComponentName;II)V
    .locals 4
    .param p1, "policyMode"    # I
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 398
    if-nez p2, :cond_0

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;

    invoke-direct {v0, p0, p2, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;Landroid/content/ComponentName;I)V

    .line 402
    .local v0, "cd":Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, p3, p4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setPosition(ILandroid/content/ComponentName;II)V
    .locals 4
    .param p1, "policyMode"    # I
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 346
    if-nez p2, :cond_0

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;

    invoke-direct {v0, p0, p2, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;Landroid/content/ComponentName;I)V

    .line 350
    .local v0, "cd":Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, p3, p4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public showAll()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    return-void
.end method

.method public start(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    return-void
.end method

.method public startWithPosition(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 308
    return-void
.end method

.method public stop(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 315
    return-void
.end method

.method public unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 334
    return-void
.end method

.method public updatePosition(ILandroid/content/ComponentName;II)V
    .locals 1
    .param p1, "policyMode"    # I
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->getPolicy(I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v0

    .line 378
    .local v0, "policy":Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {v0, p2, p3, p4}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->updatePosition(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method
