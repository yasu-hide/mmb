.class public Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;
.super Landroid/view/SurfaceView;
.source "MtvSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvSurfaceView"


# instance fields
.field private mtvSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;->mtvSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 30
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;->mtvSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 31
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;->mtvSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;->mtvSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 30
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;->mtvSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 31
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;->mtvSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;->mtvSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 30
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;->mtvSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 31
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;->mtvSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 27
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 36
    const-string v0, "MtvSurfaceView"

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 40
    const-string v2, "MtvSurfaceView"

    const-string v3, "surfaceCreated"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    .line 42
    .local v0, "mContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->enable()V

    .line 45
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v1

    .line 46
    .local v1, "mVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    if-eqz v1, :cond_0

    .line 47
    invoke-interface {v1, p0}, Landroid/broadcast/IMtvOneSegVideoControl;->registerSurface(Landroid/view/SurfaceView;)Z

    .line 49
    .end local v1    # "mVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 52
    const-string v2, "MtvSurfaceView"

    const-string v3, "surfaceDestroyed"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    .line 54
    .local v0, "mContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->enable()V

    .line 57
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v1

    .line 58
    .local v1, "mVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    if-eqz v1, :cond_0

    .line 59
    invoke-interface {v1, p0}, Landroid/broadcast/IMtvOneSegVideoControl;->unregisterSurface(Landroid/view/SurfaceView;)V

    .line 61
    .end local v1    # "mVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    :cond_0
    return-void
.end method
