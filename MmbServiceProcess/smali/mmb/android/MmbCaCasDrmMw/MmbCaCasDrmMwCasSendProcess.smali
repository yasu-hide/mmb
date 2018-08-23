.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasSendProcess;
.super Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;
.source "MmbCaCasDrmMwCasSendProcess.java"


# instance fields
.field private mSender:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;

.field private mType:B


# direct methods
.method constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;B)V
    .locals 1
    .param p1, "aSender"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;
    .param p2, "aType"    # B

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;)V

    .line 41
    if-nez p1, :cond_0

    .line 42
    const-string v0, "null == aSender"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasSendProcess;->mSender:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;

    .line 47
    iput-byte p2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasSendProcess;->mType:B

    .line 48
    return-void
.end method


# virtual methods
.method varargs action([Ljava/lang/Object;)I
    .locals 3
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    .line 71
    iget-byte v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasSendProcess;->mType:B

    invoke-static {v2, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v1

    .line 75
    .local v1, "tvData":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasSendProcess;->mSender:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;

    invoke-interface {v2, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;->send(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    const/4 v2, 0x2

    return v2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "IOException"

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 78
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method varargs onCanExecute([Ljava/lang/Object;)Z
    .locals 1
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method
