.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$TOnGestureListener;
.super Ljava/lang/Object;
.source "MmbFcBrowMwVideoView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TOnGestureListener"
.end annotation


# instance fields
.field final synthetic this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;


# direct methods
.method private constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)V
    .locals 0

    .prologue
    .line 1804
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$TOnGestureListener;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$1;)V
    .locals 0
    .param p1, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;
    .param p2, "x1"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$1;

    .prologue
    .line 1804
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$TOnGestureListener;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 1830
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "aEvent1"    # Landroid/view/MotionEvent;
    .param p2, "aEvent2"    # Landroid/view/MotionEvent;
    .param p3, "aVelocityX"    # F
    .param p4, "aVelocityY"    # F

    .prologue
    .line 1825
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 1821
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "aEvent1"    # Landroid/view/MotionEvent;
    .param p2, "aEvent2"    # Landroid/view/MotionEvent;
    .param p3, "aDistanceX"    # F
    .param p4, "aDistanceY"    # F

    .prologue
    .line 1816
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 1812
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 1807
    const/4 v0, 0x0

    return v0
.end method
