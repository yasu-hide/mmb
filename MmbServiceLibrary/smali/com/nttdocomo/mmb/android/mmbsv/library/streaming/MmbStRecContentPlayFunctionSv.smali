.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;
.super Ljava/lang/Object;
.source "MmbStRecContentPlayFunctionSv.java"


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

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .line 54
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .line 58
    return-void
.end method


# virtual methods
.method protected fastForwardPlay()I
    .locals 2

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 264
    .local v0, "lRet":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->fastForwardPlay()I

    move-result v0

    .line 272
    return v0
.end method

.method protected getCurrentTime()J
    .locals 3

    .prologue
    .line 396
    const-wide/16 v0, 0x0

    .line 402
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->getCurrentTime()J

    move-result-wide v0

    .line 410
    return-wide v0
.end method

.method protected getDuration()J
    .locals 3

    .prologue
    .line 364
    const-wide/16 v0, 0x0

    .line 370
    .local v0, "totalTime":J
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->getDuration()J

    move-result-wide v0

    .line 378
    return-wide v0
.end method

.method protected isResumeInfoExist(I)Z
    .locals 2
    .param p1, "aPrgNo"    # I

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 436
    .local v0, "hasResumeInfo":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->isResumeInfoExist(I)Z

    move-result v0

    .line 444
    return v0
.end method

.method protected pausePlay()I
    .locals 2

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 229
    .local v0, "lRet":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->pausePlay()I

    move-result v0

    .line 237
    return v0
.end method

.method protected prepPlay(I)I
    .locals 2
    .param p1, "aPrgNo"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 86
    .local v0, "lRet":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->prepPlay(I)I

    move-result v0

    .line 94
    return v0
.end method

.method protected resume()I
    .locals 2

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 194
    .local v0, "lRet":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->resume()I

    move-result v0

    .line 202
    return v0
.end method

.method protected rewindPlay()I
    .locals 2

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 299
    .local v0, "lRet":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->rewindPlay()I

    move-result v0

    .line 307
    return v0
.end method

.method protected seekTo(J)I
    .locals 3
    .param p1, "aMsec"    # J

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 336
    .local v0, "lRet":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->seekTo(J)I

    move-result v0

    .line 344
    return v0
.end method

.method protected setResumePlaying(Z)V
    .locals 1
    .param p1, "aResumePlaying"    # Z

    .prologue
    .line 469
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->setResumePlaying(Z)V

    .line 476
    return-void
.end method

.method protected startPlay(I)I
    .locals 2
    .param p1, "aUserParam"    # I

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 123
    .local v0, "lRet":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->startPlay(I)I

    move-result v0

    .line 131
    return v0
.end method

.method protected stopPlay()I
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 158
    .local v0, "lRet":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->stopPlay()I

    move-result v0

    .line 166
    return v0
.end method
