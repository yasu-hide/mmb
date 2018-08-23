.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;
.super Ljava/lang/Object;
.source "MmbFcBrowMwView.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitAudioCreate(Ljava/lang/String;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)V
    .locals 0

    .prologue
    .line 2881
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iput p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z
    .locals 11
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p2, "aEvt"    # I
    .param p3, "aExtra"    # I

    .prologue
    const/16 v10, 0x6a

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2885
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "onInfo Audio aWhat : %d, aExtra : %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2886
    if-nez p1, :cond_1

    .line 2950
    :cond_0
    :goto_0
    :sswitch_0
    return v8

    .line 2889
    :cond_1
    const/16 v4, 0x2bc

    if-ne p2, v4, :cond_3

    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z

    move-result v4

    if-eq v9, v4, :cond_2

    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z

    move-result v4

    if-ne v9, v4, :cond_3

    .line 2890
    :cond_2
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "Mp4 ExIF In : reset() 1"

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2891
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->reset()V

    .line 2892
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "Mp4 ExIF Out : reset() 1"

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2893
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "Mp4 ExIF In : release() 1"

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2894
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->release()V

    .line 2895
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "Mp4 ExIF Out : release() 1"

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2896
    const/4 v4, 0x0

    invoke-static {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1302(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 2897
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/4 v5, -0x1

    iput v5, v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    .line 2898
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z

    move-result v4

    if-ne v9, v4, :cond_3

    .line 2899
    new-instance v4, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-direct {v4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;-><init>()V

    invoke-static {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1302(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 2900
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v4, v8}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$1502(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Z)Z

    .line 2903
    :cond_3
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v4

    iget v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;->val$id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 2904
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    .line 2907
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 2917
    :sswitch_1
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v4, v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v5, 0x8

    invoke-static {v4, v10, v5, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2918
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v4, v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v4, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2909
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_2
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v4, v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v5, 0x9

    invoke-static {v4, v10, v5, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2910
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v4, v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v4, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2929
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_3
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getAudioTargetState()I

    move-result v2

    .line 2930
    .local v2, "rejectedstate":I
    const/4 v3, 0x0

    .line 2931
    .local v3, "respondrejected":I
    sparse-switch v2, :sswitch_data_1

    .line 2942
    :goto_1
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v4, v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v5, 0x15

    invoke-static {v4, v10, v5, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2943
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v4, v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v4, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2944
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->recoverRejectedState()V

    goto/16 :goto_0

    .line 2933
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_4
    const/4 v3, 0x1

    .line 2934
    goto :goto_1

    .line 2936
    :sswitch_5
    const/4 v3, 0x2

    .line 2937
    goto :goto_1

    .line 2939
    :sswitch_6
    const/4 v3, 0x3

    goto :goto_1

    .line 2907
    nop

    :sswitch_data_0
    .sparse-switch
        0x2bc -> :sswitch_0
        0x2bd -> :sswitch_1
        0x2c0 -> :sswitch_0
        0x2c3 -> :sswitch_0
        0x2c5 -> :sswitch_0
        0x2c7 -> :sswitch_2
        0x2cd -> :sswitch_3
    .end sparse-switch

    .line 2931
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x9 -> :sswitch_6
    .end sparse-switch
.end method
