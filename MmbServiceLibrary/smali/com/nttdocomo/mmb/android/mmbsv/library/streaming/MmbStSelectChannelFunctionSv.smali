.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;
.super Ljava/lang/Object;
.source "MmbStSelectChannelFunctionSv.java"


# instance fields
.field private mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;


# direct methods
.method constructor <init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;)V
    .locals 1
    .param p1, "aMwInstance"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .line 56
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .line 60
    return-void
.end method

.method private judgedErrorment(I)V
    .locals 5
    .param p1, "aResult"    # I

    .prologue
    const/4 v4, 0x1

    .line 263
    if-eqz p1, :cond_0

    .line 264
    const-string v0, "error(%d)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v0, v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v0

    .line 271
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCnValue()I
    .locals 2

    .prologue
    .line 230
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->getCnValue()I

    move-result v0

    .line 235
    .local v0, "cnvalue":I
    if-gez v0, :cond_0

    .line 237
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->judgedErrorment(I)V

    .line 243
    :cond_0
    return v0
.end method

.method protected start(II)V
    .locals 3
    .param p1, "aServiceId"    # I
    .param p2, "aUserParam"    # I

    .prologue
    const/4 v2, -0x1

    .line 85
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, v2, v2, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->startSt(IIII)I

    move-result v0

    .line 91
    .local v0, "result":I
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->judgedErrorment(I)V

    .line 97
    return-void
.end method

.method protected stop()V
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->stopSt()I

    move-result v0

    .line 125
    .local v0, "result":I
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->judgedErrorment(I)V

    .line 130
    return-void
.end method

.method protected tune(II)I
    .locals 5
    .param p1, "aServiceId"    # I
    .param p2, "aUserParam"    # I

    .prologue
    const/4 v4, -0x3

    const/4 v3, -0x1

    .line 151
    const/4 v1, 0x0

    .line 156
    .local v1, "runtype":I
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2, v3, v3, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->selectCh(IIII)I

    move-result v0

    .line 161
    .local v0, "result":I
    if-ne v4, v0, :cond_2

    .line 167
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->aVInitialize()I

    move-result v0

    .line 171
    const/16 v2, -0x2004

    if-eq v0, v2, :cond_0

    .line 173
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->judgedErrorment(I)V

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->captionInit()I

    move-result v0

    .line 185
    if-eq v0, v4, :cond_1

    .line 187
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->judgedErrorment(I)V

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2, v3, v3, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->startSt(IIII)I

    move-result v0

    .line 198
    const/4 v1, -0x1

    .line 202
    :cond_2
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->judgedErrorment(I)V

    .line 207
    return v1
.end method
