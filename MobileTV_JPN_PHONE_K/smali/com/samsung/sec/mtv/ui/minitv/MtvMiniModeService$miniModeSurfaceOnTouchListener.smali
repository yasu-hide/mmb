.class Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$miniModeSurfaceOnTouchListener;
.super Lcom/sec/android/app/minimode/MiniModeService$TouchListener;
.source "MtvMiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "miniModeSurfaceOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V
    .locals 0

    .prologue
    .line 856
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$miniModeSurfaceOnTouchListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-direct {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 861
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$miniModeSurfaceOnTouchListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1700(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 894
    :cond_0
    :goto_0
    return v1

    .line 865
    :cond_1
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$miniModeSurfaceOnTouchListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2000(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 866
    goto :goto_0

    .line 868
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 871
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$miniModeSurfaceOnTouchListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2700(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/view/ScaleGestureDetector;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 872
    .local v1, "eventConsumed":Z
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$miniModeSurfaceOnTouchListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2700(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/view/ScaleGestureDetector;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v4

    if-nez v4, :cond_3

    .line 873
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$miniModeSurfaceOnTouchListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2800(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/view/GestureDetector;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 874
    const-string v4, "MtvMiniModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch consumed by gestureDetector:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 879
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 890
    :goto_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$miniModeSurfaceOnTouchListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$100(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v3

    .line 891
    goto :goto_0

    .line 881
    :pswitch_0
    const-string v2, "MtvMiniModeService"

    const-string v4, "ACTION_DOWN"

    invoke-static {v2, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 884
    :pswitch_1
    const-string v4, "MtvMiniModeService"

    const-string v5, "ACTION_UP"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$miniModeSurfaceOnTouchListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v4, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$102(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;Z)Z

    goto :goto_1

    .line 892
    :cond_4
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$miniModeSurfaceOnTouchListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {v2, p2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->isOutsideOfScreenLimit(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    .line 879
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
