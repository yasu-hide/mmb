.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDBCheckResult;,
        Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;,
        Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchContentsType;,
        Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;,
        Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;,
        Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;,
        Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;,
        Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;,
        Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;,
        Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;,
        Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType;,
        Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;,
        Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    }
.end annotation


# instance fields
.field protected clientId:I

.field protected extHandle:J

.field protected handle:J

.field protected isConnected:Z

.field protected log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

.field protected receiver:Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;

.field protected sendLock:Ljava/lang/Object;

.field protected sendSocketName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    .line 717
    const/high16 v0, -0x80000000

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    .line 720
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->receiver:Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;

    .line 723
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    .line 726
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    .line 729
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    invoke-direct {v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    .line 732
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->handle:J

    .line 735
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->extHandle:J

    return-void
.end method

.method private registListenerImpl(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;)I
    .locals 9
    .param p1, "aListener"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 744
    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->getInstance()Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;

    move-result-object v0

    .line 745
    .local v0, "mng":Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;
    const-string v2, "MmbFcPgInfoMw"

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->registClient(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;

    move-result-object v1

    .line 747
    .local v1, "sender":Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->isRegistCompleted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 748
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "failed to regist client."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 749
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v2

    .line 773
    :goto_0
    return v2

    .line 752
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "clientid[%d] sendsocket[%s] receivesocket[%s]"

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

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->getClientId()I

    move-result v2

    iput v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    .line 757
    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->getSendSocketName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    .line 760
    new-instance v2, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->getReceiveSocketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->getConnectPid()I

    move-result v4

    invoke-direct {v2, p1, v3, v4, p0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;Ljava/lang/String;ILmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->receiver:Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;

    .line 762
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->receiver:Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->isSocketStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 763
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->receiver:Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 769
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "receiving thread starting ..."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    iput-boolean v8, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    .line 772
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "registListener end."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->OK:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v2

    goto :goto_0

    .line 766
    :cond_2
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 767
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public acquireALayer([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;)I
    .locals 6
    .param p1, "aEnvironment"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;

    .prologue
    const/4 v5, 0x0

    .line 845
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_0

    .line 846
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 847
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    .line 859
    :goto_0
    return v1

    .line 850
    :cond_0
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;-><init>(I[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;)V

    .line 852
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 853
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 854
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 855
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 857
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "acquireALayer end. return[%d]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 859
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public acquireBLayer(Ljava/lang/String;)I
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 868
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "acquireBLayer start. crid[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 870
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 871
    :cond_0
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    .line 888
    :goto_0
    return v1

    .line 874
    :cond_1
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_2

    .line 875
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 879
    :cond_2
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireBLayerSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireBLayerSender;-><init>(ILjava/lang/String;)V

    .line 881
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireBLayerSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 882
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireBLayerSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 883
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 884
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 886
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

    .line 887
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "acquireBLayer end. return[%d]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireBLayerSender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 888
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireBLayerSender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public cancelALayer()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 952
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "cancelALayer start."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 954
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_0

    .line 955
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 956
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    .line 968
    :goto_0
    return v1

    .line 959
    :cond_0
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelALayerSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelALayerSender;-><init>(I)V

    .line 961
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelALayerSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 962
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelALayerSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 963
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 964
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 966
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 967
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "cancelALayer end. return[%d]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelALayerSender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 968
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelALayerSender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public cancelBLayer(Ljava/lang/String;)I
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 978
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "cancelBLayer start. crid[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 980
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 981
    :cond_0
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    .line 998
    :goto_0
    return v1

    .line 984
    :cond_1
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_2

    .line 985
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 986
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 989
    :cond_2
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelBLayerSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelBLayerSender;-><init>(ILjava/lang/String;)V

    .line 991
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelBLayerSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 992
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelBLayerSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 993
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 994
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 996
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

    .line 997
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "cancelBLayer end. return[%d]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelBLayerSender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 998
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelBLayerSender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public checkDatabaseVersion()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDBCheckResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1677
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "checkDatabaseVersion start."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1679
    iget-boolean v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v3, :cond_0

    .line 1680
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "not connected."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1681
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v3, v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v3

    .line 1685
    :cond_0
    new-instance v2, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCheckDatabaseVersionSender;

    iget v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v2, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCheckDatabaseVersionSender;-><init>(I)V

    .line 1687
    .local v2, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCheckDatabaseVersionSender;
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1688
    :try_start_0
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCheckDatabaseVersionSender;->sendCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1689
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1690
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v3, v5}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v3

    .line 1693
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1695
    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCheckDatabaseVersionSender;->getResult()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    move-result-object v1

    .line 1697
    .local v1, "result":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->OK:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    if-eq v1, v3, :cond_2

    .line 1698
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    invoke-direct {v3, v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v3

    .line 1701
    :cond_2
    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCheckDatabaseVersionSender;->getChecked()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDBCheckResult;

    move-result-object v0

    .line 1702
    .local v0, "checked":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDBCheckResult;
    return-object v0
.end method

.method public close()V
    .locals 6

    .prologue
    const/high16 v5, -0x80000000

    const/4 v4, 0x0

    .line 821
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "removeListener start."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    iput-boolean v4, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    .line 824
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->receiver:Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;

    if-eqz v1, :cond_0

    .line 825
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->receiver:Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->abort()V

    .line 827
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->receiver:Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;

    .line 828
    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    if-eq v1, v5, :cond_1

    .line 830
    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->getInstance()Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;

    move-result-object v0

    .line 831
    .local v0, "mng":Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;
    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    const-string v2, "MmbFcPgInfoMw"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;->removeClient(ILjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;

    .line 832
    iput v5, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    .line 834
    .end local v0    # "mng":Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistMng;
    :cond_1
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "removeListener end."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    return-void
.end method

.method public entryContents(Ljava/lang/String;)I
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1573
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "entryContents start. crid[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1575
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_0

    .line 1576
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1577
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    .line 1591
    :goto_0
    return v1

    .line 1579
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1580
    :cond_1
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 1583
    :cond_2
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwEntryContentsSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwEntryContentsSender;-><init>(ILjava/lang/String;)V

    .line 1585
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwEntryContentsSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1586
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwEntryContentsSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1587
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1588
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1590
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

    .line 1591
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwEntryContentsSender;->getResult()I

    move-result v1

    goto :goto_0
.end method

.method public extSearchClose()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 1793
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "extSearchClose start."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1795
    iget-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v2, :cond_1

    .line 1796
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "not connected."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1816
    :cond_0
    :goto_0
    return-void

    .line 1801
    :cond_1
    iget-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->extHandle:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_0

    .line 1805
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;

    iget v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    iget-wide v4, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->extHandle:J

    invoke-direct {v1, v2, v4, v5}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;-><init>(IJ)V

    .line 1807
    .local v1, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;
    iput-wide v8, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->extHandle:J

    .line 1808
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1809
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;->sendCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1810
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1811
    monitor-exit v3

    goto :goto_0

    .line 1813
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

    .line 1814
    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;->getReturnCd()I

    move-result v0

    .line 1815
    .local v0, "result":I
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "extSearchClose end[%d]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public extSearchInit()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1765
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "extSearchInit start."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1767
    iget-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v2, :cond_0

    .line 1768
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "not connected."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1769
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    .line 1786
    :goto_0
    return v0

    .line 1771
    :cond_0
    iget-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->extHandle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1772
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->extSearchClose()V

    .line 1774
    :cond_1
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInitSender;

    iget v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInitSender;-><init>(I)V

    .line 1776
    .local v1, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInitSender;
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1777
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInitSender;->sendCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1778
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1779
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    monitor-exit v3

    goto :goto_0

    .line 1781
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

    .line 1782
    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInitSender;->getHandle()J

    move-result-wide v2

    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->extHandle:J

    .line 1784
    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInitSender;->getReturnCd()I

    move-result v0

    .line 1785
    .local v0, "result":I
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "extSearchInit end[%d]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public extSearchList([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 9
    .param p1, "aIndex"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p2, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p3, "aDictionaryChange"    # Z
    .param p4, "aLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1832
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "extSearchList start."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1834
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_0

    .line 1835
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1836
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1840
    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_2

    .line 1841
    :cond_1
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1845
    :cond_2
    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 1846
    :cond_3
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1850
    :cond_4
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    iget-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->extHandle:J

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;-><init>(IJ[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)V

    .line 1853
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1854
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1855
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1856
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1859
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

    .line 1861
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "extSearchList end."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1862
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->getRecord()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v1

    return-object v1
.end method

.method public fallIntoSleep()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1633
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "fallIntoSleep start."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1634
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_0

    .line 1635
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1649
    :goto_0
    return-void

    .line 1639
    :cond_0
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwFallIntoSleep;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwFallIntoSleep;-><init>(I)V

    .line 1641
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwFallIntoSleep;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1642
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwFallIntoSleep;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1643
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "fallIntoSleep send error."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1644
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1645
    monitor-exit v2

    goto :goto_0

    .line 1647
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1648
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "fallIntoSleep end."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getALayerProgress()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 897
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getALayerProgress start."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_0

    .line 900
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 901
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    .line 913
    :goto_0
    return v1

    .line 904
    :cond_0
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetALayerProgressSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetALayerProgressSender;-><init>(I)V

    .line 906
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetALayerProgressSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 907
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetALayerProgressSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 908
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 909
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 911
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 912
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getALayerProgress end. return[%d]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetALayerProgressSender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 913
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetALayerProgressSender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public getBLayerProgress(Ljava/lang/String;)I
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 923
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getBLayerProgress start. crid[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 925
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 926
    :cond_0
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    .line 943
    :goto_0
    return v1

    .line 929
    :cond_1
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_2

    .line 930
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 931
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 934
    :cond_2
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetBLayerProgressSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetBLayerProgressSender;-><init>(ILjava/lang/String;)V

    .line 936
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetBLayerProgressSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 937
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetBLayerProgressSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 938
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 939
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 941
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

    .line 942
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getBLayerProgress end. return[%d]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetBLayerProgressSender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 943
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetBLayerProgressSender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public getContentDetail(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aDictionaryChange"    # Z
    .param p3, "aLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1108
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getContentDetail start. crid[%s] language[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1111
    :cond_0
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1114
    :cond_1
    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1115
    :cond_2
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1119
    :cond_3
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_4

    .line 1120
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1121
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1125
    :cond_4
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1, p2, p3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;-><init>(ILjava/lang/String;ZLjava/lang/String;)V

    .line 1127
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1128
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1129
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1130
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1133
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

    .line 1134
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getContentDetail end."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1135
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->getInfo()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v1

    return-object v1
.end method

.method public getContentList(ILmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchContentsType;JJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;
    .locals 9
    .param p1, "aServiceId"    # I
    .param p2, "aType"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchContentsType;
    .param p3, "aStartTime"    # J
    .param p5, "aEndTime"    # J
    .param p7, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
        }
    .end annotation

    .prologue
    .line 1072
    if-nez p2, :cond_0

    .line 1073
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1076
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getContentList start. serviceid[%d] type[%s] start[%d] end[%d]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchContentsType;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1079
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_1

    .line 1080
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1081
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1085
    :cond_1
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;-><init>(IILmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchContentsType;JJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)V

    .line 1087
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1088
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1089
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1090
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1093
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

    .line 1094
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getContentList end."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->getInfo()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

    move-result-object v1

    return-object v1
.end method

.method public getDictionary(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;)Ljava/lang/String;
    .locals 7
    .param p1, "aDictionaryType"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1147
    if-nez p1, :cond_0

    .line 1148
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1151
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getDictionary start. type[%s]"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1153
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_1

    .line 1154
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1155
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1159
    :cond_1
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetDictionarySender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetDictionarySender;-><init>(ILmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;)V

    .line 1161
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetDictionarySender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1162
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetDictionarySender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1163
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1164
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1167
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

    .line 1168
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getDictionary end. path[%s]"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetDictionarySender;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetDictionarySender;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFragmentVersion(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;JJ)J
    .locals 10
    .param p1, "aType"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    .param p2, "aMinRange"    # J
    .param p4, "aMaxRange"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
        }
    .end annotation

    .prologue
    .line 1732
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getFragmentVersion start.[%s][%d][%d]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1734
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v0, :cond_0

    .line 1735
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1736
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v0, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v0

    .line 1740
    :cond_0
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;

    iget v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;-><init>(ILmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;JJ)V

    .line 1742
    .local v1, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1743
    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->sendCommand(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1744
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1745
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v0, v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v0

    .line 1748
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1750
    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->getResult()J

    move-result-wide v8

    .line 1752
    .local v8, "result":J
    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-gez v0, :cond_2

    .line 1753
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v0, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v0

    .line 1756
    :cond_2
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getFragmentVersion end[%d]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1757
    return-wide v8
.end method

.method public getLatestAvailability()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1601
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "getLatestAvailability start."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1603
    iget-boolean v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v3, :cond_0

    .line 1604
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "not connected."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1605
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v3, v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v3

    .line 1609
    :cond_0
    new-instance v2, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLatestAvailabilitySender;

    iget v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v2, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLatestAvailabilitySender;-><init>(I)V

    .line 1611
    .local v2, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLatestAvailabilitySender;
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1612
    :try_start_0
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLatestAvailabilitySender;->sendCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1613
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1614
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v3, v5}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v3

    .line 1617
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1618
    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLatestAvailabilitySender;->getResult()J

    move-result-wide v0

    .line 1621
    .local v0, "result":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_2

    .line 1622
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v3, v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v3

    .line 1626
    :cond_2
    return-wide v0
.end method

.method public getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1506
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getLicenseInformation start. crid[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1508
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_0

    .line 1509
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1510
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1513
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1514
    :cond_1
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1517
    :cond_2
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;-><init>(ILjava/lang/String;)V

    .line 1519
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1520
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1521
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1522
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1525
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

    .line 1526
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->getInfo()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v1

    return-object v1
.end method

.method public getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1279
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getName start. tag[%s] language[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1281
    if-nez p1, :cond_0

    .line 1282
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1286
    :cond_0
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_1

    .line 1287
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1288
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1291
    :cond_1
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1, p2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1293
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1294
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1295
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1296
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1299
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

    .line 1300
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getName end. return[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1301
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNextBroadcast(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1344
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getNextBroadcast start. crid[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1345
    if-nez p1, :cond_0

    .line 1346
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1350
    :cond_0
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_1

    .line 1351
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1352
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1355
    :cond_1
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;-><init>(ILjava/lang/String;)V

    .line 1357
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1358
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1359
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1360
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1363
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

    .line 1364
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;->getInfo()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;

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
            Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1540
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getPurchaseInformation start. crid[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1542
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_0

    .line 1543
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1544
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1547
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1548
    :cond_1
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1551
    :cond_2
    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 1552
    :cond_3
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1555
    :cond_4
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetPurchaseInfoSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1, p2, p3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetPurchaseInfoSender;-><init>(ILjava/lang/String;ZLjava/lang/String;)V

    .line 1557
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetPurchaseInfoSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1558
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetPurchaseInfoSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1559
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1560
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1563
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

    .line 1564
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetPurchaseInfoSender;->getInfo()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

    move-result-object v1

    return-object v1
.end method

.method public getServiceList()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1038
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getServiceList start."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1040
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_0

    .line 1041
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1042
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1046
    :cond_0
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;-><init>(I)V

    .line 1048
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1049
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1050
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1051
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1054
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1055
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getServiceList end."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->getInfo()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;

    move-result-object v1

    return-object v1
.end method

.method public getTermId(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "aType"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;
    .param p2, "aTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1313
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1314
    :cond_0
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1317
    :cond_1
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getTermId start. dictionary[%s] tag[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1319
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_2

    .line 1320
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1321
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1324
    :cond_2
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1, p2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;-><init>(ILmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;Ljava/lang/String;)V

    .line 1326
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1327
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1328
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1329
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1332
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

    .line 1333
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->getTermId()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getThumbnail(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "aMediaUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1245
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getThumbnail start. mediauri[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1247
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1248
    :cond_0
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1252
    :cond_1
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_2

    .line 1253
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1254
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1258
    :cond_2
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetThumbnailSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetThumbnailSender;-><init>(ILjava/lang/String;)V

    .line 1260
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetThumbnailSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1261
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetThumbnailSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1262
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1263
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1266
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

    .line 1267
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "getThumbnail end. return[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetThumbnailSender;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1268
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetThumbnailSender;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initDictionary(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;)I
    .locals 7
    .param p1, "aDictionaryType"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1216
    if-nez p1, :cond_0

    .line 1217
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    .line 1235
    :goto_0
    return v1

    .line 1219
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "initDictionary start. type[%s]"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1221
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_1

    .line 1222
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1223
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 1226
    :cond_1
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwInitDictionarySender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwInitDictionarySender;-><init>(ILmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;)V

    .line 1228
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwInitDictionarySender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1229
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwInitDictionarySender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1230
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1231
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1233
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

    .line 1234
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "initDictionary end. return[%d]"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwInitDictionarySender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1235
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwInitDictionarySender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public invokeTestFacility(Ljava/lang/StringBuffer;)I
    .locals 5
    .param p1, "errMsg"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v4, 0x0

    .line 1871
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "invokeTestFacility start."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1872
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_0

    .line 1873
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1874
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    .line 1888
    :goto_0
    return v1

    .line 1877
    :cond_0
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwInvokeTestFacilitySender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwInvokeTestFacilitySender;-><init>(I)V

    .line 1879
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwInvokeTestFacilitySender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1880
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwInvokeTestFacilitySender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1881
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1882
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1884
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1885
    if-eqz p1, :cond_2

    .line 1886
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwInvokeTestFacilitySender;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1888
    :cond_2
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwInvokeTestFacilitySender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public registListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;)I
    .locals 8
    .param p1, "aListener"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;

    .prologue
    const/4 v7, 0x0

    .line 782
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "registListener start."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 785
    if-nez p1, :cond_1

    .line 786
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "registListener error. listener is null."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v2

    .line 814
    :cond_0
    :goto_0
    return v2

    .line 791
    :cond_1
    iget-boolean v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-eqz v3, :cond_2

    .line 792
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->receiver:Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;

    invoke-virtual {v3, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->setListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;)V

    .line 793
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "registListener end."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 794
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->OK:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v2

    goto :goto_0

    .line 797
    :cond_2
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v2

    .line 798
    .local v2, "ret":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v3, 0x32

    if-ge v1, v3, :cond_0

    .line 799
    invoke-direct {p0, p1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->registListenerImpl(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;)I

    move-result v2

    .line 800
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->OK:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 801
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "registListener retry[%d]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 803
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public saveMetadata([BJ)I
    .locals 6
    .param p1, "aMetadata"    # [B
    .param p2, "aStartTime"    # J

    .prologue
    const/4 v5, 0x0

    .line 1009
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "saveMetadata start."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 1012
    :cond_0
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    .line 1029
    :goto_0
    return v1

    .line 1015
    :cond_1
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_2

    .line 1016
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1017
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 1020
    :cond_2
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1, p2, p3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;-><init>(I[BJ)V

    .line 1022
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1023
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1024
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1025
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1027
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

    .line 1028
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "saveMetadata end. return[%d]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1029
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public searchClose()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1398
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "searchClose start."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1400
    iget-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v2, :cond_0

    .line 1401
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "not connected."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1415
    :goto_0
    return-void

    .line 1404
    :cond_0
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;

    iget v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    iget-wide v4, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->handle:J

    invoke-direct {v1, v2, v4, v5}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;-><init>(IJ)V

    .line 1406
    .local v1, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->handle:J

    .line 1407
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1408
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;->sendCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1409
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1410
    monitor-exit v3

    goto :goto_0

    .line 1412
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

    .line 1413
    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;->getReturnCd()I

    move-result v0

    .line 1414
    .local v0, "result":I
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "searchClose end[%d]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public searchInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 10
    .param p1, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aIdentifier"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .param p3, "aIndex"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p4, "aVersion"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
    .param p5, "aDictionaryChange"    # Z
    .param p6, "aLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
        }
    .end annotation

    .prologue
    .line 1474
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "searchInfo start."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1476
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_0

    .line 1477
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1478
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1481
    :cond_0
    if-eqz p5, :cond_2

    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1482
    :cond_1
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1485
    :cond_2
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    iget-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->handle:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;-><init>(IJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;ZLjava/lang/String;)V

    .line 1488
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1489
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1490
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1491
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1494
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

    .line 1495
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->getRecord()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v1

    return-object v1
.end method

.method public searchInit()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1372
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "searchInit start."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1374
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_0

    .line 1375
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1376
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    .line 1391
    :goto_0
    return v1

    .line 1378
    :cond_0
    iget-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->handle:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 1379
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->searchClose()V

    .line 1381
    :cond_1
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInitSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInitSender;-><init>(I)V

    .line 1383
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInitSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1384
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInitSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1385
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1386
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1388
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

    .line 1389
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInitSender;->getHandle()J

    move-result-wide v2

    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->handle:J

    .line 1391
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInitSender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method

.method public searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 9
    .param p1, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aIndex"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p3, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p4, "aDictionaryChange"    # Z
    .param p5, "aLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1433
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "searchList start."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1435
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_0

    .line 1436
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1437
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1440
    :cond_0
    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1441
    :cond_1
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1444
    :cond_2
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchListSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    iget-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->handle:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchListSender;-><init>(IJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)V

    .line 1447
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchListSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1448
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchListSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1449
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1450
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-direct {v1, v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V

    throw v1

    .line 1453
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

    .line 1454
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchListSender;->getRecord()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v1

    return-object v1
.end method

.method public setUtilization(Z)I
    .locals 5
    .param p1, "aUse"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1658
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "setUtilization start."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1660
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_0

    .line 1661
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1662
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    .line 1673
    :goto_0
    return v1

    .line 1665
    :cond_0
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSetUtilizationSender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSetUtilizationSender;-><init>(IZ)V

    .line 1667
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSetUtilizationSender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1668
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSetUtilizationSender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1669
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1670
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1672
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1673
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSetUtilizationSender;->getResult()I

    move-result v1

    goto :goto_0
.end method

.method public testFunction()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1896
    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v8, "testFunction start."

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1898
    new-instance v5, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    invoke-direct {v5}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;-><init>()V

    .line 1900
    .local v5, "sdpath":Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;
    const/4 v4, 0x0

    .line 1906
    .local v4, "ret":I
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/local/tmp/MMbTest/MMbTestAppData.dat"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1910
    .local v6, "t":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, -0x1

    .line 1940
    :cond_0
    :goto_0
    return v7

    .line 1917
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v7, "/storage/sdcard0/private/tmm/callbackTest.txt"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1921
    .local v1, "f":Ljava/io/File;
    const/4 v2, 0x0

    .line 1922
    .local v2, "o":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1924
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 1925
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1926
    .end local v2    # "o":Ljava/io/FileOutputStream;
    .local v3, "o":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v7, "fcengine\nremovebroadcast\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1931
    if-eqz v3, :cond_3

    .line 1933
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1938
    :cond_3
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->invokeTestFacility(Ljava/lang/StringBuffer;)I

    move-result v4

    .line 1939
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_4
    move v7, v4

    .line 1940
    goto :goto_0

    .line 1927
    .end local v3    # "o":Ljava/io/FileOutputStream;
    .restart local v2    # "o":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1928
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v8, "testFunction error."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v0, v9}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1929
    const/4 v7, -0x2

    .line 1931
    if-eqz v2, :cond_0

    .line 1933
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1934
    :catch_1
    move-exception v8

    goto :goto_0

    .line 1931
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v2, :cond_5

    .line 1933
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1935
    :cond_5
    :goto_4
    throw v7

    .line 1934
    .end local v2    # "o":Ljava/io/FileOutputStream;
    .restart local v3    # "o":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    goto :goto_1

    .end local v3    # "o":Ljava/io/FileOutputStream;
    .restart local v2    # "o":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v8

    goto :goto_4

    .line 1931
    .end local v2    # "o":Ljava/io/FileOutputStream;
    .restart local v3    # "o":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "o":Ljava/io/FileOutputStream;
    .restart local v2    # "o":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1927
    .end local v2    # "o":Ljava/io/FileOutputStream;
    .restart local v3    # "o":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "o":Ljava/io/FileOutputStream;
    .restart local v2    # "o":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public updateDatabaseVersion()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1706
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "updateDatabaseVersion start."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1707
    iget-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v2, :cond_0

    .line 1708
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "not connected."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1709
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v2

    .line 1722
    :goto_0
    return v2

    .line 1712
    :cond_0
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDatabaseVersionSender;

    iget v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDatabaseVersionSender;-><init>(I)V

    .line 1714
    .local v1, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDatabaseVersionSender;
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1715
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDatabaseVersionSender;->sendCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1716
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1717
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 1719
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

    .line 1721
    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDatabaseVersionSender;->getReturnCd()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    move-result-object v0

    .line 1722
    .local v0, "result":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v2

    goto :goto_0
.end method

.method public updateDictionary(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;Ljava/lang/String;)I
    .locals 7
    .param p1, "aDictionaryType"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;
    .param p2, "aPath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1181
    if-nez p1, :cond_0

    .line 1182
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    .line 1205
    :goto_0
    return v1

    .line 1184
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "updateDictionary start. type[%s] path[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1187
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1188
    :cond_1
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 1191
    :cond_2
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->isConnected:Z

    if-nez v1, :cond_3

    .line 1192
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "not connected."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1193
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    goto :goto_0

    .line 1196
    :cond_3
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;

    iget v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->clientId:I

    invoke-direct {v0, v1, p1, p2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;-><init>(ILmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;Ljava/lang/String;)V

    .line 1198
    .local v0, "sender":Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1199
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->sendSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->sendCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1200
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 1201
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1203
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

    .line 1204
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "updateDictionary end. return[%d]"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->getReturnCd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1205
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->getReturnCd()I

    move-result v1

    goto :goto_0
.end method
