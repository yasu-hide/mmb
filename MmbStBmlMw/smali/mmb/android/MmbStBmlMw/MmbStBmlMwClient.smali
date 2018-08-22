.class public Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;
.super Ljava/lang/Object;
.source "MmbStBmlMwClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmbStBmlMwClient"


# instance fields
.field private log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

.field private mJniWrapper:Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "MmbStBmlMwService_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "delete()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->deleteClientJni()V

    .line 91
    return-void
.end method

.method public native deleteClientJni()V
.end method

.method public endReq()Z
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "endReq()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->endReqJni()Z

    move-result v0

    return v0
.end method

.method public native endReqJni()Z
.end method

.method public getLinkState()I
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "getLinkState()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->getLinkStateJni()I

    move-result v0

    return v0
.end method

.method public native getLinkStateJni()I
.end method

.method public initialize(Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;)Z
    .locals 3
    .param p1, "aListener"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    .prologue
    .line 74
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "initialize()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->mJniWrapper:Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->mJniWrapper:Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;

    .line 80
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->mJniWrapper:Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->setListener(Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;)V

    .line 82
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->mJniWrapper:Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;

    invoke-virtual {p0, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->initializeClientJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;)Z

    move-result v0

    return v0
.end method

.method public native initializeClientJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;)Z
.end method

.method public notifyHttpData(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;)V
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;

    .prologue
    .line 171
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "notifyHttpData()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;->mmbBody:[B

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->notifyHttpDataJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;[B)V

    .line 173
    return-void
.end method

.method public native notifyHttpDataJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;[B)V
.end method

.method public notifyReturnUri(Lmmb/android/MmbStBmlMw/MmbStBmlMwReturnUriNotifyInfo;)V
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwReturnUriNotifyInfo;

    .prologue
    .line 362
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "notifyReturnUri()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwReturnUriNotifyInfo;->mmbReturnUri:[B

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->notifyReturnUriJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwReturnUriNotifyInfo;[B)V

    .line 364
    return-void
.end method

.method public native notifyReturnUriJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwReturnUriNotifyInfo;[B)V
.end method

.method public pauseReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPauseReqInfo;)Z
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPauseReqInfo;

    .prologue
    .line 120
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "pauseReq()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->pauseReqJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwPauseReqInfo;)Z

    move-result v0

    return v0
.end method

.method public native pauseReqJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwPauseReqInfo;)Z
.end method

