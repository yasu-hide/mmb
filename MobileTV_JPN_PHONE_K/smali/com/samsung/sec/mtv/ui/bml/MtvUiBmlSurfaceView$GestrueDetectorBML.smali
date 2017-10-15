.class Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$GestrueDetectorBML;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MtvUiBmlSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestrueDetectorBML"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$GestrueDetectorBML;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 697
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, " BML onSingleTapConfirmed call..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
