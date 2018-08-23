.class public Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;
.super Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;
.source "MmbFcBrowMwSeekbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method


# virtual methods
.method public bridge synthetic getPaddingLeft()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPaddingRight()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method onProgressRefresh(FZ)V
    .locals 2
    .param p1, "aScale"    # F
    .param p2, "aFromUser"    # Z

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->onProgressRefresh(FZ)V

    .line 82
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->mOnSeekBarChangeListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->mOnSeekBarChangeListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;->onProgressChanged(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;IZ)V

    .line 85
    :cond_0
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->mOnSeekBarChangeListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->mOnSeekBarChangeListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;

    invoke-interface {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;->onStartTrackingTouch(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;)V

    .line 103
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->mOnSeekBarChangeListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->mOnSeekBarChangeListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;

    invoke-interface {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;->onStopTrackingTouch(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;)V

    .line 110
    :cond_0
    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setMax(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 28
    invoke-super {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAbsSeekbar;->setMax(I)V

    return-void
.end method

.method public setOnSeekBarChangeListener(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;

    .prologue
    .line 95
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;->mOnSeekBarChangeListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;

    .line 96
    return-void
.end method
