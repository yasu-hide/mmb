.class public final Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;
.super Ljava/lang/Object;
.source "SlookBezelInteraction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;,
        Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "BezelInteractionService"

.field private static final TAG:Ljava/lang/String; = "SlookBezelInteraction"

.field private static mContext:Landroid/content/Context;

.field private static mService:Lcom/samsung/android/bezelinteraction/IBezelManager;


# instance fields
.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mContext:Landroid/content/Context;

    .line 45
    sput-object v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mService:Lcom/samsung/android/bezelinteraction/IBezelManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    sput-object p1, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->getService()Lcom/samsung/android/bezelinteraction/IBezelManager;

    .line 51
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized getService()Lcom/samsung/android/bezelinteraction/IBezelManager;
    .locals 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mService:Lcom/samsung/android/bezelinteraction/IBezelManager;

    if-nez v0, :cond_1

    .line 55
    const-string v0, "BezelInteractionService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bezelinteraction/IBezelManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bezelinteraction/IBezelManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mService:Lcom/samsung/android/bezelinteraction/IBezelManager;

    .line 62
    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mService:Lcom/samsung/android/bezelinteraction/IBezelManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 57
    :cond_1
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mService:Lcom/samsung/android/bezelinteraction/IBezelManager;

    invoke-interface {v0}, Lcom/samsung/android/bezelinteraction/IBezelManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string v0, "SlookBezelInteraction"

    const-string v1, "mService is not valid so retrieve the service again."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v0, "BezelInteractionService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bezelinteraction/IBezelManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bezelinteraction/IBezelManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mService:Lcom/samsung/android/bezelinteraction/IBezelManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public enableBezelInteraction(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 224
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->getService()Lcom/samsung/android/bezelinteraction/IBezelManager;

    move-result-object v1

    .line 225
    .local v1, "svc":Lcom/samsung/android/bezelinteraction/IBezelManager;
    if-eqz v1, :cond_0

    .line 226
    invoke-interface {v1, p1}, Lcom/samsung/android/bezelinteraction/IBezelManager;->enableBezelInteraction(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v1    # "svc":Lcom/samsung/android/bezelinteraction/IBezelManager;
    :cond_0
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SlookBezelInteraction"

    const-string v3, "RemoteException in enableBezelInteraction : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;)V
    .locals 10
    .param p1, "listener"    # Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    .prologue
    .line 66
    const-string v6, "SlookBezelInteraction"

    const-string v7, "registerListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-nez p1, :cond_0

    .line 69
    const-string v6, "SlookBezelInteraction"

    const-string v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v7

    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "bezelListener":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 76
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;

    .line 77
    .local v2, "delegate":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;->getListener()Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 78
    move-object v0, v2

    move-object v1, v0

    .line 83
    .end local v0    # "bezelListener":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    .end local v2    # "delegate":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    .local v1, "bezelListener":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    :goto_1
    if-nez v1, :cond_3

    .line 84
    :try_start_1
    new-instance v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;

    const/4 v6, 0x0

    invoke-direct {v0, p1, v6}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;-><init>(Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    .end local v1    # "bezelListener":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    .restart local v0    # "bezelListener":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->getService()Lcom/samsung/android/bezelinteraction/IBezelManager;

    move-result-object v5

    .line 90
    .local v5, "svc":Lcom/samsung/android/bezelinteraction/IBezelManager;
    if-eqz v5, :cond_2

    .line 91
    new-instance v6, Landroid/content/ComponentName;

    sget-object v8, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0, v6}, Lcom/samsung/android/bezelinteraction/IBezelManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    .end local v5    # "svc":Lcom/samsung/android/bezelinteraction/IBezelManager;
    :cond_2
    :goto_3
    :try_start_4
    monitor-exit v7

    goto :goto_0

    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;>;"
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 95
    .restart local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;>;"
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "SlookBezelInteraction"

    const-string v8, "RemoteException in registerListener: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 98
    .end local v0    # "bezelListener":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v1    # "bezelListener":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bezelListener":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    .restart local v0    # "bezelListener":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    goto :goto_4

    .end local v0    # "bezelListener":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    .restart local v1    # "bezelListener":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    :cond_3
    move-object v0, v1

    .end local v1    # "bezelListener":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    .restart local v0    # "bezelListener":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    goto :goto_2

    :cond_4
    move-object v1, v0

    .end local v0    # "bezelListener":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    .restart local v1    # "bezelListener":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    goto :goto_1
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    .prologue
    .line 102
    const-string v5, "SlookBezelInteraction"

    const-string v6, "unregisterListener!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-nez p1, :cond_0

    .line 105
    const-string v5, "SlookBezelInteraction"

    const-string v6, "unregisterListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v6

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "bezelListener":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 113
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;

    .line 114
    .local v1, "delegate":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;->getListener()Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    move-object v0, v1

    .line 120
    .end local v1    # "delegate":Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
    :cond_2
    if-nez v0, :cond_3

    .line 121
    monitor-exit v6

    goto :goto_0

    .line 137
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 125
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;>;"
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->getService()Lcom/samsung/android/bezelinteraction/IBezelManager;

    move-result-object v4

    .line 126
    .local v4, "svc":Lcom/samsung/android/bezelinteraction/IBezelManager;
    if-eqz v4, :cond_4

    .line 127
    invoke-interface {v4, v0}, Lcom/samsung/android/bezelinteraction/IBezelManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 128
    iget-object v5, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 129
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 130
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    const/4 v0, 0x0

    .line 137
    .end local v4    # "svc":Lcom/samsung/android/bezelinteraction/IBezelManager;
    :cond_4
    :goto_1
    :try_start_2
    monitor-exit v6

    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "SlookBezelInteraction"

    const-string v7, "RemoteException in unregisterListener: "

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
