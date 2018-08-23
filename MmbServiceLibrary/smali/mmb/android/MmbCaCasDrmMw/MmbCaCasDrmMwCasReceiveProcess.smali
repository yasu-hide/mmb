.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;
.super Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;
.source "MmbCaCasDrmMwCasReceiveProcess.java"


# instance fields
.field private mReceiveData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

.field private mType:B


# direct methods
.method constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;B)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;
    .param p2, "aType"    # B

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;)V

    .line 37
    iput-byte p2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;->mType:B

    .line 38
    return-void
.end method


# virtual methods
.method GetReceiveData()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;->mReceiveData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    return-object v0
.end method

.method varargs action([Ljava/lang/Object;)I
    .locals 1
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    .line 80
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;->mReceiveData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .line 82
    const/4 v0, 0x2

    return v0
.end method

.method varargs onCanExecute([Ljava/lang/Object;)Z
    .locals 6
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    aget-object v0, p1, v1

    check-cast v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .line 62
    .local v0, "tvData":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    iget-byte v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;->mType:B

    iget-object v4, v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mType:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_0

    .line 63
    const-string v3, "mType != tvData.mType[0]"

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 64
    const-string v3, "mType == %d, tvData.mType[0] == %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-byte v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;->mType:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mType:[B

    aget-byte v5, v5, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 68
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
