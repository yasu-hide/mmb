.class public Lcom/access/bml/BMLNativeView;
.super Landroid/view/SurfaceView;
.source "BMLNativeView.java"


# instance fields
.field public lastX:F

.field public lastY:F

.field public m_engine:Lcom/access/bml/BMLNativeCallbacks;

.field public screenHeight:I

.field public screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 22
    const/16 v0, 0x438

    iput v0, p0, Lcom/access/bml/BMLNativeView;->screenWidth:I

    .line 24
    const/16 v0, 0x500

    iput v0, p0, Lcom/access/bml/BMLNativeView;->screenHeight:I

    .line 29
    iput v1, p0, Lcom/access/bml/BMLNativeView;->lastX:F

    .line 31
    iput v1, p0, Lcom/access/bml/BMLNativeView;->lastY:F

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/access/bml/BMLNativeView;->m_engine:Lcom/access/bml/BMLNativeCallbacks;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/16 v0, 0x438

    iput v0, p0, Lcom/access/bml/BMLNativeView;->screenWidth:I

    .line 24
    const/16 v0, 0x500

    iput v0, p0, Lcom/access/bml/BMLNativeView;->screenHeight:I

    .line 29
    iput v1, p0, Lcom/access/bml/BMLNativeView;->lastX:F

    .line 31
    iput v1, p0, Lcom/access/bml/BMLNativeView;->lastY:F

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/access/bml/BMLNativeView;->m_engine:Lcom/access/bml/BMLNativeCallbacks;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/16 v0, 0x438

    iput v0, p0, Lcom/access/bml/BMLNativeView;->screenWidth:I

    .line 24
    const/16 v0, 0x500

    iput v0, p0, Lcom/access/bml/BMLNativeView;->screenHeight:I

    .line 29
    iput v1, p0, Lcom/access/bml/BMLNativeView;->lastX:F

    .line 31
    iput v1, p0, Lcom/access/bml/BMLNativeView;->lastY:F

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/access/bml/BMLNativeView;->m_engine:Lcom/access/bml/BMLNativeCallbacks;

    .line 78
    return-void
.end method


# virtual methods
.method public checkCanvasValid()Z
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/access/bml/BMLNativeView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 132
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/access/bml/BMLNativeView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 134
    const/4 v1, 0x1

    .line 136
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastMouseX()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/access/bml/BMLNativeView;->lastX:F

    float-to-int v0, v0

    return v0
.end method

.method public getLastMouseY()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/access/bml/BMLNativeView;->lastY:F

    float-to-int v0, v0

    return v0
.end method

.method public get_scr_height()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/access/bml/BMLNativeView;->screenHeight:I

    return v0
.end method

.method public get_scr_width()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/access/bml/BMLNativeView;->screenWidth:I

    return v0
.end method

.method public initEngine(Lcom/access/bml/BMLNativeCallbacks;)V
    .locals 0
    .param p1, "engine"    # Lcom/access/bml/BMLNativeCallbacks;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/access/bml/BMLNativeView;->m_engine:Lcom/access/bml/BMLNativeCallbacks;

    .line 45
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    return v4

    .line 52
    :pswitch_0
    const/4 v0, 0x0

    .line 63
    :goto_1
    iget-object v1, p0, Lcom/access/bml/BMLNativeView;->m_engine:Lcom/access/bml/BMLNativeCallbacks;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/access/bml/BMLNativeView;->m_engine:Lcom/access/bml/BMLNativeCallbacks;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/access/bml/BMLNativeCallbacks;->Browser_processMouseEvent(III)V

    goto :goto_0

    .line 55
    :pswitch_1
    const/4 v0, 0x1

    .line 56
    goto :goto_1

    .line 58
    :pswitch_2
    const/4 v0, 0x2

    .line 59
    goto :goto_1

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBrowserHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/access/bml/BMLNativeView;->screenHeight:I

    .line 100
    return-void
.end method

.method public setBrowserWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/access/bml/BMLNativeView;->screenWidth:I

    .line 91
    return-void
.end method

.method public updateCanvasColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/access/bml/BMLNativeView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 117
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 119
    iget-object v1, p0, Lcom/access/bml/BMLNativeView;->m_engine:Lcom/access/bml/BMLNativeCallbacks;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/access/bml/BMLNativeView;->m_engine:Lcom/access/bml/BMLNativeCallbacks;

    invoke-virtual {v1, p1}, Lcom/access/bml/BMLNativeCallbacks;->Browser_UpdateCanvasColor(I)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/access/bml/BMLNativeView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 124
    :cond_1
    return-void
.end method
