.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;
.super Ljava/lang/Object;
.source "MmbStBmlMwClientWrapperSv.java"


# instance fields
.field private client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

.field private clientListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

.field private isClientInitalized:Z


# direct methods
.method public constructor <init>(Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;)V
    .locals 1
    .param p1, "aClentListener"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->isClientInitalized:Z

    .line 48
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->clientListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    .line 66
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->clientListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    .line 70
    return-void
.end method


# virtual methods
.method public checkInitialize()V
    .locals 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->isClientInitalized:Z

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    const-string v1, "MmbStBmlMwClientWrapperSv was not initialized."

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    return-void
.end method

.method public delete()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->isInitialize()Z

    move-result v0

    .line 214
    .local v0, "res":Z
    if-nez v0, :cond_0

    .line 234
    :goto_0
    return v1

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->delete()V

    .line 230
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->isClientInitalized:Z

    .line 234
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public endReq()Z
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 290
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->endReq()Z

    move-result v0

    .line 295
    .local v0, "ret":Z
    return v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->isClientInitalized:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->delete()V

    .line 103
    :cond_0
    return-void
.end method

.method public getLinkState()I
    .locals 2

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 1099
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->getLinkState()I

    move-result v0

    .line 1104
    .local v0, "ret":I
    return v0
.end method

.method public initialize()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 163
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->isInitialize()Z

    move-result v0

    .line 164
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 165
    const-string v3, "MmbStBmlMwClient#initialize was called more once."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :goto_0
    return v1

    .line 176
    :cond_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->clientListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-virtual {v3, v4}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->initialize(Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;)Z

    move-result v0

    .line 181
    if-eqz v0, :cond_1

    .line 182
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->isClientInitalized:Z

    goto :goto_0

    :cond_1
    move v1, v2

    .line 191
    goto :goto_0
.end method

.method public isInitialize()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->isClientInitalized:Z

    return v0
.end method

.method public notifyHttpData(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;

    .prologue
    .line 496
    if-eqz p1, :cond_0

    .line 500
    iget-object v0, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;->mmbBody:[B

    if-nez v0, :cond_0

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 522
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->notifyHttpData(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;)V

    .line 530
    return-void
.end method

.method public notifyReturnUri(Lmmb/android/MmbStBmlMw/MmbStBmlMwReturnUriNotifyInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwReturnUriNotifyInfo;

    .prologue
    .line 1121
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 1127
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->notifyReturnUri(Lmmb/android/MmbStBmlMw/MmbStBmlMwReturnUriNotifyInfo;)V

    .line 1135
    return-void
.end method

.method public pauseReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPauseReqInfo;)Z
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPauseReqInfo;

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 321
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->pauseReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPauseReqInfo;)Z

    move-result v0

    .line 326
    .local v0, "ret":Z
    return v0
.end method

.method public replyBrowser(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 682
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyBrowser(Z)V

    .line 690
    return-void
.end method

.method public replyCall(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 618
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyCall(Z)V

    .line 626
    return-void
.end method

.method public replyCheckStrageStatus(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 779
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyCheckStrageStatus(Z)V

    .line 787
    return-void
.end method

.method public replyEpgTune(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 907
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyEpgTune(Z)V

    .line 915
    return-void
.end method

.method public replyGps(ZLmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;)V
    .locals 1
    .param p1, "aResult"    # Z
    .param p2, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 715
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1, p2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyGps(ZLmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;)V

    .line 723
    return-void
.end method

.method public replyHttpStart(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;

    .prologue
    .line 438
    if-eqz p1, :cond_1

    .line 442
    iget-object v0, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbRpHeaders:[B

    if-nez v0, :cond_0

    .line 455
    :cond_0
    iget-object v0, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbRedirectUri:[B

    if-nez v0, :cond_1

    .line 467
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 473
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyHttpStart(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;)V

    .line 481
    return-void
.end method

.method public replyIsContentsStored(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 875
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyIsContentsStored(Z)V

    .line 883
    return-void
.end method

.method public replyLaunchContent(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 747
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyLaunchContent(Z)V

    .line 755
    return-void
.end method

.method public replyMailSend(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 554
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyMailSend(Z)V

    .line 562
    return-void
.end method

.method public replyNvramRead(ZLmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;)V
    .locals 1
    .param p1, "aResult"    # Z
    .param p2, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 415
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1, p2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyNvramRead(ZLmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;)V

    .line 423
    return-void
.end method

.method public replyNvramWrite(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 382
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyNvramWrite(Z)V

    .line 390
    return-void
.end method

.method public replyPhonebook(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 586
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyPhonebook(Z)V

    .line 594
    return-void
.end method

.method public replyPictureSave(Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 1001
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyPictureSave(Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;)V

    .line 1009
    return-void
.end method

.method public replySchedule(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 650
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replySchedule(Z)V

    .line 658
    return-void
.end method

.method public replyStartFullDisp(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 939
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyStartFullDisp(Z)V

    .line 947
    return-void
.end method

.method public replyStopFullDisp(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 971
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyStopFullDisp(Z)V

    .line 979
    return-void
.end method

.method public replyStoreCancelReserve(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 843
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyStoreCancelReserve(Z)V

    .line 851
    return-void
.end method

.method public replyStoreReserve(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 811
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyStoreReserve(Z)V

    .line 819
    return-void
.end method

.method public replyTvLinkEnrol(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 1065
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyTvLinkEnrol(Z)V

    .line 1073
    return-void
.end method

.method public replyTvLinkStart(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 1027
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 1033
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyTvLinkStart(Z)V

    .line 1041
    return-void
.end method

.method public resumeReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwResumeReqInfo;)Z
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwResumeReqInfo;

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 352
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->resumeReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwResumeReqInfo;)Z

    move-result v0

    .line 357
    .local v0, "ret":Z
    return v0
.end method

.method public startReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->checkInitialize()V

    .line 257
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->client:Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->startReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;)V

    .line 265
    return-void
.end method
