.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnDoubleTapListener;
.super Ljava/lang/Object;
.source "MmbFcBrowMwView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TOnDoubleTapListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;


# direct methods
.method private constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V
    .locals 0

    .prologue
    .line 4392
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnDoubleTapListener;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;)V
    .locals 0
    .param p1, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p2, "x1"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;

    .prologue
    .line 4392
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnDoubleTapListener;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4409
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnDoubleTapListener;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/16 v1, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IFFFFFF)Z

    .line 4410
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4403
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnDoubleTapListener;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/16 v1, 0x8

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IFFFFFF)Z

    .line 4404
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4396
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnDoubleTapListener;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v1, 0x7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IFFFFFF)Z

    .line 4397
    const/4 v0, 0x1

    return v0
.end method
