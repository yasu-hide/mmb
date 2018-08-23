.class public Lmmb/android/MmbFcContMw/MmbFcContMwClient;
.super Ljava/lang/Object;
.source "MmbFcContMwClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;,
        Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;,
        Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;,
        Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;,
        Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;,
        Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;,
        Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;,
        Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;
    }
.end annotation


# instance fields
.field private clientId:I

.field private extHandle:J

.field private handle:J

.field private isConnected:Z

.field private log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

.field private receiver:Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;

.field private sendLock:Ljava/lang/Object;

.field private sendSocketName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    .line 416
    const/high16 v0, -0x80000000

    iput v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    .line 419
    iput-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->receiver:Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;

    .line 422
    iput-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    .line 425
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    .line 428
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    invoke-direct {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    .line 431
    iput-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->handle:J

    .line 434
    iput-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->extHandle:J

    return-void
.end method

.method private registListenerImpl(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I
    .locals 9
    .param p1, "aListener"    # Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 443
    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->getInstance()Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;

    move-result-object v0

    .line 444
    .local v0, "mng":Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;
    const-string v2, "MmbFcContMwClient"

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->registClient(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;

    move-result-object v1

    .line 446
    .local v1, "sender":Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->isRegistCompleted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 447
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "failed to regist client."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v2

    .line 472
    :goto_0
    return v2

    .line 451
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "ClientId[%d] SendSocket[%s] ReceiveSocket[%s]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->getClientId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->getSendSocketName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->getReceiveSocketName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->getClientId()I

    move-result v2

    iput v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    .line 456
    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->getSendSocketName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    .line 459
    new-instance v2, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->getReceiveSocketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->getConnectPid()I

    move-result v4

    invoke-direct {v2, p1, v3, v4, p0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;Ljava/lang/String;ILmmb/android/MmbFcContMw/MmbFcContMwClient;)V

    iput-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->receiver:Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;

    .line 461
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->receiver:Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;

    invoke-virtual {v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->isSocketStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 462
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->receiver:Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 468
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "receiving thread starting ..."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    iput-boolean v8, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    .line 471
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "registListener end."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->OK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v2

    goto :goto_0

    .line 465
    :cond_2
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 466
    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public acceptFdtInstance(Ljava/lang/String;[BZ)I
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aData"    # [B
    .param p3, "aFirst"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1596
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "acceptFdtInstance start. crid[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1599
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1600
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "acceptFdtInstance param error."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1601
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    .line 1625
    :goto_0
    return v1

    .line 1604
    :cond_1
    if-nez p2, :cond_2

    .line 1605
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "acceptFdtInstance param error."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1606
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 1610
    :cond_2
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_3

    .line 1611
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1612
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 1615
    :cond_3
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;

    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1, p1, p2, p3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;-><init>(ILjava/lang/String;[BZ)V

    .line 1617
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1618
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1619
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1620
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1622
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1624
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "acceptFdtInstance end. return[%d]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1625
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public acceptRepairData(Ljava/lang/String;Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;[B)I
    .locals 1
    .param p1, "aContentsCrid"    # Ljava/lang/String;
    .param p2, "aParts"    # Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .param p3, "aData"    # [B

    .prologue
    .line 655
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->acceptRepairData(Ljava/lang/String;Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;[BZ)I

    move-result v0

    return v0
.end method

.method public acceptRepairData(Ljava/lang/String;Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;[BZ)I
    .locals 20
    .param p1, "aContentsCrid"    # Ljava/lang/String;
    .param p2, "aParts"    # Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .param p3, "aData"    # [B
    .param p4, "isAllRepair"    # Z

    .prologue
    .line 660
    move-object/from16 v0, p0

    iget-object v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v6, "acceptRepairData start. crid[%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 663
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 664
    :cond_0
    sget-object v5, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v5

    .line 729
    :goto_0
    return v5

    .line 666
    :cond_1
    if-nez p2, :cond_2

    .line 667
    sget-object v5, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v5

    goto :goto_0

    .line 669
    :cond_2
    if-nez p3, :cond_3

    .line 670
    sget-object v5, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v5

    goto :goto_0

    .line 674
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v5, :cond_4

    .line 675
    move-object/from16 v0, p0

    iget-object v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v6, "not connected."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    sget-object v5, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v5

    goto :goto_0

    .line 679
    :cond_4
    if-eqz p4, :cond_9

    .line 681
    move-object/from16 v0, p2

    iget-object v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    if-eqz v5, :cond_5

    move-object/from16 v0, p2

    iget-object v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-nez v5, :cond_6

    .line 682
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v6, "acceptAllRepairData data size error. crid[%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    sget-object v5, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v5

    goto :goto_0

    .line 686
    :cond_6
    move-object/from16 v0, p2

    iget-object v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-wide v6, v5, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->offset:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_7

    .line 687
    move-object/from16 v0, p0

    iget-object v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v6, "acceptAllRepairData data offset error. crid[%s] offset[%d]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-object v9, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-wide v0, v9, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->offset:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    sget-object v5, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v5

    goto/16 :goto_0

    .line 691
    :cond_7
    new-instance v4, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;

    move-object/from16 v0, p0

    iget v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->contentLocation:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    const/4 v8, 0x0

    aget-object v6, v6, v8

    iget-wide v8, v6, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->offset:J

    move-object/from16 v6, p1

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;-><init>(ILjava/lang/String;Ljava/lang/String;J[B)V

    .line 694
    .local v4, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;
    move-object/from16 v0, p0

    iget-object v6, v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v6

    .line 695
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->sendCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 696
    invoke-virtual/range {p0 .. p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 697
    sget-object v5, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v5

    monitor-exit v6

    goto/16 :goto_0

    .line 699
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_8
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 700
    move-object/from16 v0, p0

    iget-object v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v6, "acceptRepairData end. return[%d]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->getReturnCd()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    invoke-virtual {v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->getReturnCd()I

    move-result v5

    if-gez v5, :cond_d

    .line 702
    sget-object v5, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_MEMORY:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v5

    goto/16 :goto_0

    .line 705
    .end local v4    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;
    :cond_9
    const-wide/16 v14, 0x0

    .line 706
    .local v14, "length":J
    move-object/from16 v0, p2

    iget-object v11, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    .local v11, "arr$":[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    array-length v13, v11

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_a

    aget-object v16, v11, v12

    .line 707
    .local v16, "missing":Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    move-object/from16 v0, v16

    iget-wide v6, v0, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->size:J

    add-long/2addr v14, v6

    .line 706
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 709
    .end local v16    # "missing":Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    :cond_a
    move-object/from16 v0, p3

    array-length v5, v0

    int-to-long v6, v5

    cmp-long v5, v14, v6

    if-eqz v5, :cond_b

    .line 710
    move-object/from16 v0, p0

    iget-object v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v6, "acceptRepairData data size error. crid[%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    sget-object v5, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v5

    goto/16 :goto_0

    .line 715
    :cond_b
    new-instance v4, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;

    move-object/from16 v0, p0

    iget v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v5, v0, v1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;-><init>(ILjava/lang/String;Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;[B)V

    .line 717
    .local v4, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;
    move-object/from16 v0, p0

    iget-object v6, v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v6

    .line 718
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->sendCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 719
    invoke-virtual/range {p0 .. p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 720
    sget-object v5, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v5

    monitor-exit v6

    goto/16 :goto_0

    .line 722
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    :cond_c
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 723
    move-object/from16 v0, p0

    iget-object v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v6, "acceptRepairData end. return[%d]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->getReturnCd()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    invoke-virtual {v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->getReturnCd()I

    move-result v5

    if-gez v5, :cond_d

    .line 725
    sget-object v5, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_MEMORY:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v5

    goto/16 :goto_0

    .line 729
    .end local v4    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;
    .end local v11    # "arr$":[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "length":J
    :cond_d
    sget-object v5, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->OK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v5

    goto/16 :goto_0
.end method

.method public cancelDownload(Ljava/lang/String;)I
    .locals 6
    .param p1, "aContentsCrid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 617
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "cancelDownload start. crid[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 621
    :cond_0
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    .line 641
    :goto_0
    return v1

    .line 625
    :cond_1
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_2

    .line 626
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 631
    :cond_2
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelDownloadSender;

    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelDownloadSender;-><init>(ILjava/lang/String;)V

    .line 633
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelDownloadSender;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 634
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelDownloadSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 635
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 636
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 638
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "cancelDownload end. return[%d]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelDownloadSender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelDownloadSender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public cancelRepair(Ljava/lang/String;)I
    .locals 6
    .param p1, "aContentsCrid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 969
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "cancelRepair start. crid[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 972
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 973
    :cond_0
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    .line 993
    :goto_0
    return v1

    .line 977
    :cond_1
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_2

    .line 978
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 979
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 983
    :cond_2
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelRepairSender;

    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelRepairSender;-><init>(ILjava/lang/String;)V

    .line 985
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelRepairSender;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 986
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelRepairSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 987
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 988
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 990
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "cancelRepair end. ret[%d]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelRepairSender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 993
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelRepairSender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public checkResumeInformation(Ljava/lang/String;)I
    .locals 6
    .param p1, "aContentsCrid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 936
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "checkResumeInformation start. crid[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 939
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 940
    :cond_0
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    .line 960
    :goto_0
    return v1

    .line 944
    :cond_1
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_2

    .line 945
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 950
    :cond_2
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCheckResumeInformationlSender;

    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCheckResumeInformationlSender;-><init>(ILjava/lang/String;)V

    .line 952
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwCheckResumeInformationlSender;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 953
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCheckResumeInformationlSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 954
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 955
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 957
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 959
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "checkResumeInformation end. ret[%d]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCheckResumeInformationlSender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 960
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCheckResumeInformationlSender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 520
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "removeListener start."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    .line 524
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->receiver:Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->receiver:Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->abort()V

    .line 527
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->receiver:Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;

    .line 529
    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    if-eq v1, v4, :cond_1

    .line 531
    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->getInstance()Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;

    move-result-object v0

    .line 532
    .local v0, "mng":Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;
    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    const-string v2, "MmbFcContMwClient"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->removeClient(ILjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;

    .line 533
    const/high16 v1, -0x80000000

    iput v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    .line 536
    .end local v0    # "mng":Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;
    :cond_1
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "removeListener end."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    monitor-exit p0

    return-void

    .line 520
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public completeAllRepair(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "aContentsCrid"    # Ljava/lang/String;
    .param p2, "aLocation"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 733
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "acceptRepairData start. crid[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 737
    :cond_0
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    .line 758
    :goto_0
    return v1

    .line 739
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 740
    :cond_2
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 743
    :cond_3
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_4

    .line 744
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 748
    :cond_4
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;

    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1, p1, p2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 750
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 751
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 752
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 753
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 755
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "acceptRepairData end. return[%d]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->OK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    goto :goto_0
.end method

.method public entryFdtInstance(Ljava/lang/String;)I
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1629
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "entryFdtInstance start. crid[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1632
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1633
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "entryFdtInstance param error."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1634
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    .line 1653
    :goto_0
    return v1

    .line 1638
    :cond_1
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_2

    .line 1639
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1640
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 1643
    :cond_2
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwEntryFdtInstanceSender;

    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwEntryFdtInstanceSender;-><init>(ILjava/lang/String;)V

    .line 1645
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwEntryFdtInstanceSender;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1646
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwEntryFdtInstanceSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1647
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1648
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1650
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1652
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "entryFdtInstance end. return[%d]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwEntryFdtInstanceSender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1653
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwEntryFdtInstanceSender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public exportComplete(Ljava/lang/String;Z)I
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aDelete"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1441
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "exportComplete start."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1443
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1444
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "exportComplete param error."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1445
    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v0

    .line 1472
    :goto_0
    return v0

    .line 1449
    :cond_1
    iget-boolean v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v2, :cond_2

    .line 1450
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "not connected."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1451
    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v0

    goto :goto_0

    .line 1454
    :cond_2
    new-instance v1, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;

    iget v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v1, v2, p1, p2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;-><init>(ILjava/lang/String;Z)V

    .line 1456
    .local v1, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1457
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;->sendCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1458
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1459
    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v0

    monitor-exit v3

    goto :goto_0

    .line 1461
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1463
    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;->getResult()I

    move-result v0

    .line 1464
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 1466
    if-gez v0, :cond_4

    .line 1467
    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v0

    .line 1470
    :cond_4
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "exportComplete end[%d]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public extSearchClose()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 1691
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "extSearchClose start."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1693
    iget-boolean v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v2, :cond_1

    .line 1694
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "not connected."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1715
    :cond_0
    :goto_0
    return-void

    .line 1699
    :cond_1
    iget-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->extHandle:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_0

    .line 1703
    new-instance v1, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchCloseSender;

    iget v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    iget-wide v4, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->extHandle:J

    invoke-direct {v1, v2, v4, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchCloseSender;-><init>(IJ)V

    .line 1705
    .local v1, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchCloseSender;
    iput-wide v8, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->extHandle:J

    .line 1706
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1707
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchCloseSender;->sendCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1708
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1709
    monitor-exit v3

    goto :goto_0

    .line 1711
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1713
    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchCloseSender;->getReturnCd()I

    move-result v0

    .line 1714
    .local v0, "result":I
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "extSearchClose end[%d]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public extSearchInit()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1661
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "extSearchInit start."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1663
    iget-boolean v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v2, :cond_0

    .line 1664
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "not connected."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1665
    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v0

    .line 1684
    :goto_0
    return v0

    .line 1667
    :cond_0
    iget-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->extHandle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1668
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->extSearchClose()V

    .line 1671
    :cond_1
    new-instance v1, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;

    iget v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;-><init>(I)V

    .line 1673
    .local v1, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1674
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;->sendCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1675
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1676
    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v0

    monitor-exit v3

    goto :goto_0

    .line 1678
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1680
    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;->getHandle()J

    move-result-wide v2

    iput-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->extHandle:J

    .line 1682
    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;->getReturnCd()I

    move-result v0

    .line 1683
    .local v0, "result":I
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "extSearchInit end[%d]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public extSearchList(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 10
    .param p1, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p2, "aIndex"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p3, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p4, "aDictionaryChange"    # Z
    .param p5, "aLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1733
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "extSearchList start."

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1735
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_0

    .line 1736
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1737
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1741
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_2

    .line 1742
    :cond_1
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1746
    :cond_2
    if-eqz p4, :cond_4

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 1747
    :cond_3
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1751
    :cond_4
    const/4 v0, 0x0

    .line 1752
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne p1, v1, :cond_5

    .line 1753
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchSavedListSender;

    .end local v0    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;
    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    iget-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->extHandle:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchSavedListSender;-><init>(IJLmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)V

    .line 1764
    .restart local v0    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;
    :goto_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1765
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1766
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1767
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1770
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1755
    :cond_5
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne p1, v1, :cond_6

    .line 1756
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchDownloadingListSender;

    .end local v0    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;
    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    iget-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->extHandle:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchDownloadingListSender;-><init>(IJLmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)V

    .restart local v0    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;
    goto :goto_0

    .line 1759
    :cond_6
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "status error."

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1760
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1770
    :cond_7
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1772
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "extSearchList end."

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1773
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->getRecord()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v1

    return-object v1
.end method

.method public getContentsDetail(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;
    .locals 6
    .param p1, "aContentsCrid"    # Ljava/lang/String;
    .param p2, "aDictionaryChange"    # Z
    .param p3, "aLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 860
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "getContentsDetail start. crid[%s] language[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 864
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 865
    :cond_0
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 868
    :cond_1
    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 869
    :cond_2
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 874
    :cond_3
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_4

    .line 875
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 881
    :cond_4
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;

    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1, p1, p2, p3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;-><init>(ILjava/lang/String;ZLjava/lang/String;)V

    .line 883
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 884
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 885
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 886
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 889
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 891
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "getContentsDetail end."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 892
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->getContentsDetail()Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-result-object v1

    return-object v1
.end method

.method public getContentsList(ILmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)[Lmmb/android/MmbFcContMw/MmbFcContMwContentsListInfo;
    .locals 6
    .param p1, "aServiceId"    # I
    .param p2, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p3, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 811
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "getContentsList start. serviceid[%d]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_0

    .line 815
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 816
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 821
    :cond_0
    const/4 v0, 0x0

    .line 823
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne p2, v1, :cond_1

    .line 824
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetSavedContentListSender;

    .end local v0    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;
    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1, p1, p2, p3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetSavedContentListSender;-><init>(IILmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)V

    .line 834
    .restart local v0    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;
    :goto_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 835
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 836
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 837
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 840
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 826
    :cond_1
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne p2, v1, :cond_2

    .line 827
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadingContentListSender;

    .end local v0    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;
    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1, p1, p2, p3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadingContentListSender;-><init>(IILmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)V

    .restart local v0    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;
    goto :goto_0

    .line 830
    :cond_2
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "param error."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 831
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 840
    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 842
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "getContentsList end."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->getContentsList()[Lmmb/android/MmbFcContMw/MmbFcContMwContentsListInfo;

    move-result-object v1

    return-object v1
.end method

.method public getDownloadProgress(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;
    .locals 6
    .param p1, "aContentsCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 580
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "getDownloadProgress start. crid[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 584
    :cond_0
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 589
    :cond_1
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_2

    .line 590
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 596
    :cond_2
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadProgressSender;

    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadProgressSender;-><init>(ILjava/lang/String;)V

    .line 598
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadProgressSender;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 599
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadProgressSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 600
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 601
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 604
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "getDownloadProgress end. return[%d]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadProgressSender;->getStatus()Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    move-result-object v4

    iget v4, v4, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;->contProgress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadProgressSender;->getStatus()Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    move-result-object v1

    return-object v1
.end method

.method public getDownloadedTime(Ljava/lang/String;)J
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1129
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v4, "getDownloadedTime start. crid[%s]]"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1133
    :cond_0
    new-instance v3, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v4, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v3, v4}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v3

    .line 1138
    :cond_1
    iget-boolean v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v3, :cond_2

    .line 1139
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v4, "not connected."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1140
    new-instance v3, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v4, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v3, v4}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v3

    .line 1145
    :cond_2
    new-instance v2, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadedTimeSender;

    iget v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v2, v3, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadedTimeSender;-><init>(ILjava/lang/String;)V

    .line 1147
    .local v2, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadedTimeSender;
    iget-object v4, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1148
    :try_start_0
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadedTimeSender;->sendCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1149
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1150
    new-instance v3, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v5, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v3, v5}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v3

    .line 1153
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1155
    invoke-virtual {v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadedTimeSender;->getDownloadedTime()J

    move-result-wide v0

    .line 1156
    .local v0, "result":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_4

    .line 1157
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v4, "error [%d]"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    :cond_4
    return-wide v0
.end method

.method public getExportPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1524
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "getExportPath start."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1526
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1527
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "isExportCompleted param error."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1528
    new-instance v2, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v2, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v2

    .line 1533
    :cond_1
    iget-boolean v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v2, :cond_2

    .line 1534
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "not connected."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1535
    new-instance v2, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v2, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v2

    .line 1539
    :cond_2
    new-instance v1, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetExportPathSender;

    iget v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v1, v2, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetExportPathSender;-><init>(ILjava/lang/String;)V

    .line 1541
    .local v1, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetExportPathSender;
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1542
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetExportPathSender;->sendCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1543
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1544
    new-instance v2, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v4, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v2, v4}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v2

    .line 1547
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1549
    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetExportPathSender;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1550
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1552
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "getExportPath end[%s]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1554
    return-object v0
.end method

.method public getFdtInstanceState(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1565
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "getFdtInstanceState start."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1567
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1568
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "getFdtInstanceState param error."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1569
    new-instance v2, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v2, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v2

    .line 1574
    :cond_1
    iget-boolean v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v2, :cond_2

    .line 1575
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "not connected."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1576
    new-instance v2, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v2, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v2

    .line 1580
    :cond_2
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetFdtInstanceStateSender;

    iget v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v2, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetFdtInstanceStateSender;-><init>(ILjava/lang/String;)V

    .line 1582
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetFdtInstanceStateSender;
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1583
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetFdtInstanceStateSender;->sendCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1584
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1585
    new-instance v2, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v4, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v2, v4}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v2

    .line 1588
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1590
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetFdtInstanceStateSender;->getState()Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    move-result-object v1

    .line 1592
    .local v1, "state":Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;
    return-object v1
.end method

.method public getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1342
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "getLicenseInformation start. crid[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1344
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_0

    .line 1345
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1346
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1350
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1351
    :cond_1
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1355
    :cond_2
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetLicenseInfoSender;

    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetLicenseInfoSender;-><init>(ILjava/lang/String;)V

    .line 1357
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetLicenseInfoSender;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1358
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetLicenseInfoSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1359
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1360
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1363
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1365
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetLicenseInfoSender;->getInfo()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v1

    return-object v1
.end method

.method public getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aDictionaryChange"    # Z
    .param p3, "aLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1379
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "getPurchaseInformation start. crid[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1381
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_0

    .line 1382
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1383
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1387
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1388
    :cond_1
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1392
    :cond_2
    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 1393
    :cond_3
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1397
    :cond_4
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;

    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1, p1, p2, p3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;-><init>(ILjava/lang/String;ZLjava/lang/String;)V

    .line 1399
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1400
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1401
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1402
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1405
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1407
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->getInfo()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

    move-result-object v1

    return-object v1
.end method

.method public getRepairInformation(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;
    .locals 5
    .param p1, "aContentsCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 770
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "getRepairInformation start. crid[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 774
    :cond_0
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 779
    :cond_1
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_2

    .line 780
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 781
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 786
    :cond_2
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;

    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;-><init>(ILjava/lang/String;)V

    .line 788
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 789
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 790
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 791
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 794
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "getRepairInformation end."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetRepairInformationSender;->getRepairInformation()Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    move-result-object v1

    return-object v1
.end method

.method public getThumbnail(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "aMediaUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1092
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "getThumbnail start. uri[%s]]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1096
    :cond_0
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1101
    :cond_1
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_2

    .line 1102
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1103
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1108
    :cond_2
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetThumbnailSender;

    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetThumbnailSender;-><init>(ILjava/lang/String;)V

    .line 1110
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetThumbnailSender;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1111
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetThumbnailSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1112
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1113
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1116
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1118
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "getThumbnail end. path[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetThumbnailSender;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1119
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetThumbnailSender;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isDownloaded(Ljava/lang/String;)Z
    .locals 7
    .param p1, "aContentsCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1048
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v4, "isDownloaded start."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1051
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1052
    :cond_0
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1057
    :cond_1
    iget-boolean v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v3, :cond_2

    .line 1058
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "not connected."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1064
    :cond_2
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsDownloadedSender;

    iget v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v3, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsDownloadedSender;-><init>(ILjava/lang/String;)V

    .line 1066
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsDownloadedSender;
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1067
    :try_start_0
    iget-object v4, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsDownloadedSender;->sendCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1068
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1069
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1072
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1074
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsDownloadedSender;->getReturnCd()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 1075
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v4, "isDownloaded end. ret[%d:true]"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsDownloadedSender;->getReturnCd()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1079
    :goto_0
    return v1

    .line 1078
    :cond_4
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v4, "isDownloaded end. ret[%d:false]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsDownloadedSender;->getReturnCd()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 1079
    goto :goto_0
.end method

.method public isExportCompleted(Ljava/lang/String;)Z
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1483
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "isExportCompleted start."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1485
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1486
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "isExportCompleted param error."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1487
    new-instance v2, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v2, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v2

    .line 1492
    :cond_1
    iget-boolean v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v2, :cond_2

    .line 1493
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "not connected."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1494
    new-instance v2, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v2, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v2

    .line 1498
    :cond_2
    new-instance v1, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsExportCompletedSender;

    iget v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v1, v2, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsExportCompletedSender;-><init>(ILjava/lang/String;)V

    .line 1500
    .local v1, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsExportCompletedSender;
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1501
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsExportCompletedSender;->sendCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1502
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1503
    new-instance v2, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v4, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v2, v4}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v2

    .line 1506
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1508
    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsExportCompletedSender;->getResult()Z

    move-result v0

    .line 1509
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 1511
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "isExportCompleted end[%b]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1513
    return v0
.end method

.method public isPlayed(Ljava/lang/String;)Z
    .locals 7
    .param p1, "aContentsCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1005
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v4, "isPlayed start. crid[%s]"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1008
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1009
    :cond_0
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1014
    :cond_1
    iget-boolean v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v3, :cond_2

    .line 1015
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "not connected."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1016
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1021
    :cond_2
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsPlayedSender;

    iget v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v3, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsPlayedSender;-><init>(ILjava/lang/String;)V

    .line 1023
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsPlayedSender;
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1024
    :try_start_0
    iget-object v4, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsPlayedSender;->sendCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1025
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1026
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1029
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1031
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsPlayedSender;->getReturnCd()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 1032
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v4, "isPlayed end. ret[%d:true]"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsPlayedSender;->getReturnCd()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1036
    :goto_0
    return v1

    .line 1035
    :cond_4
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v4, "isPlayed end. ret[%d:false]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsPlayedSender;->getReturnCd()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 1036
    goto :goto_0
.end method

.method public receiveMountState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1414
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "receiveMountState start."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1416
    iget-boolean v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v2, :cond_0

    .line 1417
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "not connected."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1431
    :goto_0
    return-void

    .line 1420
    :cond_0
    new-instance v1, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiveMountStateSender;

    iget v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiveMountStateSender;-><init>(I)V

    .line 1422
    .local v1, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiveMountStateSender;
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1423
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiveMountStateSender;->sendCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1424
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v4, "receiveMountState send error."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1425
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1426
    monitor-exit v3

    goto :goto_0

    .line 1428
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1429
    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiveMountStateSender;->getReturnCd()I

    move-result v0

    .line 1430
    .local v0, "result":I
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "receiveMountState end[%d]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized registListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I
    .locals 8
    .param p1, "aListener"    # Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v4, "registListener start."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    if-nez p1, :cond_1

    .line 485
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v4, "registListener error. listener is null."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 513
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 490
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-eqz v3, :cond_2

    .line 491
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->receiver:Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;

    invoke-virtual {v3, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->setListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)V

    .line 492
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v4, "registListener end."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->OK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v2

    goto :goto_0

    .line 496
    :cond_2
    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v2

    .line 497
    .local v2, "ret":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v3, 0x32

    if-ge v1, v3, :cond_0

    .line 498
    invoke-direct {p0, p1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->registListenerImpl(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    move-result v2

    .line 499
    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->OK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 500
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v4, "registListener retry[%d]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    const-wide/16 v4, 0xc8

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 481
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i":I
    .end local v2    # "ret":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public removeContents(Ljava/lang/String;)I
    .locals 6
    .param p1, "aContentsCrid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 902
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "removeContents start. crid[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 905
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 906
    :cond_0
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    .line 926
    :goto_0
    return v1

    .line 910
    :cond_1
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_2

    .line 911
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 912
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 916
    :cond_2
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwRemoveContentsSender;

    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwRemoveContentsSender;-><init>(ILjava/lang/String;)V

    .line 918
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwRemoveContentsSender;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 919
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwRemoveContentsSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 920
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 921
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 923
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 925
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "removeContents end. ret[%d]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwRemoveContentsSender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 926
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwRemoveContentsSender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public searchClose()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1197
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "searchClose start."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1199
    iget-boolean v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v2, :cond_0

    .line 1200
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "not connected."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    :goto_0
    return-void

    .line 1204
    :cond_0
    new-instance v1, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchCloseSender;

    iget v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    iget-wide v4, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->handle:J

    invoke-direct {v1, v2, v4, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchCloseSender;-><init>(IJ)V

    .line 1206
    .local v1, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchCloseSender;
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->handle:J

    .line 1207
    iget-object v3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1208
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchCloseSender;->sendCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1209
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1210
    monitor-exit v3

    goto :goto_0

    .line 1212
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1214
    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchCloseSender;->getReturnCd()I

    move-result v0

    .line 1215
    .local v0, "result":I
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v3, "searchClose end[%d]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public searchInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 11
    .param p1, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p3, "aIdentifier"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .param p4, "aIndex"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p5, "aVersion"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
    .param p6, "aDictionaryChange"    # Z
    .param p7, "aLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
        }
    .end annotation

    .prologue
    .line 1293
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "searchInfo start."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1295
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_0

    .line 1296
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1297
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1301
    :cond_0
    if-eqz p6, :cond_2

    if-eqz p7, :cond_1

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1302
    :cond_1
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "param error."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1303
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1307
    :cond_2
    const/4 v0, 0x0

    .line 1309
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne p2, v1, :cond_3

    .line 1310
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchSavedInfoSender;

    .end local v0    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;
    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    iget-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->handle:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchSavedInfoSender;-><init>(IJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;ZLjava/lang/String;)V

    .line 1323
    .restart local v0    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;
    :goto_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1324
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1325
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1326
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1329
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1313
    :cond_3
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne p2, v1, :cond_4

    .line 1314
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchDownloadingInfoSender;

    .end local v0    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;
    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    iget-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->handle:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchDownloadingInfoSender;-><init>(IJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;ZLjava/lang/String;)V

    .restart local v0    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;
    goto :goto_0

    .line 1318
    :cond_4
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "param error."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1319
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1329
    :cond_5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1331
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->getRecord()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v1

    return-object v1
.end method

.method public searchInit()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1169
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "searchInit start."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1171
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_0

    .line 1172
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1173
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    .line 1190
    :goto_0
    return v1

    .line 1175
    :cond_0
    iget-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->handle:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 1176
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->searchClose()V

    .line 1179
    :cond_1
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;

    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;-><init>(I)V

    .line 1181
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1182
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1183
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1184
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1186
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1188
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;->getHandle()J

    move-result-wide v2

    iput-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->handle:J

    .line 1190
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 10
    .param p1, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p3, "aIndex"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p4, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p5, "aDictionaryChange"    # Z
    .param p6, "aLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
        }
    .end annotation

    .prologue
    .line 1235
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "searchList start."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1237
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_0

    .line 1238
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1239
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1243
    :cond_0
    if-eqz p5, :cond_2

    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1244
    :cond_1
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1248
    :cond_2
    const/4 v0, 0x0

    .line 1249
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne p2, v1, :cond_3

    .line 1250
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchSavedListSender;

    .end local v0    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;
    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    iget-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->handle:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchSavedListSender;-><init>(IJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)V

    .line 1263
    .restart local v0    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;
    :goto_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1264
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1265
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1266
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1269
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1253
    :cond_3
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne p2, v1, :cond_4

    .line 1254
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchDownloadingListSender;

    .end local v0    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;
    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    iget-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->handle:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchDownloadingListSender;-><init>(IJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)V

    .restart local v0    # "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;
    goto :goto_0

    .line 1258
    :cond_4
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "status error."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1259
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;-><init>(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;)V

    throw v1

    .line 1269
    :cond_5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1271
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->getRecord()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v1

    return-object v1
.end method

.method public startDownload(Ljava/lang/String;)I
    .locals 6
    .param p1, "aContentsCrid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 545
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "startDownload start. crid[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 549
    :cond_0
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    .line 569
    :goto_0
    return v1

    .line 553
    :cond_1
    iget-boolean v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isConnected:Z

    if-nez v1, :cond_2

    .line 554
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 559
    :cond_2
    new-instance v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwStartDownloadSender;

    iget v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwStartDownloadSender;-><init>(ILjava/lang/String;)V

    .line 561
    .local v0, "sender":Lmmb/android/MmbFcContMw/impl/MmbFcContMwStartDownloadSender;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 562
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwStartDownloadSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 563
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 564
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    iget-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->log:Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;

    const-string v2, "startDownload end. return[%d]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwStartDownloadSender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwStartDownloadSender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method
