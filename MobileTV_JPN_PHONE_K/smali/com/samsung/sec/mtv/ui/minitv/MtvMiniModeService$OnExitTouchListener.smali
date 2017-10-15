.class Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$OnExitTouchListener;
.super Lcom/sec/android/app/minimode/MiniModeService$TouchListener;
.source "MtvMiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnExitTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$OnExitTouchListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-direct {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 697
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 698
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 699
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 715
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 701
    :pswitch_0
    const-string v1, "MtvMiniModeService"

    const-string v2, "EXIT BUTTON : ACTION_DOWN"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 704
    :pswitch_1
    const-string v1, "MtvMiniModeService"

    const-string v2, "EXIT BUTTON : ACTION_UP"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$OnExitTouchListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$200(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$OnExitTouchListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$200(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$OnExitTouchListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    const v2, 0x7f07027e

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2100(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;I)V

    goto :goto_0

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
