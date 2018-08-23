.class public final Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwRegistMng.java"


# static fields
.field private static REGIST_SOCKET_NAME:Ljava/lang/String;

.field private static instance:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;


# instance fields
.field private moinfo:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

.field private registLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->REGIST_SOCKET_NAME:Ljava/lang/String;

    .line 28
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;

    invoke-direct {v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;-><init>()V

    sput-object v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->instance:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->registLock:Ljava/lang/Object;

    .line 33
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    invoke-direct {v0}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->moinfo:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    .line 38
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->moinfo:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    invoke-virtual {v3}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getCommonDataPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "fcctl/LOCAL_SOCKET_MMBFCCTLMW_REGIST"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->REGIST_SOCKET_NAME:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static getInstance()Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->instance:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;

    return-object v0
.end method


# virtual methods
.method public registClient(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;
    .locals 3
    .param p1, "aTag"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;

    invoke-direct {v0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->registLock:Ljava/lang/Object;

    monitor-enter v2

    .line 58
    :try_start_0
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->REGIST_SOCKET_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    const/4 v1, 0x0

    monitor-exit v2

    .line 65
    :goto_0
    return-object v1

    .line 61
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    const/4 v0, 0x0

    :cond_1
    move-object v1, v0

    .line 65
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeClient(ILjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;
    .locals 3
    .param p1, "aClientId"    # I
    .param p2, "aTag"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;

    invoke-direct {v0, p1, p2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;-><init>(ILjava/lang/String;)V

    .line 78
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->registLock:Ljava/lang/Object;

    monitor-enter v2

    .line 79
    :try_start_0
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->REGIST_SOCKET_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    const/4 v0, 0x0

    monitor-exit v2

    .line 83
    .end local v0    # "sender":Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;
    :goto_0
    return-object v0

    .line 82
    .restart local v0    # "sender":Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;
    :cond_0
    monitor-exit v2

    goto :goto_0

    .end local v0    # "sender":Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
