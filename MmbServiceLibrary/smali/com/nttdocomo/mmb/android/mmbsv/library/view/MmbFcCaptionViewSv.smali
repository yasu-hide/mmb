.class public Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;
.source "MmbFcCaptionViewSv.java"

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
    .line 101
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->init(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->init(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 134
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 135
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 136
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 141
    return-void
.end method

.method private setSurfaceHolder(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aChangeFlg"    # Z

    .prologue
    const/4 v5, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 163
    .local v1, "holder":Landroid/view/SurfaceHolder;
    if-nez v1, :cond_0

    .line 217
    .end local p1    # "aContext":Landroid/content/Context;
    :goto_0
    return-void

    .line 169
    .restart local p1    # "aContext":Landroid/content/Context;
    :cond_0
    const/4 v4, -0x3

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 170
    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 176
    check-cast p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;

    .end local p1    # "aContext":Landroid/content/Context;
    invoke-interface {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v2

    .line 186
    .local v2, "servicecontext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getFcPlayer()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerSv;

    move-result-object v4

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->fcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerSv;

    .line 191
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    .line 192
    .local v3, "surface":Landroid/view/Surface;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 194
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_2

    .line 196
    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 209
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->fcPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerSv;

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v4, v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setCaptionDisplay(Landroid/view/SurfaceHolder;Z)V

    goto :goto_0

    .line 198
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v4

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v4

    .line 201
    :cond_2
    const-string v4, "canvas null"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "aFormat"    # I
    .param p3, "aWidth"    # I
    .param p4, "aHeight"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->setSurfaceHolder(Landroid/content/Context;Z)V

    .line 248
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcCaptionViewSv;->setSurfaceHolder(Landroid/content/Context;Z)V

    .line 276
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 294
    return-void
.end method
