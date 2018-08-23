.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnGestureListener;
.super Ljava/lang/Object;
.source "MmbFcBrowMwView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TOnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;


# direct methods
.method private constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V
    .locals 0

    .prologue
    .line 4356
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnGestureListener;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;)V
    .locals 0
    .param p1, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p2, "x1"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;

    .prologue
    .line 4356
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnGestureListener;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4387
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnGestureListener;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v1, 0x6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IFFFFFF)Z

    .line 4388
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "aEvent1"    # Landroid/view/MotionEvent;
    .param p2, "aEvent2"    # Landroid/view/MotionEvent;
    .param p3, "aVelocityX"    # F
    .param p4, "aVelocityY"    # F

    .prologue
    const/4 v5, 0x0

    .line 4381
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnGestureListener;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v1, 0x5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IFFFFFF)Z

    .line 4382
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4376
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnGestureListener;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v1, 0x4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IFFFFFF)Z

    .line 4377
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "aEvent1"    # Landroid/view/MotionEvent;
    .param p2, "aEvent2"    # Landroid/view/MotionEvent;
    .param p3, "aDistanceX"    # F
    .param p4, "aDistanceY"    # F

    .prologue
    const/4 v5, 0x0

    .line 4370
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnGestureListener;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v1, 0x3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IFFFFFF)Z

    .line 4371
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4365
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnGestureListener;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v1, 0x2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IFFFFFF)Z

    .line 4366
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4359
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnGestureListener;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IFFFFFF)Z

    .line 4360
    return v1
.end method
