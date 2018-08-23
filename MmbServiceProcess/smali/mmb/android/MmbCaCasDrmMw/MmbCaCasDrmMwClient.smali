.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwClient.java"

# interfaces
.implements Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$1;,
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$NotifyThread;,
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$ProcessListener;,
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$TransferListener;
    }
.end annotation


# instance fields
.field private mIsInitialized:Z

.field private mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;

.field private mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

.field private mProcessListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$ProcessListener;

.field private mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

.field private mTransferListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$TransferListener;


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$TransferListener;

    invoke-direct {v4, p0, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$TransferListener;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$1;)V

    iput-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mTransferListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$TransferListener;

    .line 40
    new-instance v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$ProcessListener;

    invoke-direct {v4, p0, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$ProcessListener;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$1;)V

    iput-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcessListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$ProcessListener;

    .line 52
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 54
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v4, "MmbCaCasDrmMw"

    invoke-direct {v1, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "sddress":Landroid/net/LocalSocketAddress;
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;

    invoke-direct {v2, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;-><init>(Landroid/net/LocalSocketAddress;)V

    .line 56
    .local v2, "socket":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {v3, v2, v4, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;II)V

    .line 57
    .local v3, "tlv":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    invoke-direct {v0, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;)V

    .line 58
    .local v0, "authenticate":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;
    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    .line 60
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 61
    return-void
.end method

.method static synthetic access$200(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;

    .prologue
    .line 31
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->onDisconnect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->onReceive(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;
    .param p1, "x1"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->onNotify(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V

    return-void
.end method

.method static synthetic access$500(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;
    .param p1, "x1"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->onCompleteAsyncProcess(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V

    return-void
.end method

.method private checkInitialized()V
    .locals 1

    .prologue
    .line 1072
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 1074
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 1075
    const-string v0, "!mIsInitialized"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 1076
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1079
    :cond_0
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 1080
    return-void
.end method

.method private varargs executeAsyncProc(B[Ljava/lang/Object;)V
    .locals 7
    .param p1, "aProcessType"    # B
    .param p2, "aData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1030
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 1033
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->checkInitialized()V

    .line 1036
    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcessListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$ProcessListener;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->getRightExecution(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    move-result-object v1

    .line 1038
    .local v1, "process":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;
    monitor-enter p0

    .line 1040
    const/4 v0, 0x0

    .line 1044
    .local v0, "isSuccess":Z
    :try_start_0
    invoke-interface {v1, p2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->execute([Ljava/lang/Object;)I

    move-result v2

    .line 1045
    .local v2, "state":I
    if-eq v5, v2, :cond_1

    .line 1046
    const-string v3, "state == %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 1047
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    .end local v2    # "state":I
    :catchall_0
    move-exception v3

    if-nez v0, :cond_0

    .line 1055
    :try_start_1
    const-string v4, "!isSuccess"

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 1056
    invoke-direct {p0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->releaseRightExecution(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;)V

    :cond_0
    throw v3

    .line 1059
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 1051
    .restart local v2    # "state":I
    :cond_1
    const-wide/16 v4, 0x7530

    :try_start_2
    invoke-interface {v1, v4, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->startTimer(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1052
    const/4 v0, 0x1

    .line 1054
    if-nez v0, :cond_2

    .line 1055
    :try_start_3
    const-string v3, "!isSuccess"

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 1056
    invoke-direct {p0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->releaseRightExecution(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;)V

    .line 1059
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1061
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 1062
    return-void
.end method

.method private varargs executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .locals 9
    .param p1, "aProcessType"    # B
    .param p2, "aData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 947
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 950
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->checkInitialized()V

    .line 952
    const/4 v2, 0x0

    .line 953
    .local v2, "oldProcess":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;
    const/4 v3, 0x0

    .line 955
    .local v3, "process":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;
    monitor-enter p0

    .line 956
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    .line 958
    const/16 v5, 0x1f

    if-ne p1, v5, :cond_3

    .line 959
    if-nez v2, :cond_0

    .line 960
    const-string v5, "null == oldProcess"

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 961
    new-instance v5, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    monitor-exit p0

    .line 1018
    :goto_0
    return-object v5

    .line 964
    :cond_0
    invoke-interface {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->getType()B

    move-result v0

    .line 965
    .local v0, "canceledprocessType":B
    const/16 v5, 0x1f

    if-ne v0, v5, :cond_1

    .line 966
    const-string v5, "oldProcess == CancelAsyncProcess"

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 967
    new-instance v5, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    const/16 v6, -0x69

    invoke-direct {v5, v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v5

    .line 981
    .end local v0    # "canceledprocessType":B
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 970
    .restart local v0    # "canceledprocessType":B
    :cond_1
    if-eq v0, v8, :cond_2

    const/4 v5, 0x6

    if-eq v0, v5, :cond_2

    .line 972
    :try_start_1
    const-string v5, "Not Async Process"

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 973
    new-instance v5, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    .line 976
    :cond_2
    invoke-direct {p0, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->releaseRightExecution(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;)V

    .line 980
    .end local v0    # "canceledprocessType":B
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-direct {p0, p1, v5, v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->getRightExecution(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    move-result-object v3

    .line 981
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 985
    if-eqz v2, :cond_4

    .line 986
    :try_start_2
    invoke-interface {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->cancel()V

    .line 990
    :cond_4
    invoke-interface {v3, p2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->execute([Ljava/lang/Object;)I

    move-result v4

    .line 993
    .local v4, "state":I
    const-wide/16 v6, 0x7530

    invoke-interface {v3, v6, v7}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->waitComplete(J)I

    move-result v4

    .line 996
    if-eq v8, v4, :cond_5

    const/4 v5, 0x5

    if-ne v5, v4, :cond_6

    .line 998
    :cond_5
    const-string v5, "state == %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1001
    :try_start_3
    iget-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    invoke-interface {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1006
    :goto_1
    :try_start_4
    new-instance v5, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1018
    .end local v4    # "state":I
    :catchall_1
    move-exception v5

    invoke-direct {p0, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->releaseRightExecution(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;)V

    throw v5

    .line 1002
    .restart local v4    # "state":I
    :catch_0
    move-exception v1

    .line 1003
    .local v1, "ex":Ljava/io/IOException;
    :try_start_5
    const-string v5, "IOException"

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 1010
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_6
    const/4 v5, 0x4

    if-ne v5, v4, :cond_7

    .line 1011
    const-string v5, "state == %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 1012
    new-instance v5, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v5

    .line 1015
    :cond_7
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 1016
    invoke-interface {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->getCasResultData()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v5

    .line 1018
    invoke-direct {p0, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->releaseRightExecution(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;)V

    goto/16 :goto_0
.end method

.method private varargs declared-synchronized getRightExecution(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;
    .locals 3
    .param p1, "aProcessType"    # B
    .param p2, "aListener"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;
    .param p3, "aData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    .line 1090
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 1092
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    if-eqz v0, :cond_0

    .line 1093
    const-string v0, "null != mProcess"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 1094
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    const/16 v1, -0x69

    invoke-direct {v0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1097
    :cond_0
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_1

    .line 1098
    :try_start_1
    new-instance v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasCancelProcess;

    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    invoke-interface {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->getType()B

    move-result v0

    invoke-direct {v1, p2, v2, p1, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasCancelProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;BB)V

    iput-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    .line 1103
    :goto_0
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 1105
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1100
    :cond_1
    :try_start_2
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasNormalProcess;

    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    invoke-direct {v0, p2, v1, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasNormalProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;B)V

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private notifyOnCompleteCreateKl(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;)V
    .locals 8
    .param p1, "aProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    .prologue
    .line 1345
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 1347
    const/4 v1, -0x1

    .line 1348
    .local v1, "casResult":I
    const/4 v3, 0x0

    .line 1351
    .local v3, "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;
    const/4 v4, 0x2

    :try_start_0
    invoke-interface {p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->getState()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1352
    invoke-interface {p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->getCasResultData()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v2

    .line 1353
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v1

    .line 1354
    if-nez v1, :cond_1

    .line 1355
    invoke-virtual {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getData()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;

    move-object v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1361
    .end local v2    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    :cond_0
    :goto_0
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;

    invoke-interface {v4, v1, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;->onCompleteCreateKl(ILmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;)V

    .line 1364
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 1365
    return-void

    .line 1357
    .restart local v2    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    :cond_1
    :try_start_1
    const-string v4, "casResult == %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1361
    .end local v2    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;

    invoke-interface {v5, v1, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;->onCompleteCreateKl(ILmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;)V

    throw v4
.end method

.method private notifyOnCompleteUpdateEmm(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;)V
    .locals 6
    .param p1, "aProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    .prologue
    .line 1375
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 1377
    const/4 v0, -0x1

    .line 1380
    .local v0, "casResult":I
    const/4 v2, 0x2

    :try_start_0
    invoke-interface {p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->getState()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1381
    invoke-interface {p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->getCasResultData()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v1

    .line 1382
    .local v1, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v0

    .line 1383
    if-eqz v0, :cond_0

    .line 1384
    const-string v2, "casResult == %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1388
    .end local v1    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;

    invoke-interface {v2, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;->onCompleteUpdateEmm(I)V

    .line 1391
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 1392
    return-void

    .line 1388
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;

    invoke-interface {v3, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;->onCompleteUpdateEmm(I)V

    throw v2
.end method

.method private onCompleteAsyncProcess(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V
    .locals 13
    .param p1, "aProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1298
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 1301
    :try_start_0
    invoke-interface {p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 1302
    const-string v5, "ProcessState == Cancel"

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    invoke-interface {p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->getState()I

    move-result v3

    .line 1322
    .local v3, "state":I
    if-eq v11, v3, :cond_0

    if-ne v12, v3, :cond_1

    .line 1324
    :cond_0
    const-string v5, "state == %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 1327
    :try_start_1
    iget-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    invoke-interface {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1335
    :cond_1
    :goto_0
    return-void

    .line 1328
    :catch_0
    move-exception v1

    .line 1329
    .local v1, "ex":Ljava/io/IOException;
    const-string v5, "IOException"

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 1306
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "state":I
    :cond_2
    :try_start_2
    move-object v0, p1

    check-cast v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    move-object v2, v0

    .line 1307
    .local v2, "process":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;
    invoke-interface {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->getType()B

    move-result v4

    .line 1308
    .local v4, "type":B
    packed-switch v4, :pswitch_data_0

    .line 1316
    :pswitch_0
    const-string v5, "type == %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 1317
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1321
    .end local v2    # "process":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;
    .end local v4    # "type":B
    :catchall_0
    move-exception v5

    invoke-interface {p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->getState()I

    move-result v3

    .line 1322
    .restart local v3    # "state":I
    if-eq v11, v3, :cond_3

    if-ne v12, v3, :cond_4

    .line 1324
    :cond_3
    const-string v6, "state == %d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 1327
    :try_start_3
    iget-object v6, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    invoke-interface {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1332
    :cond_4
    :goto_1
    throw v5

    .line 1310
    .end local v3    # "state":I
    .restart local v2    # "process":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;
    .restart local v4    # "type":B
    :pswitch_1
    :try_start_4
    invoke-direct {p0, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->notifyOnCompleteCreateKl(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1321
    :goto_2
    invoke-interface {p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->getState()I

    move-result v3

    .line 1322
    .restart local v3    # "state":I
    if-eq v11, v3, :cond_5

    if-ne v12, v3, :cond_6

    .line 1324
    :cond_5
    const-string v5, "state == %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 1327
    :try_start_5
    iget-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    invoke-interface {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1334
    :cond_6
    :goto_3
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    goto :goto_0

    .line 1313
    .end local v3    # "state":I
    :pswitch_2
    :try_start_6
    invoke-direct {p0, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->notifyOnCompleteUpdateEmm(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 1328
    .restart local v3    # "state":I
    :catch_1
    move-exception v1

    .line 1329
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string v5, "IOException"

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    goto :goto_3

    .line 1328
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "process":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;
    .end local v4    # "type":B
    :catch_2
    move-exception v1

    .line 1329
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string v6, "IOException"

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 1308
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized onDisconnect()Z
    .locals 1

    .prologue
    .line 1200
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 1202
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    invoke-interface {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->cancel()V

    .line 1206
    :cond_0
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1207
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onNotify(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V
    .locals 2
    .param p1, "aProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 1275
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 1280
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$NotifyThread;

    invoke-direct {v1, p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$NotifyThread;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    .local v0, "thread":Ljava/lang/Thread;
    check-cast p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    .end local p1    # "aProcess":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->releaseRightExecution(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;)V

    .line 1285
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1287
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 1288
    return-void

    .line 1282
    .end local v0    # "thread":Ljava/lang/Thread;
    .restart local p1    # "aProcess":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    :catchall_0
    move-exception v1

    check-cast p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    .end local p1    # "aProcess":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->releaseRightExecution(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;)V

    throw v1
.end method

.method private declared-synchronized onReceive(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "aData"    # Ljava/lang/Object;

    .prologue
    .line 1218
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 1220
    const/4 v0, 0x0

    .line 1223
    .local v0, "doDisconnect":Z
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    if-nez v1, :cond_0

    .line 1224
    const-string v1, "null == mProcess"

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 1225
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "no process when data received"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    .end local v0    # "doDisconnect":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1227
    .restart local v0    # "doDisconnect":Z
    :cond_0
    :try_start_1
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->execute([Ljava/lang/Object;)I

    .line 1229
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1230
    monitor-exit p0

    return v0
.end method

.method private declared-synchronized releaseRightExecution(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;)V
    .locals 1
    .param p1, "aProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    .prologue
    .line 1116
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 1118
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    if-ne v0, p1, :cond_0

    .line 1119
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    .line 1122
    :cond_0
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    monitor-exit p0

    return-void

    .line 1116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public checkCompletedInitSetting()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 167
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 169
    const/4 v2, 0x2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 172
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v1

    .line 173
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 174
    const-string v2, "result == %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 175
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v2, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v2

    .line 178
    :cond_0
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 179
    return-void
.end method

.method public checkSupportCasFunction()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 145
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 147
    new-array v2, v5, [Ljava/lang/Object;

    invoke-direct {p0, v3, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 150
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v1

    .line 151
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 152
    const-string v2, "result == %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 153
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v2, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v2

    .line 156
    :cond_0
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 157
    return-void
.end method

.method public createKl()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 191
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeAsyncProc(B[Ljava/lang/Object;)V

    .line 193
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 194
    return-void
.end method

.method public deleteAccumulatedCrId([B)V
    .locals 9
    .param p1, "aCrId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 742
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 744
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 746
    if-nez p1, :cond_1

    .line 747
    const-string v1, "argument aCrId is null"

    .line 751
    .local v1, "logStr":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 754
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x12

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-direct {p0, v3, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 757
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v2

    .line 758
    .local v2, "result":I
    if-eqz v2, :cond_2

    .line 759
    const-string v3, "result == %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 760
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v3, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v3

    .line 749
    .end local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .end local v2    # "result":I
    :cond_1
    const-string v3, "argument aCrId = %s"

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/String;

    array-length v6, p1

    invoke-direct {v5, p1, v7, v6}, Ljava/lang/String;-><init>([BII)V

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "logStr":Ljava/lang/String;
    goto :goto_0

    .line 763
    .end local v1    # "logStr":Ljava/lang/String;
    .restart local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .restart local v2    # "result":I
    :cond_2
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 764
    return-void
.end method

.method public deleteAllLicenseInfo(B[B)V
    .locals 9
    .param p1, "aEntityId"    # B
    .param p2, "aAuthority"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 596
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 598
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 600
    const-string v3, "argument aEntityId = %x"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "logStr":Ljava/lang/String;
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 602
    if-nez p2, :cond_1

    .line 603
    const-string v3, "argument aAuthority is null"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 607
    :goto_0
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 610
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_0
    const/16 v3, 0xe

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p2, v4, v8

    invoke-direct {p0, v3, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 613
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v2

    .line 614
    .local v2, "result":I
    if-eqz v2, :cond_2

    .line 615
    const-string v3, "result == %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 616
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v3, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v3

    .line 605
    .end local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .end local v2    # "result":I
    .restart local v1    # "logStr":Ljava/lang/String;
    :cond_1
    const-string v3, "argument aAuthority = %s"

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/String;

    array-length v6, p2

    invoke-direct {v5, p2, v7, v6}, Ljava/lang/String;-><init>([BII)V

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 619
    .end local v1    # "logStr":Ljava/lang/String;
    .restart local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .restart local v2    # "result":I
    :cond_2
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 620
    return-void
.end method

.method public deleteInvalidLicenseInfo(BLjava/util/Date;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "aEntityId"    # B
    .param p2, "aDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    .line 630
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 632
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 634
    const-string v9, "argument aEntityId = %x"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, "logStr":Ljava/lang/String;
    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 636
    if-nez p2, :cond_1

    .line 637
    const-string v4, "argument aDate is null"

    .line 643
    :goto_0
    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 646
    .end local v4    # "logStr":Ljava/lang/String;
    :cond_0
    const/16 v9, 0xf

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    invoke-direct {p0, v9, v10}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v1

    .line 649
    .local v1, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v5

    .line 650
    .local v5, "result":I
    if-eqz v5, :cond_2

    .line 651
    const-string v9, "result == %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 652
    new-instance v9, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v9, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v9

    .line 639
    .end local v1    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .end local v5    # "result":I
    .restart local v4    # "logStr":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v2, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 640
    .local v2, "format":Ljava/text/DateFormat;
    const-string v9, "UTC"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 641
    const-string v9, "argument aDate = %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v2, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 655
    .end local v2    # "format":Ljava/text/DateFormat;
    .end local v4    # "logStr":Ljava/lang/String;
    .restart local v1    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .restart local v5    # "result":I
    :cond_2
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getData()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 657
    .local v6, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;>;"
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 658
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 659
    .local v7, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_3

    .line 660
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;

    iget-object v0, v9, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;->mmbCrId:[B

    .line 661
    .local v0, "byCrId":[B
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    array-length v10, v0

    invoke-direct {v8, v0, v9, v10}, Ljava/lang/String;-><init>([BII)V

    .line 662
    .local v8, "strCrId":Ljava/lang/String;
    const-string v10, "return %d - LICENSEID = %s CRID = %s"

    const/4 v9, 0x3

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    const/4 v12, 0x1

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;

    iget-object v9, v9, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;->mmbLicenseId:[B

    invoke-static {v9}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v12

    const/4 v9, 0x2

    aput-object v8, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 663
    .restart local v4    # "logStr":Ljava/lang/String;
    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 659
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 667
    .end local v0    # "byCrId":[B
    .end local v3    # "i":I
    .end local v4    # "logStr":Ljava/lang/String;
    .end local v7    # "size":I
    .end local v8    # "strCrId":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 668
    return-object v6
.end method

.method public deleteLicenseInfo(B[B)V
    .locals 9
    .param p1, "aEntityId"    # B
    .param p2, "aCrId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 562
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 564
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 566
    const-string v3, "argument aEntityId = %x"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "logStr":Ljava/lang/String;
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 568
    if-nez p2, :cond_1

    .line 569
    const-string v1, "argument aCrId is null"

    .line 573
    :goto_0
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 576
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_0
    const/16 v3, 0xd

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p2, v4, v8

    invoke-direct {p0, v3, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 579
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v2

    .line 580
    .local v2, "result":I
    if-eqz v2, :cond_2

    .line 581
    const-string v3, "result == %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 582
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v3, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v3

    .line 571
    .end local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .end local v2    # "result":I
    .restart local v1    # "logStr":Ljava/lang/String;
    :cond_1
    const-string v3, "argument aCrId = %s"

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/String;

    array-length v6, p2

    invoke-direct {v5, p2, v7, v6}, Ljava/lang/String;-><init>([BII)V

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 585
    .end local v1    # "logStr":Ljava/lang/String;
    .restart local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .restart local v2    # "result":I
    :cond_2
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 586
    return-void
.end method

.method public deleteManagementInfo()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 822
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 824
    const/16 v2, 0x13

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 827
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v1

    .line 828
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 829
    const-string v2, "result == %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 830
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v2, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v2

    .line 833
    :cond_0
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 834
    return-void
.end method

.method public getAccumulatedCrIdCount()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 679
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 681
    const/16 v4, 0x10

    new-array v5, v7, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 684
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v2

    .line 685
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 686
    const-string v4, "result == %d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 687
    new-instance v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v4, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v4

    .line 690
    :cond_0
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 692
    .local v3, "ret":I
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 694
    const-string v4, "return = %d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, "logStr":Ljava/lang/String;
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 698
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 699
    return v3
.end method

.method public getCaSystemId()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 894
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 896
    const/16 v4, 0x1e

    new-array v5, v7, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 899
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v2

    .line 900
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 901
    const-string v4, "result == %d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 902
    new-instance v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v4, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v4

    .line 905
    :cond_0
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 907
    .local v3, "ret":I
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 909
    const-string v4, "return = %x"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 910
    .local v1, "logStr":Ljava/lang/String;
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 913
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 914
    return v3
.end method

.method public getLicenseCount()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 350
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 352
    const/16 v4, 0x9

    new-array v5, v7, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 355
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v2

    .line 356
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 357
    const-string v4, "result == %d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 358
    new-instance v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v4, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v4

    .line 361
    :cond_0
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 363
    .local v3, "ret":I
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    const-string v4, "return = %d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "logStr":Ljava/lang/String;
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 369
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 370
    return v3
.end method

.method public getLicenseInfo(B[B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    .locals 10
    .param p1, "aEntityId"    # B
    .param p2, "aCrId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 381
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 383
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    const-string v4, "argument aEntityId = %x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "logStr":Ljava/lang/String;
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 387
    if-nez p2, :cond_1

    .line 388
    const-string v1, "argument aCrId is null"

    .line 392
    :goto_0
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 395
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_0
    const/16 v4, 0xa

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object p2, v5, v9

    invoke-direct {p0, v4, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 398
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v2

    .line 399
    .local v2, "result":I
    if-eqz v2, :cond_2

    .line 400
    const-string v4, "result == %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 401
    new-instance v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v4, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v4

    .line 390
    .end local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .end local v2    # "result":I
    .restart local v1    # "logStr":Ljava/lang/String;
    :cond_1
    const-string v4, "argument aCrId = %s"

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/String;

    array-length v7, p2

    invoke-direct {v6, p2, v8, v7}, Ljava/lang/String;-><init>([BII)V

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 404
    .end local v1    # "logStr":Ljava/lang/String;
    .restart local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .restart local v2    # "result":I
    :cond_2
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;

    .line 406
    .local v3, "ret":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 408
    const-string v4, "return MmbCaCasDrmMwLicenseInfo"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .restart local v1    # "logStr":Ljava/lang/String;
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 411
    const-string v4, "return mmbLicenseId = %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbLicenseId:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 413
    const-string v4, "return mmbVersionNo = %x"

    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbVersionNo:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 416
    const-string v4, "return mmbRmpi.mmbStartDate = %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    iget-object v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbStartDate:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 418
    const-string v4, "return mmbRmpi.mmbPeriodDate = %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    iget-object v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbPeriodDate:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 420
    const-string v4, "return mmbRmpi.mmbSpanSec = %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    iget-wide v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbSpanSec:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 421
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 422
    const-string v4, "return mmbRmpi.mmbLimitCount = %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    iget v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbLimitCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 424
    const-string v4, "return mmbRmpi.mmbLimitCountInfo = %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    iget v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbLimitCountInfo:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 426
    const-string v4, "return mmbRmpi.mmbCanTrickPlay = %x"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    iget-byte v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbCanTrickPlay:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 428
    const-string v4, "return mmbRmpi.mmbDisableTrickPlaySpan = %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    iget-object v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbDisableTrickPlaySpan:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 430
    const-string v4, "return mmbRmpi.mmbOutputControlInfo = %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    iget-object v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbOutputControlInfo:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 432
    const-string v4, "return mmbRmpi.mmbRatingInfo = %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    iget v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbRatingInfo:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 434
    const-string v4, "return mmbRmpi.mmbReserve = %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    iget-object v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbReserve:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 437
    const-string v4, "return mmbUseState.mmbUseFlag = %b"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbUseState:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;

    iget-boolean v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbUseFlag:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 439
    const-string v4, "return mmbUseState.mmbUseStartDate = %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbUseState:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;

    iget-object v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbUseStartDate:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 441
    const-string v4, "return mmbUseState.mmbUseCount = %d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbUseState:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;

    iget v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbUseCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 443
    const-string v4, "return mmbUseState.mmbReserve = %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbUseState:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;

    iget-object v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbReserve:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 447
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 448
    return-object v3
.end method

.method public getRequestEmmInfo()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 243
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 245
    const/4 v4, 0x5

    new-array v5, v7, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 248
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v2

    .line 249
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 250
    const-string v4, "result == %d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 251
    new-instance v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v4, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v4

    .line 254
    :cond_0
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;

    .line 256
    .local v3, "ret":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    const-string v4, "return MmbCaCasDrmMwRequestEmmInfo"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "logStr":Ljava/lang/String;
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 261
    const-string v4, "return mmbCasClientId = %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;->mmbCasClientId:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 263
    const-string v4, "return mmbReciverId = %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;->mmbReciverId:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 267
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 268
    return-object v3
.end method

.method public getRequestLicenseInfo([B[B[B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;
    .locals 10
    .param p1, "aCrId"    # [B
    .param p2, "aAreaCode"    # [B
    .param p3, "aMsgId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 459
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 461
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 463
    if-nez p1, :cond_1

    .line 464
    const-string v1, "argument aCrId is null"

    .line 468
    .local v1, "logStr":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 469
    const-string v4, "argument aAreaCode = %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 471
    const-string v4, "argument aMsgId = %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 475
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_0
    const/16 v4, 0xb

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    aput-object p2, v5, v9

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-direct {p0, v4, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 478
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v2

    .line 479
    .local v2, "result":I
    if-eqz v2, :cond_2

    .line 480
    const-string v4, "result == %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 481
    new-instance v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v4, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v4

    .line 466
    .end local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .end local v2    # "result":I
    :cond_1
    const-string v4, "argument aCrId = %s"

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/String;

    array-length v7, p1

    invoke-direct {v6, p1, v8, v7}, Ljava/lang/String;-><init>([BII)V

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "logStr":Ljava/lang/String;
    goto :goto_0

    .line 484
    .end local v1    # "logStr":Ljava/lang/String;
    .restart local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .restart local v2    # "result":I
    :cond_2
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;

    .line 486
    .local v3, "ret":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 488
    const-string v4, "return MmbCaCasDrmMwRequestLicenseInfo"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 489
    .restart local v1    # "logStr":Ljava/lang/String;
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 491
    const-string v4, "return mmbCasClientId = %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbCasClientId:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 493
    const-string v4, "return mmbReciverId = %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbReciverId:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 495
    const-string v4, "return mmbAccumulatedFlag = %x"

    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbAccumulatedFlag:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 497
    const-string v4, "return mmbCryptInfo = %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbCryptInfo:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 501
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 502
    return-object v3
.end method

.method public getTierInfo(B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    .locals 9
    .param p1, "aEntityId"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 302
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 304
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    const-string v4, "argument aEntityId = %x"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "logStr":Ljava/lang/String;
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 310
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_0
    const/16 v4, 0x8

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0, v4, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 313
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v2

    .line 314
    .local v2, "result":I
    if-eqz v2, :cond_1

    .line 315
    const-string v4, "result == %d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 316
    new-instance v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v4, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v4

    .line 319
    :cond_1
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;

    .line 321
    .local v3, "ret":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 323
    const-string v4, "return MmbCaCasDrmMwTierInfo"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .restart local v1    # "logStr":Ljava/lang/String;
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 326
    const-string v4, "return mmbEntityId = %x"

    new-array v5, v8, [Ljava/lang/Object;

    iget-byte v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbEntityId:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 328
    const-string v4, "return mmbUpdateNo = %d"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbUpdateNo:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 330
    const-string v4, "return mmbLimit = %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbLimit:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 332
    const-string v4, "return mmbTierbit = %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbTierbit:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 334
    const-string v4, "return mmbExtTier = %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbExtTier:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 338
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 339
    return-object v3
.end method

.method public initialize(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;)V
    .locals 3
    .param p1, "aListener"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 74
    if-nez p1, :cond_0

    .line 75
    const-string v1, "null == aListener"

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 80
    :cond_0
    iget-boolean v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mIsInitialized:Z

    if-eqz v1, :cond_1

    .line 81
    const-string v1, "mIsInitialized"

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 87
    :cond_1
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mTransferListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient$TransferListener;

    invoke-interface {v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;->initialize(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;)V

    .line 89
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mIsInitialized:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "IOException"

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 93
    new-instance v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v1
.end method

.method public initializeUseFlg()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 844
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 846
    const/16 v2, 0x1c

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 849
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v1

    .line 850
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 851
    const-string v2, "result == %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 852
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v2, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v2

    .line 855
    :cond_0
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 856
    return-void
.end method

.method public registerAccumulatedCrId([B)V
    .locals 9
    .param p1, "aCrId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 710
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 712
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 714
    if-nez p1, :cond_1

    .line 715
    const-string v1, "argument aCrId is null"

    .line 719
    .local v1, "logStr":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 722
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x11

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-direct {p0, v3, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 725
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v2

    .line 726
    .local v2, "result":I
    if-eqz v2, :cond_2

    .line 727
    const-string v3, "result == %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 728
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v3, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v3

    .line 717
    .end local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .end local v2    # "result":I
    :cond_1
    const-string v3, "argument aCrId = %s"

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/String;

    array-length v6, p1

    invoke-direct {v5, p1, v7, v6}, Ljava/lang/String;-><init>([BII)V

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "logStr":Ljava/lang/String;
    goto :goto_0

    .line 731
    .end local v1    # "logStr":Ljava/lang/String;
    .restart local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .restart local v2    # "result":I
    :cond_2
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 732
    return-void
.end method

.method public registerKl([BLjava/util/ArrayList;)V
    .locals 11
    .param p1, "aReceiverId"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    .local p2, "aCryptInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 204
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 206
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 208
    const-string v5, "argument aReceiverId = %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "logStr":Ljava/lang/String;
    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 211
    if-nez p2, :cond_1

    .line 212
    const-string v2, "argument aCryptInfoList is null"

    .line 213
    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 223
    .end local v2    # "logStr":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x4

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p1, v6, v8

    aput-object p2, v6, v9

    invoke-direct {p0, v5, v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 226
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v3

    .line 227
    .local v3, "result":I
    if-eqz v3, :cond_2

    .line 228
    const-string v5, "result == %d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 229
    new-instance v5, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v5, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v5

    .line 215
    .end local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .end local v3    # "result":I
    .restart local v2    # "logStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 216
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 217
    const-string v6, "argument aCryptInfoList[%d] = %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v1    # "i":I
    .end local v2    # "logStr":Ljava/lang/String;
    .end local v4    # "size":I
    .restart local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .restart local v3    # "result":I
    :cond_2
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 233
    return-void
.end method

.method public registerLicense(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;)V
    .locals 10
    .param p1, "aInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 513
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 515
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    if-nez p1, :cond_1

    .line 519
    const-string v3, "argument MmbCaCasDrmMwRegisterLicenseInfo is null"

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 542
    :cond_0
    :goto_0
    const/16 v3, 0xc

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v8

    invoke-direct {p0, v3, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 545
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v2

    .line 546
    .local v2, "result":I
    if-eqz v2, :cond_3

    .line 547
    const-string v3, "result == %d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 548
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v3, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v3

    .line 521
    .end local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .end local v2    # "result":I
    :cond_1
    const-string v3, "argument MmbCaCasDrmMwRegisterLicenseInfo"

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 523
    const-string v3, "argument mmbEntityId = %x"

    new-array v4, v9, [Ljava/lang/Object;

    iget-byte v5, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbEntityId:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "logStr":Ljava/lang/String;
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 525
    iget-object v3, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCrId:[B

    if-nez v3, :cond_2

    .line 526
    const-string v1, "argument mmbCrId is null"

    .line 530
    :goto_1
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 531
    const-string v3, "argument mmbCasClientId = %s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCasClientId:[B

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 533
    const-string v3, "argument mmbReceiverId = %s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbReceiverId:[B

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 535
    const-string v3, "argument mmbMessageId = %s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbMessageId:[B

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 537
    const-string v3, "argument mmbCryptInfo = %s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCryptInfo:[B

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 528
    :cond_2
    const-string v3, "argument mmbCrId = %s"

    new-array v4, v9, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/String;

    iget-object v6, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCrId:[B

    iget-object v7, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCrId:[B

    array-length v7, v7

    invoke-direct {v5, v6, v8, v7}, Ljava/lang/String;-><init>([BII)V

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 551
    .end local v1    # "logStr":Ljava/lang/String;
    .restart local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .restart local v2    # "result":I
    :cond_3
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 552
    return-void
.end method

.method public searchAccumulatedCrId([B)Z
    .locals 10
    .param p1, "aCrId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 774
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 776
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 778
    if-nez p1, :cond_1

    .line 779
    const-string v1, "argument aCrId is null"

    .line 783
    .local v1, "logStr":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 786
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_0
    const/16 v4, 0x22

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p1, v7, v5

    invoke-direct {p0, v4, v7}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 789
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v2

    .line 790
    .local v2, "result":I
    if-eqz v2, :cond_2

    .line 791
    const-string v4, "result == %d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 792
    new-instance v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v4, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v4

    .line 781
    .end local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .end local v2    # "result":I
    :cond_1
    const-string v4, "argument aCrId = %s"

    new-array v7, v6, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/String;

    array-length v9, p1

    invoke-direct {v8, p1, v5, v9}, Ljava/lang/String;-><init>([BII)V

    aput-object v8, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "logStr":Ljava/lang/String;
    goto :goto_0

    .line 795
    .end local v1    # "logStr":Ljava/lang/String;
    .restart local v0    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .restart local v2    # "result":I
    :cond_2
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 796
    .local v3, "ret":B
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 798
    const-string v4, "return MmbCaCasDrmMwAccumulatedCrId"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 799
    .restart local v1    # "logStr":Ljava/lang/String;
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 801
    const-string v4, "return exist = %x"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 802
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 805
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 807
    if-nez v3, :cond_4

    move v4, v5

    .line 810
    :goto_1
    return v4

    :cond_4
    move v4, v6

    goto :goto_1
.end method

.method public secureAccess(Z)V
    .locals 8
    .param p1, "aOnOff"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 866
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 868
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 870
    const-string v3, "argument aOnOff = %b"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, "logStr":Ljava/lang/String;
    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 874
    .end local v1    # "logStr":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x1d

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-direct {p0, v3, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeSyncProc(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 877
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v2

    .line 878
    .local v2, "result":I
    if-eqz v2, :cond_1

    .line 879
    const-string v3, "result == %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 880
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    invoke-direct {v3, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    throw v3

    .line 883
    :cond_1
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 884
    return-void
.end method

.method public uninitialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 107
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 110
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 111
    const-string v0, "!mIsInitialized"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 117
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    invoke-interface {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;->uninitialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    :try_start_2
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    if-eqz v0, :cond_1

    .line 123
    const-string v0, "null != mProcess"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    invoke-interface {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->cancel()V

    .line 126
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :goto_1
    iput-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;

    .line 131
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mIsInitialized:Z

    .line 134
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 127
    :catch_0
    move-exception v0

    goto :goto_1

    .line 120
    :catchall_1
    move-exception v0

    .line 121
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 122
    :try_start_6
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    if-eqz v1, :cond_2

    .line 123
    const-string v1, "null != mProcess"

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;

    invoke-interface {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;->cancel()V

    .line 126
    :cond_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 130
    :goto_2
    iput-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;

    .line 131
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->mIsInitialized:Z

    throw v0

    .line 126
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 127
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public updateEmm(B[B)V
    .locals 6
    .param p1, "aEntityId"    # B
    .param p2, "aEmmData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 279
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodStart()V

    .line 281
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->isMmbDebuggableD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const-string v1, "argument aEntityId = %x"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "logStr":Ljava/lang/String;
    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 285
    const-string v1, "argument aEmmData = %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->getBufferText([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 289
    .end local v0    # "logStr":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x6

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-direct {p0, v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;->executeAsyncProc(B[Ljava/lang/Object;)V

    .line 291
    invoke-static {}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logMethodEnd()V

    .line 292
    return-void
.end method
