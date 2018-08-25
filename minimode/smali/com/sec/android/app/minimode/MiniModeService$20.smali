.class Lcom/sec/android/app/minimode/MiniModeService$20;
.super Landroid/os/Handler;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/minimode/MiniModeService;
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
    .line 1565
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 1568
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1631
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1634
    :cond_0
    :goto_1
    return-void

    .line 1571
    :pswitch_0
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v0, :cond_1

    .line 1572
    .local v0, "hasFocus":Z
    :goto_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    .line 1574
    .local v4, "name":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1575
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1582
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v6}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v7}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1400(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v5

    .line 1583
    .local v5, "v":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    iget v8, v5, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1584
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    iget v8, v5, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1586
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1000(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    goto :goto_1

    .end local v0    # "hasFocus":Z
    .end local v4    # "name":Landroid/content/ComponentName;
    .end local v5    # "v":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    :cond_1
    move v0, v6

    .line 1571
    goto :goto_2

    .line 1591
    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/minimode/MiniModeService;->move(II)V

    goto :goto_1

    .line 1596
    :pswitch_2
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1597
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1598
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1599
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1600
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$302(Lcom/sec/android/app/minimode/MiniModeService;I)I

    .line 1601
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$402(Lcom/sec/android/app/minimode/MiniModeService;I)I

    .line 1602
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v6}, Lcom/sec/android/app/minimode/MainView;->invalidate()V

    goto/16 :goto_1

    .line 1606
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :pswitch_3
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    const/4 v7, 0x7

    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$000(Lcom/sec/android/app/minimode/MiniModeService;I)V

    goto/16 :goto_1

    .line 1610
    :pswitch_4
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v6}, Lcom/sec/android/app/minimode/MiniModeService;->show()V

    goto/16 :goto_1

    .line 1614
    :pswitch_5
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v6}, Lcom/sec/android/app/minimode/MiniModeService;->hide()V

    goto/16 :goto_1

    .line 1619
    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/sec/android/app/minimode/MiniModeService$MoveParam;

    .line 1620
    .local v3, "moveParam":Lcom/sec/android/app/minimode/MiniModeService$MoveParam;
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 1621
    .local v1, "location":[I
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1622
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$4100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$4002(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1623
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$4000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v8, v3, Lcom/sec/android/app/minimode/MiniModeService$MoveParam;->bodyViewWidth:I

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1624
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$4000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v8, v3, Lcom/sec/android/app/minimode/MiniModeService$MoveParam;->bodyViewHeight:I

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1625
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$4100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v8}, Lcom/sec/android/app/minimode/MiniModeService;->access$4000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1626
    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$4200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    aget v9, v1, v6

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v9, v9, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    aget v10, v1, v0

    add-int/2addr v9, v10

    invoke-virtual {v7, v8, v9, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1627
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$20;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$4200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 1568
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
