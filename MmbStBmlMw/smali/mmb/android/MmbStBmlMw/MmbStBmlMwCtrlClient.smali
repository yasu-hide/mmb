.class public Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;
.super Ljava/lang/Object;
.source "MmbStBmlMwCtrlClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmbStBmlMwCtrlClient"


# instance fields
.field private log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

.field private mJniWrapper:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "MmbStBmlMwService_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    return-void
.end method


# virtual methods
.method public changeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    .prologue
    .line 131
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwCtrlClient"

    const-string v2, "changeDisp()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->changeDispJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V

    .line 133
    return-void
.end method

.method public native changeDispJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V
.end method

.method public delete()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwCtrlClient"

    const-string v2, "delete()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->deleteCtrlClientJni()V

    .line 74
    return-void
.end method

.method public native deleteCtrlClientJni()V
.end method

.method public getRenderSizeReq()Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    .locals 4

    .prologue
    .line 141
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v2, "MmbStBmlMwCtrlClient"

    const-string v3, "getRenderSizeReq()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;-><init>()V

    .line 143
    .local v0, "rendersize":Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
    invoke-virtual {p0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->getRenderSizeReqJni()Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;

    move-result-object v0

    .line 144
    return-object v0
.end method

.method public native getRenderSizeReqJni()Lmmb/android/MmbStBmlMw/MmbStBmlMwGetRenderSizeReplyInfo;
.end method

.method public initialize(Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;)Z
    .locals 3
    .param p1, "aListener"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    .prologue
    .line 57
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwCtrlClient"

    const-string v2, "initialize()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->mJniWrapper:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->mJniWrapper:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;

    .line 63
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->mJniWrapper:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->setListener(Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;)V

    .line 65
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->mJniWrapper:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;

    invoke-virtual {p0, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->initializeCtrlClientJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;)Z

    move-result v0

    return v0
.end method

.method public native initializeCtrlClientJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;)Z
.end method

.method public notifyKey(Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;)V
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;

    .prologue
    .line 82
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwCtrlClient"

    const-string v2, "notifyKey()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->notifyKeyJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;)V

    .line 84
    return-void
.end method

.method public native notifyKeyJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;)V
.end method

.method public notifySmoothDrawStop(Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;)V
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;

    .prologue
    .line 152
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwCtrlClient"

    const-string v2, "notifySmoothDrawStop()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->notifySmoothDrawStopJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;)V

    .line 154
    return-void
.end method

.method public native notifySmoothDrawStopJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwSmoothDrawStopNotifyInfo;)V
.end method

.method public relDisplay()Z
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwCtrlClient"

    const-string v2, "relDisplay()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->relDisplayJni()Z

    move-result v0

    return v0
.end method

.method public native relDisplayJni()Z
.end method

.method public replyFep(Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;)V
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;

    .prologue
    .line 162
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwCtrlClient"

    const-string v2, "replyFep()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;->mmbOutputStr:[B

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->replyFepJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;[B)V

    .line 164
    return-void
.end method

.method public native replyFepJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;[B)V
.end method

.method public replyPassword(Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;)V
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;

    .prologue
    .line 102
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwCtrlClient"

    const-string v2, "replyPassword()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;->mmbUserName:[B

    iget-object v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;->mmbPassword:[B

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->replyPasswordJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;[B[B)V

    .line 104
    return-void
.end method

.method public native replyPasswordJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;[B[B)V
.end method

.method public replyPermission(Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;)V
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;

    .prologue
    .line 92
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwCtrlClient"

    const-string v2, "replyPermission()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->replyPermissionJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;)V

    .line 94
    return-void
.end method

.method public native replyPermissionJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;)V
.end method

.method public setDisplay(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;)Z
    .locals 3
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;

    .prologue
    .line 113
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->log:Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;

    const-string v1, "MmbStBmlMwCtrlClient"

    const-string v2, "setDisplay()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlClient;->setDisplayJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;)Z

    move-result v0

    return v0
.end method

.method public native setDisplayJni(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;)Z
.end method