.method public replyBrowser(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyBrowser()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyBrowserJni(Z)V

    .line 223
    return-void
.end method

.method public native replyBrowserJni(Z)V
.end method

.method public replyCall(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyCall()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyCallJni(Z)V

    .line 203
    return-void
.end method

.method public native replyCallJni(Z)V
.end method

.method public replyCheckStrageStatus(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 253
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyCheckStrageStatus()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyCheckStrageStatusJni(Z)V

    .line 255
    return-void
.end method

.method public native replyCheckStrageStatusJni(Z)V
.end method

.method public replyEpgTune(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyEpgTune()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyEpgTuneJni(Z)V

    .line 295
    return-void
.end method

.method public native replyEpgTuneJni(Z)V
.end method

.method public replyGps(ZLmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;)V
    .locals 3
    .param p1, "aResult"    # Z
    .param p2, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;

    .prologue
    .line 232
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyGps()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    if-nez p2, :cond_0

    new-instance p2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;

    .end local p2    # "aInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    invoke-direct {p2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;-><init>()V

    .line 234
    .restart local p2    # "aInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    :cond_0
    iget-object v0, p2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbProvider:[B

    invoke-virtual {p0, p1, p2, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyGpsJni(ZLmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;[B)V

    .line 235
    return-void
.end method

.method public native replyGpsJni(ZLmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;[B)V
.end method

.method public replyHttpStart(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;)V
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;

    .prologue
    .line 161
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyHttpStart()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbRpHeaders:[B

    iget-object v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbRedirectUri:[B

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyHttpStartJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;[B[B)V

    .line 163
    return-void
.end method

.method public native replyHttpStartJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;[B[B)V
.end method

.method public replyIsContentsStored(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 283
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyStoreCancelReserve()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyIsContentsStoredJni(Z)V

    .line 285
    return-void
.end method

.method public native replyIsContentsStoredJni(Z)V
.end method

.method public replyLaunchContent(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 243
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyLaunchContent()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyLaunchContentJni(Z)V

    .line 245
    return-void
.end method

.method public native replyLaunchContentJni(Z)V
.end method

.method public replyMailSend(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyMailSend()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyMailSendJni(Z)V

    .line 183
    return-void
.end method

.method public native replyMailSendJni(Z)V
.end method

.method public replyNvramRead(ZLmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;)V
    .locals 3
    .param p1, "aResult"    # Z
    .param p2, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;

    .prologue
    .line 150
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyNvramRead()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    if-nez p2, :cond_0

    new-instance p2, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;

    .end local p2    # "aInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    invoke-direct {p2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;-><init>()V

    .line 152
    .restart local p2    # "aInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    :cond_0
    iget-object v0, p2, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;->mmbSaveData:[B

    invoke-virtual {p0, p1, p2, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyNvramReadJni(ZLmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;[B)V

    .line 153
    return-void
.end method

.method public native replyNvramReadJni(ZLmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;[B)V
.end method

.method public replyNvramWrite(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyNvramWrite()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyNvramWriteJni(Z)V

    .line 141
    return-void
.end method

.method public native replyNvramWriteJni(Z)V
.end method

.method public replyPhonebook(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 191
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyPhonebook()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyPhonebookJni(Z)V

    .line 193
    return-void
.end method

.method public native replyPhonebookJni(Z)V
.end method

.method public replyPictureSave(Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;)V
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;

    .prologue
    .line 323
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyPictureSave()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;->mmbNewFileName:[B

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyPictureSaveJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;[B)V

    .line 325
    return-void
.end method

.method public native replyPictureSaveJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;[B)V
.end method

.method public replySchedule(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 211
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replySchedule()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyScheduleJni(Z)V

    .line 213
    return-void
.end method

.method public native replyScheduleJni(Z)V
.end method

.method public replyStartFullDisp(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 303
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyStartFullDisp()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyStartFullDispJni(Z)V

    .line 305
    return-void
.end method

.method public native replyStartFullDispJni(Z)V
.end method

.method public replyStopFullDisp(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 313
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyStopFullDisp()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyStopFullDispJni(Z)V

    .line 315
    return-void
.end method

.method public native replyStopFullDispJni(Z)V
.end method

.method public replyStoreCancelReserve(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 273
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyStoreCancelReserve()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyStoreCancelReserveJni(Z)V

    .line 275
    return-void
.end method

.method public native replyStoreCancelReserveJni(Z)V
.end method

.method public replyStoreReserve(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 263
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyStoreReserve()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyStoreReserveJni(Z)V

    .line 265
    return-void
.end method

.method public native replyStoreReserveJni(Z)V
.end method

.method public replyTvLinkEnrol(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 343
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyTvLinkEnrol()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyTvLinkEnrolJni(Z)V

    .line 345
    return-void
.end method

.method public native replyTvLinkEnrolJni(Z)V
.end method

.method public replyTvLinkStart(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 333
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "replyTvLinkStart()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->replyTvLinkStartJni(Z)V

    .line 335
    return-void
.end method

.method public native replyTvLinkStartJni(Z)V
.end method

.method public resumeReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwResumeReqInfo;)Z
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwResumeReqInfo;

    .prologue
    .line 130
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "resumeReq()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->resumeReqJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwResumeReqInfo;)Z

    move-result v0

    return v0
.end method

.method public native resumeReqJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwResumeReqInfo;)Z
.end method

.method public startReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;)V
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;

    .prologue
    .line 100
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwClient"

    const-string v2, "startReq()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwClient;->startReqJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;)V

    .line 102
    return-void
.end method

.method public native startReqJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartReqInfo;)V
.end method
