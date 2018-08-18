.class Lcom/sec/android/app/minimode/MiniModeService$19;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->initOverlayFrameWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field location:[I

.field mX:F

.field mY:F

.field originBodyHeight:I

.field originBodyWidth:I

.field originHeight:I

.field originWidth:I

.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1359
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1360
    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$19;->originWidth:I

    .line 1361
    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$19;->originHeight:I

    .line 1362
    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$19;->originBodyWidth:I

    .line 1363
    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService$19;->originBodyHeight:I

    .line 1364
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService$19;->mX:F

    .line 1365
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService$19;->mY:F

    .line 1366
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$19;->location:[I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 1369
    const/4 v15, 0x0

    .line 1370
    .local v15, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 1371
    .local v10, "action":I
    packed-switch v10, :pswitch_data_0

    .line 1475
    :cond_0
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 1373
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$3700(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$3800(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1375
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->mX:F

    .line 1376
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->mY:F

    .line 1377
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v5}, Lcom/sec/android/app/minimode/MiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 1378
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v5, v5, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v5}, Lcom/sec/android/app/minimode/MainView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->originWidth:I

    .line 1379
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v5, v5, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v5}, Lcom/sec/android/app/minimode/MainView;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->originHeight:I

    .line 1380
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->originBodyWidth:I

    .line 1381
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->originBodyHeight:I

    .line 1384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->location:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$4100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v5, v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$4002(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1386
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1387
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1388
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$4000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->location:[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v23, v23, v24

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->location:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    add-int v23, v23, v24

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1395
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v5}, Lcom/sec/android/app/minimode/MiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 1396
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    .line 1397
    .local v13, "curX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v14

    .line 1398
    .local v14, "curY":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->mX:F

    sub-float v5, v13, v5

    float-to-int v0, v5

    move/from16 v20, v0

    .line 1399
    .local v20, "vectorX":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->mY:F

    sub-float v5, v14, v5

    float-to-int v0, v5

    move/from16 v21, v0

    .line 1402
    .local v21, "vectorY":I
    sget-object v5, Lcom/sec/android/app/minimode/MiniModeService$23;->$SwitchMap$com$sec$android$app$minimode$MiniModeService$Resizable:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$3600(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->ordinal()I

    move-result v22

    aget v5, v5, v22

    packed-switch v5, :pswitch_data_1

    .line 1410
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->originWidth:I

    add-int v6, v5, v20

    .line 1411
    .local v6, "w":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->originHeight:I

    add-int v7, v5, v21

    .line 1412
    .local v7, "h":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->originBodyWidth:I

    add-int v8, v5, v20

    .line 1413
    .local v8, "bW":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->originBodyHeight:I

    add-int v9, v5, v21

    .line 1415
    .local v9, "bH":I
    if-lez v8, :cond_3

    if-lez v9, :cond_3

    .line 1416
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v19

    .line 1417
    .local v19, "minWidth":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v18

    .line 1418
    .local v18, "minHeight":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4400(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 1419
    .local v17, "maxWidth":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4400(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 1420
    .local v16, "maxHeight":I
    const/4 v12, 0x0

    .line 1421
    .local v12, "calibW":I
    const/4 v11, 0x0

    .line 1422
    .local v11, "calibH":I
    if-eqz v19, :cond_7

    move/from16 v0, v19

    if-ge v8, v0, :cond_7

    .line 1423
    sub-int v12, v8, v19

    .line 1427
    :cond_1
    :goto_2
    sub-int/2addr v8, v12

    .line 1428
    sub-int/2addr v6, v12

    .line 1429
    if-eqz v18, :cond_8

    move/from16 v0, v18

    if-ge v9, v0, :cond_8

    .line 1430
    sub-int v11, v9, v18

    .line 1434
    :cond_2
    :goto_3
    sub-int/2addr v9, v11

    .line 1435
    sub-int/2addr v7, v11

    .line 1436
    new-instance v4, Lcom/sec/android/app/minimode/MiniModeService$MoveParam;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/minimode/MiniModeService$MoveParam;-><init>(Lcom/sec/android/app/minimode/MiniModeService;IIII)V

    .line 1439
    .local v4, "moveParam":Lcom/sec/android/app/minimode/MiniModeService$MoveParam;
    iput v6, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1440
    iput v7, v15, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1441
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1442
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x5

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1447
    .end local v4    # "moveParam":Lcom/sec/android/app/minimode/MiniModeService$MoveParam;
    .end local v11    # "calibH":I
    .end local v12    # "calibW":I
    .end local v16    # "maxHeight":I
    .end local v17    # "maxWidth":I
    .end local v18    # "minHeight":I
    .end local v19    # "minWidth":I
    :cond_3
    const/4 v5, 0x1

    if-eq v10, v5, :cond_4

    const/4 v5, 0x3

    if-ne v10, v5, :cond_0

    .line 1448
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v5, v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$4502(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1449
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1450
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1451
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$3900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$4500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1453
    invoke-static {}, Lcom/sec/android/app/minimode/MiniModeService;->access$4600()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4700(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$2300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1454
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$2300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v5, v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$4802(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1455
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1456
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$2300(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$4800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1459
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$1800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->invalidate()V

    .line 1460
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v5, v15}, Lcom/sec/android/app/minimode/MiniModeService;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1461
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->mX:F

    .line 1462
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->mY:F

    .line 1463
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->originWidth:I

    .line 1464
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->originHeight:I

    .line 1465
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1467
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$4200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v5

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1469
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$3700(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->RESIZE_HANDLER_SHOW_TIMEOUT:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1470
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v5}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService;->access$3800(Lcom/sec/android/app/minimode/MiniModeService;)Ljava/lang/Runnable;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService$19;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->MINIMIZED_TITLE_BAR_SHOW_TIMEOUT:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1404
    .end local v6    # "w":I
    .end local v7    # "h":I
    .end local v8    # "bW":I
    .end local v9    # "bH":I
    :pswitch_2
    const/16 v20, 0x0

    .line 1405
    goto/16 :goto_1

    .line 1407
    :pswitch_3
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1424
    .restart local v6    # "w":I
    .restart local v7    # "h":I
    .restart local v8    # "bW":I
    .restart local v9    # "bH":I
    .restart local v11    # "calibH":I
    .restart local v12    # "calibW":I
    .restart local v16    # "maxHeight":I
    .restart local v17    # "maxWidth":I
    .restart local v18    # "minHeight":I
    .restart local v19    # "minWidth":I
    :cond_7
    if-eqz v17, :cond_1

    move/from16 v0, v17

    if-le v8, v0, :cond_1

    .line 1425
    sub-int v12, v8, v17

    goto/16 :goto_2

    .line 1431
    :cond_8
    if-eqz v16, :cond_2

    move/from16 v0, v16

    if-le v9, v0, :cond_2

    .line 1432
    sub-int v11, v9, v16

    goto/16 :goto_3

    .line 1371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1402
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
