.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasNormalProcess;
.super Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;
.source "MmbCaCasDrmMwCasNormalProcess.java"

# interfaces
.implements Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;


# static fields
.field private static final TIMEOUT_RESPONSE:I = 0x4e20


# instance fields
.field private mCasResultData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

.field private mSender:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;

.field private mType:B


# direct methods
.method constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;B)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;
    .param p2, "aSender"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;
    .param p3, "aType"    # B

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;)V

    .line 41
    if-nez p2, :cond_0

    .line 42
    const-string v0, "null == aSender"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 46
    :cond_0
    iput-object p2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasNormalProcess;->mSender:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;

    .line 47
    iput-byte p3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasNormalProcess;->mType:B

    .line 49
    return-void
.end method


# virtual methods
.method public getCasResultData()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasNormalProcess;->mCasResultData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    return-object v0
.end method

.method getNextChild(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    .locals 4
    .param p1, "aChildProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 98
    instance-of v1, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasSendProcess;

    if-eqz v1, :cond_0

    .line 99
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;

    new-instance v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$ChildProcessListener;

    invoke-direct {v1, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$ChildProcessListener;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;)V

    iget-byte v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasNormalProcess;->mType:B

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;B)V

    .line 100
    .local v0, "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    const-wide/16 v2, 0x4e20

    invoke-interface {v0, p0, v2, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->startTimer(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;J)V

    .line 108
    :goto_0
    return-object v0

    .line 101
    .end local v0    # "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    :cond_0
    instance-of v1, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;

    if-eqz v1, :cond_1

    .line 102
    const/4 v0, 0x0

    .restart local v0    # "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    goto :goto_0

    .line 104
    .end local v0    # "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    :cond_1
    const-string v1, "aChildProcess instanceof ?"

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 105
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 59
    iget-byte v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasNormalProcess;->mType:B

    return v0
.end method

.method onChildComplete(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)I
    .locals 5
    .param p1, "aChildProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 120
    const/4 v2, 0x3

    .line 123
    .local v2, "state":I
    instance-of v3, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    invoke-interface {p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->getState()I

    move-result v4

    if-ne v3, v4, :cond_0

    move-object v1, p1

    .line 125
    check-cast v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;

    .line 126
    .local v1, "receiveProcess":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;->GetReceiveData()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 127
    .local v0, "receiveData":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->parseData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v3

    iput-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasNormalProcess;->mCasResultData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    .line 128
    const/4 v2, 0x2

    .line 131
    .end local v0    # "receiveData":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .end local v1    # "receiveProcess":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;
    :cond_0
    return v2
.end method

.method varargs onFirstExecute([Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    .locals 3
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    .line 82
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasSendProcess;

    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasNormalProcess;->mSender:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;

    iget-byte v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasNormalProcess;->mType:B

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasSendProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;B)V

    .line 84
    .local v0, "process":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    return-object v0
.end method
