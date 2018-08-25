.class Lcom/sec/android/app/minimode/MiniModeService$11;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->initWindowEventListeners()V
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
    .line 957
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 10
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v9, 0x0

    const/16 v7, -0x2710

    .line 960
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/minimode/MiniModeService;->onWindowFocusChanged(Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 961
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6, p1}, Lcom/sec/android/app/minimode/MiniModeService;->access$1102(Lcom/sec/android/app/minimode/MiniModeService;Z)Z

    .line 962
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1200(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 963
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6, v9}, Lcom/sec/android/app/minimode/MiniModeService;->access$1202(Lcom/sec/android/app/minimode/MiniModeService;Z)Z

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6, p1}, Lcom/sec/android/app/minimode/MiniModeService;->access$1102(Lcom/sec/android/app/minimode/MiniModeService;Z)Z

    .line 972
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v6}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 973
    .local v0, "displayRect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v6}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 976
    .local v3, "miniAppRect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1200(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 977
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v6, v7, :cond_7

    .line 996
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6, v9}, Lcom/sec/android/app/minimode/MiniModeService;->access$1202(Lcom/sec/android/app/minimode/MiniModeService;Z)Z

    .line 1005
    :goto_2
    if-eqz p1, :cond_b

    .line 1007
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1000(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    .line 1008
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1600(Lcom/sec/android/app/minimode/MiniModeService;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 1009
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1600(Lcom/sec/android/app/minimode/MiniModeService;)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1011
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1700(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1012
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1013
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/minimode/MainView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1041
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v7, 0x11

    if-ne v6, v7, :cond_6

    .line 1042
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x33

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1044
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v9, v9, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v9}, Lcom/sec/android/app/minimode/MainView;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1046
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v9, v9, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v9}, Lcom/sec/android/app/minimode/MainView;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1048
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_5

    .line 1051
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_6

    .line 1054
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1061
    :cond_6
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1063
    :catch_0
    move-exception v1

    .line 1064
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v8, v8, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not attached to window manager"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 981
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_7
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1000(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->isOccupiedPosition(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 983
    :cond_8
    invoke-static {}, Lcom/sec/android/app/minimode/MiniModeService;->access$1300()Z

    move-result v6

    if-nez v6, :cond_9

    .line 984
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v6}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v7}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1400(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v5

    .line 986
    .local v5, "v":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    iget v8, v5, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 987
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    iget v8, v5, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 994
    .end local v5    # "v":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    :goto_4
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1

    .line 989
    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6, v0, v3}, Lcom/sec/android/app/minimode/MiniModeService;->access$1500(Lcom/sec/android/app/minimode/MiniModeService;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 991
    .local v4, "nextMiniAppRect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 992
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4

    .line 998
    .end local v4    # "nextMiniAppRect":Landroid/graphics/Rect;
    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v6}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v7}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1400(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v5

    .line 999
    .restart local v5    # "v":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    iget v8, v5, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1000
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v7, v7

    iget v8, v5, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1002
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_2

    .line 1021
    .end local v5    # "v":Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    :cond_b
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v7, v7, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1602(Lcom/sec/android/app/minimode/MiniModeService;I)I

    .line 1022
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0x30

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1024
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1025
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1700(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1026
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1027
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1028
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1029
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v6}, Lcom/sec/android/app/minimode/MiniModeService;->access$1800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1030
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$302(Lcom/sec/android/app/minimode/MiniModeService;I)I

    .line 1031
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6, v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$402(Lcom/sec/android/app/minimode/MiniModeService;I)I

    .line 1032
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v7}, Lcom/sec/android/app/minimode/MiniModeService;->access$1900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/minimode/MainView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1033
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService$11;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v6, v6, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v8, v9}, Lcom/sec/android/app/minimode/MainView;->postInvalidateDelayed(J)V

    goto/16 :goto_3
.end method
