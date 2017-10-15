.class Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;
.super Landroid/os/Handler;
.source "MtvMiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V
    .locals 0

    .prologue
    .line 899
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0x8

    .line 901
    const-string v1, "MtvMiniModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 905
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 906
    .local v0, "stringId":I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 907
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2900(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 909
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2900(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f070268

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 913
    .end local v0    # "stringId":I
    :pswitch_1
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->removeMessages(I)V

    .line 914
    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->removeMessages(I)V

    .line 916
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$200(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 917
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$200(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 924
    :goto_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1900(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1900(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isRecordActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 925
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1900(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->stopOtherSound()V

    .line 926
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1900(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAvStreaming(Z)V

    .line 928
    :cond_2
    sget-object v1, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->classname:Ljava/lang/String;

    const-string v2, "MtvUiFilePlayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$3000(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V

    goto :goto_0

    .line 920
    :cond_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$200(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 921
    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 936
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$200(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 940
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 941
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 943
    :cond_4
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$3102(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;I)I

    .line 944
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$3202(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;I)I

    goto/16 :goto_0

    .line 902
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
