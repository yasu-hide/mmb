.class Lcom/sec/android/app/minimode/MiniModeService$8;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->endDrag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$8;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 871
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    .line 872
    .local v0, "pos":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$8;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v1, v1, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 873
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$8;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v1, v1, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 874
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$8;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService$8;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v2, v2, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 875
    return-void
.end method
