.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStScanFunctionSv;
.super Ljava/lang/Object;
.source "MmbStScanFunctionSv.java"


# instance fields
.field private mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;


# direct methods
.method constructor <init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;)V
    .locals 1
    .param p1, "aMwInstance"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStScanFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .line 54
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStScanFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .line 58
    return-void
.end method

.method private judgedErrorment(I)V
    .locals 5
    .param p1, "aResult"    # I

    .prologue
    const/4 v4, 0x1

    .line 161
    if-eqz p1, :cond_0

    .line 162
    const-string v0, "error(%d)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v0, v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v0

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method protected cancelScan()V
    .locals 5

    .prologue
    .line 119
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStScanFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->scanCancel()I

    move-result v0

    .line 124
    .local v0, "result":I
    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 125
    const-string v1, "Status Error has been occured and continue forward sequences(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStScanFunctionSv;->judgedErrorment(I)V

    goto :goto_0
.end method

.method protected scan(I)V
    .locals 2
    .param p1, "aUserParam"    # I

    .prologue
    .line 84
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStScanFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->scan(I)I

    move-result v0

    .line 90
    .local v0, "result":I
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStScanFunctionSv;->judgedErrorment(I)V

    .line 95
    return-void
.end method
