.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;
.super Ljava/lang/Object;
.source "MmbStBmlMwCtrlClientWrapperSv.java"


# instance fields
.field private ctrl:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;

.field private ctrlListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

.field private isCtrlInitalized:Z


# direct methods
.method public constructor <init>(Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;)V
    .locals 1
    .param p1, "aCtrlListener"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->isCtrlInitalized:Z

    .line 47
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->ctrl:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->ctrlListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    .line 66
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->ctrlListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    .line 70
    return-void
.end method


# virtual methods
.method public changeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 403
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->ctrl:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->changeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V

    .line 411
    return-void
.end method

.method public checkInitalized()V
    .locals 2

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->isCtrlInitalized:Z

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    const-string v1, "MmbStBmlMwCtrlClientWrapperSv was not initialized."

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    return-void
.end method

.method public delete()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->isInitialize()Z

    move-result v0

    .line 170
    .local v0, "res":Z
    if-nez v0, :cond_0

    .line 189
    :goto_0
    return v1

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->ctrl:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;

    invoke-virtual {v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->delete()V

    .line 185
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->isCtrlInitalized:Z

    .line 189
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->isCtrlInitalized:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->ctrl:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;

    invoke-virtual {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->delete()V

    .line 101
    :cond_0
    return-void
.end method

.method public getRenderSizeReq()Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    .locals 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 434
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->ctrl:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;

    invoke-virtual {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->getRenderSizeReq()Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;

    move-result-object v0

    .line 439
    .local v0, "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    return-object v0
.end method

.method public initialize()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 120
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->isInitialize()Z

    move-result v0

    .line 121
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 122
    const-string v3, "MmbStBmlMwCtrlClient#initialize was called more once."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :goto_0
    return v1

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->ctrl:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->ctrlListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    invoke-virtual {v3, v4}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->initialize(Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;)Z

    move-result v0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->isCtrlInitalized:Z

    goto :goto_0

    :cond_1
    move v1, v2

    .line 148
    goto :goto_0
.end method

.method public isInitialize()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->isCtrlInitalized:Z

    return v0
.end method

.method public notifyKey(Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 253
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->ctrl:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->notifyKey(Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;)V

    .line 261
    return-void
.end method

.method public notifySmoothDrawStop(Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 462
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->ctrl:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->notifySmoothDrawStop(Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;)V

    .line 470
    return-void
.end method

.method relDisplay()Z
    .locals 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 375
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->ctrl:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;

    invoke-virtual {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->relDisplay()Z

    move-result v0

    .line 380
    .local v0, "ret":Z
    return v0
.end method

.method public replyFep(Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 492
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->ctrl:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->replyFep(Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;)V

    .line 500
    return-void
.end method

.method public replyPassword(Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 313
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->ctrl:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->replyPassword(Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;)V

    .line 321
    return-void
.end method

.method public replyPermission(Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 283
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->ctrl:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->replyPermission(Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;)V

    .line 291
    return-void
.end method

.method public setDisplay(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;)Z
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 344
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->ctrl:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->setDisplay(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;)Z

    move-result v0

    .line 349
    .local v0, "ret":Z
    return v0
.end method
