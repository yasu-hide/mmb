.class Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$13;
.super Ljava/lang/Object;
.source "MtvUiPopUpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$13;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 506
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$13;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 508
    sget v0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->type:I

    packed-switch v0, :pswitch_data_0

    .line 543
    :goto_0
    :pswitch_0
    return-void

    .line 510
    :pswitch_1
    const-string v0, "MtvUiPopUpActivity"

    const-string v1, "RunnablePopupExpire POPUP_TYPE_LOW_BATTERY "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$13;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    goto :goto_0

    .line 514
    :pswitch_2
    const-string v0, "MtvUiPopUpActivity"

    const-string v1, "RunnablePopupExpire POPUP_TYPE_LOW_MEMORY "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$13;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    goto :goto_0

    .line 519
    :pswitch_3
    const-string v0, "MtvUiPopUpActivity"

    const-string v1, "RunnablePopupExpire POPUP_TYPE_SLEEP_TIMER_EXIT "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$13;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$500(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    goto :goto_0

    .line 525
    :pswitch_4
    const-string v0, "MtvUiPopUpActivity"

    const-string v1, "RunnablePopupExpire POPUP_TYPE_RESERVATION_ALERT "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$13;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$800(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    goto :goto_0

    .line 529
    :pswitch_5
    const-string v0, "MtvUiPopUpActivity"

    const-string v1, "RunnablePopupExpire POPUP_TYPE_LAUNCH_ANTENNA_ALERT "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$13;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$1100(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    goto :goto_0

    .line 533
    :pswitch_6
    const-string v0, "MtvUiPopUpActivity"

    const-string v1, "RunnablePopupExpire POPUP_TYPE_LAUNCH_ANTENNA_ALERT_DIALOG "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$13;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$1400(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    goto :goto_0

    .line 538
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$13;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$1500(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    goto :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
