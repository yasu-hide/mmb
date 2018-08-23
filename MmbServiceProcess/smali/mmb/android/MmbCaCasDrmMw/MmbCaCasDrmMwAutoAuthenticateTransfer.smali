.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwAutoAuthenticateTransfer.java"

# interfaces
.implements Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$1;,
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$ThrowProcess;,
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;,
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$ProcessListener;
    }
.end annotation


# instance fields
.field private mIsInitialized:Z

.field private mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

.field private mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

.field private mProcessListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$ProcessListener;

.field private mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

.field private mTransferListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;


# direct methods
.method constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;)V
    .locals 2
    .param p1, "aTransfer"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;

    invoke-direct {v0, p0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$1;)V

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mTransferListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;

    .line 33
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$ProcessListener;

    invoke-direct {v0, p0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$ProcessListener;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$1;)V

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mProcessListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$ProcessListener;

    .line 47
    if-nez p1, :cond_0

    .line 48
    const-string v0, "null == aTransfer"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    .line 54
    return-void
.end method

.method static synthetic access$200(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;
    .param p1, "x1"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->onCompleteAsyncProcess(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V

    return-void
.end method

.method static synthetic access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    .prologue
    .line 25
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    return-object v0
.end method

.method static synthetic access$302(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;
    .param p1, "x1"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 25
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    return-object p1
.end method

.method static synthetic access$400(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$ProcessListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    .prologue
    .line 25
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mProcessListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$ProcessListener;

    return-object v0
.end method

.method static synthetic access$500(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    .prologue
    .line 25
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    return-object v0
.end method

.method static synthetic access$600(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    .prologue
    .line 25
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mIsInitialized:Z

    return v0
.end method

.method static synthetic access$700(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;

    .prologue
    .line 25
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;
    .param p1, "x1"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->judgeAuthenticate(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)Z

    move-result v0

    return v0
.end method

.method private judgeAuthenticate(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)Z
    .locals 5
    .param p1, "aProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 185
    const/4 v2, 0x0

    .line 187
    .local v2, "ret":Z
    const/4 v3, 0x2

    invoke-interface {p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->getState()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object v0, p1

    .line 188
    check-cast v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;

    .line 189
    .local v0, "authProcess":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;
    invoke-virtual {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->getCasResultData()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v1

    .line 190
    .local v1, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->getResult()I

    move-result v3

    if-nez v3, :cond_0

    .line 191
    const/4 v2, 0x1

    .line 199
    .end local v0    # "authProcess":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;
    .end local v1    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    :goto_0
    return v2

    .line 193
    .restart local v0    # "authProcess":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;
    .restart local v1    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    :cond_0
    const-string v3, "MmbCaCasDrmMwClientIf.RES_OK != data.getResult()"

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    .end local v0    # "authProcess":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;
    .end local v1    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    :cond_1
    const-string v3, "MmbCaCasDrmMwProcessIf.STATE_COMPLETE != aProcess.getState()"

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized onCompleteAsyncProcess(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V
    .locals 0
    .param p1, "aProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 230
    monitor-enter p0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    invoke-interface {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;->disconnect()V

    .line 174
    return-void
.end method

.method public initialize(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;)V
    .locals 6
    .param p1, "aListener"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 66
    if-nez p1, :cond_0

    .line 67
    const-string v2, "null == aListener"

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 68
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 72
    :cond_0
    iget-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mIsInitialized:Z

    if-eqz v2, :cond_2

    .line 73
    const-string v2, "mIsInitialized"

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;

    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    invoke-direct {v0, v5, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;)V

    .line 79
    .local v0, "authProcess":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;
    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .line 82
    const/4 v1, 0x0

    .line 84
    .local v1, "isSuccess":Z
    :try_start_0
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    .line 85
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mTransferListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$TransferListener;

    invoke-interface {v2, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;->initialize(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 86
    const/4 v1, 0x1

    .line 88
    if-nez v1, :cond_3

    .line 89
    const-string v2, "!isSuccess"

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 90
    iput-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .line 91
    iput-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    .line 96
    :cond_3
    const/4 v1, 0x0

    .line 98
    const-wide/16 v2, 0x7530

    :try_start_1
    invoke-virtual {v0, v2, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->waitComplete(J)I

    .line 100
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    :try_start_2
    invoke-direct {p0, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->judgeAuthenticate(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 102
    const-string v2, "!judgeAuthenticate(authProcess)"

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 103
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;-><init>(I)V

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 108
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    :catchall_1
    move-exception v2

    if-nez v1, :cond_4

    .line 111
    const-string v3, "!isSuccess"

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    invoke-interface {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;->uninitialize()V

    .line 113
    iput-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .line 114
    iput-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    :cond_4
    throw v2

    .line 88
    :catchall_2
    move-exception v2

    if-nez v1, :cond_5

    .line 89
    const-string v3, "!isSuccess"

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 90
    iput-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .line 91
    iput-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    :cond_5
    throw v2

    .line 106
    :cond_6
    const/4 v2, 0x1

    :try_start_4
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mIsInitialized:Z

    .line 107
    const/4 v1, 0x1

    .line 108
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    if-nez v1, :cond_1

    .line 111
    const-string v2, "!isSuccess"

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    invoke-interface {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;->uninitialize()V

    .line 113
    iput-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .line 114
    iput-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    goto :goto_0
.end method

.method public declared-synchronized send(Ljava/lang/Object;)V
    .locals 1
    .param p1, "aData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    if-nez v0, :cond_0

    .line 150
    const-string v0, "null == mProcess"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 153
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    instance-of v0, v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer$ThrowProcess;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    invoke-interface {v0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;->send(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 155
    :cond_1
    :try_start_2
    const-string v0, "doing authenticate"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public uninitialize()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    invoke-interface {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;->uninitialize()V

    .line 132
    monitor-enter p0

    .line 133
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoAuthenticateTransfer;->mIsInitialized:Z

    .line 135
    monitor-exit p0

    .line 137
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
