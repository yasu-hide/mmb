.class Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;
.super Landroid/os/Handler;
.source "MtvUiSViewCover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V
    .locals 0

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v11, 0x7f07021d

    const/16 v9, 0x1c3

    const/16 v10, 0x12d

    const/4 v8, 0x4

    const/4 v2, 0x0

    .line 1059
    const-string v5, "MtvUiSViewCover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1151
    :cond_0
    :goto_0
    return-void

    .line 1063
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$2400(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$2500(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1065
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$2600(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1066
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$2700(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1067
    :cond_1
    const-string v6, "MtvUiSViewCover"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changing channel - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v9, :cond_3

    const-string v5, "next"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v9, :cond_2

    const/4 v2, 0x1

    .line 1069
    .local v2, "isNext":Z
    :cond_2
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$2100(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1070
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5, v2}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$2800(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;Z)I

    .line 1071
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$2900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1072
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$2900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Ljava/lang/Runnable;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3000(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1073
    invoke-static {}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3100()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-virtual {v7, v11}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1075
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3200(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    goto/16 :goto_0

    .line 1067
    .end local v2    # "isNext":Z
    :cond_3
    const-string v5, "prev"

    goto :goto_1

    .line 1079
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$2400(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$2500(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1081
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3300(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v5

    const/16 v6, 0x80

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_0

    .line 1084
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3400(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1085
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3500(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1086
    :cond_4
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3200(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    .line 1087
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    const v6, 0x7f0702c5

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3600(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;I)V

    .line 1088
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3700(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Z

    goto/16 :goto_0

    .line 1091
    :pswitch_3
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3800(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1092
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1093
    :cond_5
    const-wide/16 v0, 0x0

    .line 1094
    .local v0, "availMemSize":J
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$4000(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    .line 1096
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1098
    const/16 v5, 0x6013

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eq v5, v6, :cond_6

    const/16 v5, 0x6011

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_9

    .line 1101
    :cond_6
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->getAvailableExternalMemorySize()J

    move-result-wide v0

    .line 1102
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$4100(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v5

    if-nez v5, :cond_8

    .line 1104
    const-wide/32 v6, 0x204000

    cmp-long v5, v0, v6

    if-lez v5, :cond_7

    .line 1105
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    const v6, 0x7f0702ab

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3600(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;I)V

    goto/16 :goto_0

    .line 1107
    :cond_7
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    const v6, 0x7f070307

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3600(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;I)V

    goto/16 :goto_0

    .line 1110
    :cond_8
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    const v6, 0x7f070307

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3600(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;I)V

    goto/16 :goto_0

    .line 1112
    :cond_9
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    const v6, 0x7f0702b0

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3600(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;I)V

    goto/16 :goto_0

    .line 1117
    .end local v0    # "availMemSize":J
    :pswitch_4
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$1500(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    goto/16 :goto_0

    .line 1122
    :pswitch_5
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-virtual {v5, v2}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->closeOneseg(I)V

    goto/16 :goto_0

    .line 1126
    :pswitch_6
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1128
    .local v3, "mPhyChannelNumber":I
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$4200(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1129
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$4300(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CHANNELNUM:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1130
    const-string v5, "MtvUiSViewCover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changing channel to - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$2100(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 1133
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5, v3}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$4400(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;I)V

    .line 1134
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->removeOpenChannelMessages()V

    .line 1135
    new-instance v5, Landroid/broadcast/helper/MtvURI;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$4500(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannel()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/broadcast/helper/MtvURI;-><init>(II)V

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3000(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->postOpenChannel(Landroid/broadcast/helper/MtvURI;I)Z

    .line 1136
    invoke-static {}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$4600()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-virtual {v7, v11}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1138
    :cond_a
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$3200(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    goto/16 :goto_0

    .line 1143
    .end local v3    # "mPhyChannelNumber":I
    :pswitch_7
    const-string v5, "MtvUiSViewCover"

    const-string v6, " mSViewUiMsgHandler::  UI_SVIEW_COVER_RESERVATION_RECORDING_START "

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 1145
    .local v4, "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$12;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v5, v4}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$4700(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    goto/16 :goto_0

    .line 1060
    nop

    :pswitch_data_0
    .packed-switch 0x1c3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
