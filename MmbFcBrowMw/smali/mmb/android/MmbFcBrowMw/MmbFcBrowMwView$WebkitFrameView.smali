.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;
.super Landroid/view/View;
.source "MmbFcBrowMwView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebkitFrameView"
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;


# direct methods
.method private constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Landroid/content/Context;)V
    .locals 0
    .param p2, "aContext"    # Landroid/content/Context;

    .prologue
    .line 4197
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 4198
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4199
    invoke-static {p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V

    .line 4200
    return-void
.end method

.method synthetic constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Landroid/content/Context;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;)V
    .locals 0
    .param p1, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;

    .prologue
    .line 4196
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "aCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 4204
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;->lock()V

    .line 4206
    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4207
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 4208
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4209
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4210
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4302(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4213
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4214
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 4215
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4218
    :cond_1
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;->unlock()V

    .line 4220
    return-void

    .line 4218
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$4200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    move-result-object v1

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;->unlock()V

    throw v0
.end method
