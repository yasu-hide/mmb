.class Lcom/sec/android/app/minimode/MiniModeService$16;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->initOverlayFrameWindow()V
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
    .line 1267
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$2800(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1271
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$2802(Lcom/sec/android/app/minimode/MiniModeService;Z)Z

    .line 1272
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v0}, Lcom/sec/android/app/minimode/MiniModeService;->onMinimized()Z

    .line 1273
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/minimode/MainView;->setVisibility(I)V

    .line 1274
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$2900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1275
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributesForMinimize:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v1, v1, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1276
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$3000(Lcom/sec/android/app/minimode/MiniModeService;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1277
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v0, v0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1278
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$3100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$2900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1279
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$3200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$3200(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$2900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$3300(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/android/app/minimode/MiniModeService$MinimizedBarTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1283
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$3400(Lcom/sec/android/app/minimode/MiniModeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1284
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    iget-object v1, v1, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1286
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v0}, Lcom/sec/android/app/minimode/MiniModeService;->access$2900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 1290
    :cond_2
    return-void
.end method
