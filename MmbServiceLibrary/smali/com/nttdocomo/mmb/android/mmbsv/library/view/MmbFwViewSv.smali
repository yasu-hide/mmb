.class public Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;
.super Landroid/view/SurfaceView;
.source "MmbFwViewSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwZOrderedViewSv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method static setZOrderData(Landroid/view/SurfaceView;I)V
    .locals 1
    .param p0, "aView"    # Landroid/view/SurfaceView;
    .param p1, "aOrder"    # I

    .prologue
    const/4 v0, 0x1

    .line 127
    packed-switch p1, :pswitch_data_0

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 138
    :goto_0
    return-void

    .line 129
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    goto :goto_0

    .line 132
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setZOrder(I)V
    .locals 5
    .param p1, "aOrder"    # I

    .prologue
    .line 100
    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    if-eqz p1, :cond_0

    .line 101
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "aOrder is wrong."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 104
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 105
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "parent must be a ViewGroup instance"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v0, v2

    .line 107
    check-cast v0, Landroid/view/ViewGroup;

    .line 108
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 109
    .local v1, "index":I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 110
    invoke-static {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;->setZOrderData(Landroid/view/SurfaceView;I)V

    .line 111
    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 115
    return-void
.end method
