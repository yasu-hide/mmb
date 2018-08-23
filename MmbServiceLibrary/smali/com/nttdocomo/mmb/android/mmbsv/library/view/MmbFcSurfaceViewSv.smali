.class public Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;
.source "MmbFcSurfaceViewSv.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private fcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerSv;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->init(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->init(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 129
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 130
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 135
    return-void
.end method

.method private setSurfaceHolder(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aChangeFlg"    # Z

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 156
    .local v0, "holder":Landroid/view/SurfaceHolder;
    if-nez v0, :cond_0

    .line 196
    .end local p1    # "aContext":Landroid/content/Context;
    :goto_0
    return-void

    .line 163
    .restart local p1    # "aContext":Landroid/content/Context;
    :cond_0
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 169
    check-cast p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;

    .end local p1    # "aContext":Landroid/content/Context;
    invoke-interface {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    .line 179
    .local v1, "servicecontext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getFcPlayer()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerSv;

    move-result-object v2

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->fcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerSv;

    .line 188
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->fcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerSv;

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v2, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setVideoDisplay(Landroid/view/SurfaceHolder;Z)V

    goto :goto_0
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "aHasWindowFocus"    # Z

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;->onWindowFocusChanged(Z)V

    .line 291
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->fcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerSv;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->fcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerSv;

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->drawLastFrame()V

    .line 307
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "aFormat"    # I
    .param p3, "aWidth"    # I
    .param p4, "aHeight"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->setSurfaceHolder(Landroid/content/Context;Z)V

    .line 227
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->setSurfaceHolder(Landroid/content/Context;Z)V

    .line 255
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 273
    return-void
.end method
