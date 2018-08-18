.class public Lcom/sec/android/app/minimode/MiniModeService$TouchListener;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchListener"
.end annotation


# instance fields
.field protected MODULE_TAG:Ljava/lang/String;

.field private mPosX:I

.field private mPosY:I

.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;)V
    .locals 1

    .prologue
    .line 2290
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2293
    const-string v0, "[TouchListener]"

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->MODULE_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    .line 2295
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2296
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 2352
    :cond_0
    :goto_0
    return v12

    .line 2298
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->mPosX:I

    .line 2299
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->mPosY:I

    .line 2302
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$2500(Lcom/sec/android/app/minimode/MiniModeService;)V

    .line 2303
    invoke-static {}, Lcom/sec/android/app/minimode/MiniModeService;->access$4600()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$4700(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$2300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$2800(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2304
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2305
    .local v1, "bodyWidth":I
    if-lez v1, :cond_1

    .line 2306
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v9, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v9}, Lcom/sec/android/app/minimode/MiniModeService;->access$2300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/app/minimode/MiniModeService;->access$4802(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 2307
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$4800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2308
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$2300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v9}, Lcom/sec/android/app/minimode/MiniModeService;->access$4800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2310
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v9}, Lcom/sec/android/app/minimode/MiniModeService;->access$3800(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2311
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$2300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2312
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8, v12}, Lcom/sec/android/app/minimode/MiniModeService;->access$2402(Lcom/sec/android/app/minimode/MiniModeService;Z)Z

    goto/16 :goto_0

    .line 2317
    .end local v1    # "bodyWidth":I
    :pswitch_1
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$2600(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v6, v8

    .line 2321
    .local v6, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v7, v8

    .line 2322
    .local v7, "y":I
    iget v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->mPosX:I

    sub-int v2, v6, v8

    .line 2323
    .local v2, "moveX":I
    iget v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->mPosY:I

    sub-int v3, v7, v8

    .line 2324
    .local v3, "moveY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v9, v9, Lcom/sec/android/app/minimode/MiniModeService;->X_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

    if-gt v8, v9, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v9, v9, Lcom/sec/android/app/minimode/MiniModeService;->Y_AXIS_MOVEMENT_THRESHOLD_FOR_DRAG_WINDOW:I

    if-le v8, v9, :cond_0

    .line 2325
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v4, v8, v2

    .line 2326
    .local v4, "newX":I
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v5, v8, v3

    .line 2327
    .local v5, "newY":I
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2328
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2329
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v9, v9, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2330
    iput v6, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->mPosX:I

    .line 2331
    iput v7, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->mPosY:I

    goto/16 :goto_0

    .line 2338
    .end local v2    # "moveX":I
    .end local v3    # "moveY":I
    .end local v4    # "newX":I
    .end local v5    # "newY":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :pswitch_2
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$2700(Lcom/sec/android/app/minimode/MiniModeService;)V

    .line 2339
    invoke-static {}, Lcom/sec/android/app/minimode/MiniModeService;->access$4600()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$4700(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$2800(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2340
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v9}, Lcom/sec/android/app/minimode/MiniModeService;->access$3800(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2341
    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v9}, Lcom/sec/android/app/minimode/MiniModeService;->access$3800(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v10, v10, Lcom/sec/android/app/minimode/MiniModeService;->MINIMIZED_TITLE_BAR_SHOW_TIMEOUT:I

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2296
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
