.class Lcom/sec/android/app/minimode/MiniModeService$18;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


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
    .line 1333
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1337
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 1338
    sget-object v0, Lcom/sec/android/app/minimode/MiniModeService$23;->$SwitchMap$com$sec$android$app$minimode$MiniModeService$Resizable:[I

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$18;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$3600(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/android/app/minimode/MiniModeService$Resizable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/minimode/MiniModeService$Resizable;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1347
    const/16 v0, 0x8

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 1355
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1340
    :pswitch_0
    const/4 v0, 0x7

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    goto :goto_0

    .line 1353
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1343
    :pswitch_1
    const/4 v0, 0x6

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    goto :goto_0

    .line 1350
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1351
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
