.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasCancelProcess;
.super Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasNormalProcess;
.source "MmbCaCasDrmMwCasCancelProcess.java"


# instance fields
.field private mCanceledProcessType:B


# direct methods
.method constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;BB)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;
    .param p2, "aSender"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;
    .param p3, "aType"    # B
    .param p4, "aCanceledProcessType"    # B

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasNormalProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;B)V

    .line 37
    iput-byte p4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasCancelProcess;->mCanceledProcessType:B

    .line 38
    return-void
.end method


# virtual methods
.method public varargs declared-synchronized execute([Ljava/lang/Object;)I
    .locals 5
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    .line 49
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v2, p1

    if-lez v2, :cond_0

    .line 51
    const/4 v2, 0x0

    aget-object v2, p1, v2

    instance-of v2, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    if-eqz v2, :cond_0

    .line 52
    const/4 v2, 0x0

    aget-object v1, p1, v2

    check-cast v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .line 53
    .local v1, "tvData":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    iget-byte v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasCancelProcess;->mCanceledProcessType:B

    iget-object v3, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mType:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_0

    .line 54
    const-string v2, "mCanceledProcessType == tvData.mType[0]"

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasCancelProcess;->getState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 62
    .end local v1    # "tvData":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    :goto_0
    monitor-exit p0

    return v0

    .line 60
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasNormalProcess;->execute([Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 62
    .local v0, "state":I
    goto :goto_0

    .line 49
    .end local v0    # "state":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
