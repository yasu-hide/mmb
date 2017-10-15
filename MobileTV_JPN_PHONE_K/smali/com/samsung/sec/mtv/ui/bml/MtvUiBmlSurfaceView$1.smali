.class Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$1;
.super Ljava/lang/Object;
.source "MtvUiBmlSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$1;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 368
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    const-string v0, "MtvUiBmlSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$1;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->checkCanvasValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "surfaceChanged:Canvas inValid "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$1;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->access$000(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$1;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->access$000(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v0, v1, :cond_2

    .line 379
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$1;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->access$100(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;)Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$1;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->access$100(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;)Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->refreshBMLScreen()V

    .line 385
    :cond_2
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 388
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 392
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void
.end method
