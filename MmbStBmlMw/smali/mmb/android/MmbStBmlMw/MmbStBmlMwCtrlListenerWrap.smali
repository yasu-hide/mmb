.class public Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;
.super Ljava/lang/Object;
.source "MmbStBmlMwCtrlListenerWrap.java"


# instance fields
.field private mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeDispReply(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    invoke-interface {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;->onChangeDispReply(Z)V

    goto :goto_0
.end method

.method public onDispIcon(IZ)V
    .locals 2
    .param p1, "aIconKind"    # I
    .param p2, "aIsDisp"    # Z

    .prologue
    .line 124
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    if-nez v1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;-><init>()V

    .line 128
    .local v0, "dispIconNotifyInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;
    iput p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;->mmbIconKind:I

    .line 129
    iput-boolean p2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;->mmbIsDisp:Z

    .line 131
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;->onDispIcon(Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;)V

    goto :goto_0
.end method

.method public onEndFepReq()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    invoke-interface {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;->onEndFepReq()V

    goto :goto_0
.end method

.method public onPasswordReq(I)V
    .locals 2
    .param p1, "aBmlParam"    # I

    .prologue
    .line 46
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    if-nez v1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;-><init>()V

    .line 49
    .local v0, "passwordReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;
    iput p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;->mmbBmlParam:I

    .line 51
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;->onPasswordReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;)V

    goto :goto_0
.end method

.method public onPermissionReq(II)V
    .locals 2
    .param p1, "aPermission"    # I
    .param p2, "aBmlParam"    # I

    .prologue
    .line 34
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    if-nez v1, :cond_0

    .line 41
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;-><init>()V

    .line 37
    .local v0, "permissionReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;
    iput p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;->mmbPermission:I

    .line 38
    iput p2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;->mmbBmlParam:I

    .line 40
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;->onPermissionReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;)V

    goto :goto_0
.end method

.method public onRenderSizeUpdateReq(IIIII)V
    .locals 2
    .param p1, "aX"    # I
    .param p2, "aY"    # I
    .param p3, "aWidth"    # I
    .param p4, "aHeight"    # I
    .param p5, "aUserdata"    # I

    .prologue
    .line 65
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    if-nez v1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;-><init>()V

    .line 68
    .local v0, "renderSizeUpdateReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;
    new-instance v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    invoke-direct {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;-><init>()V

    iput-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    .line 69
    new-instance v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    invoke-direct {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;-><init>()V

    iput-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    .line 71
    iget-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iput p1, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbX:I

    .line 72
    iget-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iput p2, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbY:I

    .line 73
    iget-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iput p3, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbWidth:I

    .line 74
    iget-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iput p4, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbHeight:I

    .line 75
    iput p5, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;->mmbUserdata:I

    .line 77
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;->onRenderSizeUpdateReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;)V

    goto :goto_0
.end method

.method public onScrollReq(IIIII)V
    .locals 2
    .param p1, "aX"    # I
    .param p2, "aY"    # I
    .param p3, "aWidth"    # I
    .param p4, "aHeight"    # I
    .param p5, "aUserdata"    # I

    .prologue
    .line 83
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    if-nez v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;-><init>()V

    .line 86
    .local v0, "scrollReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;
    new-instance v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    invoke-direct {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;-><init>()V

    iput-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    .line 87
    new-instance v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    invoke-direct {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;-><init>()V

    iput-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    .line 89
    iget-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iput p1, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbX:I

    .line 90
    iget-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iput p2, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbY:I

    .line 91
    iget-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iput p3, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbWidth:I

    .line 92
    iget-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iput p4, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbHeight:I

    .line 93
    iput p5, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;->mmbUserdata:I

    .line 95
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;->onScrollReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;)V

    goto :goto_0
.end method

.method public onStartFepReq(ILjava/lang/String;IZ)V
    .locals 2
    .param p1, "aInputMode"    # I
    .param p2, "aInitStr"    # Ljava/lang/String;
    .param p3, "aStrMax"    # I
    .param p4, "aIsPassword"    # Z

    .prologue
    .line 101
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    if-nez v1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;-><init>()V

    .line 105
    .local v0, "startFepReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;
    iput p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;->mmbInputMode:I

    .line 106
    iput-object p2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;->mmbInitStr:Ljava/lang/String;

    .line 107
    iput p3, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;->mmbStrMax:I

    .line 108
    iput-boolean p4, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;->mmbIsPassword:Z

    .line 110
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;->onStartFepReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;)V

    goto :goto_0
.end method

.method public setListener(Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    .prologue
    .line 28
    iput-object p1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;

    .line 29
    return-void
.end method
