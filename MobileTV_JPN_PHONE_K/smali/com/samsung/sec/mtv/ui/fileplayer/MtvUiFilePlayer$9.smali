.class Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;
.super Landroid/os/Handler;
.source "MtvUiFilePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V
    .locals 0

    .prologue
    .line 991
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x65

    .line 994
    const-string v1, "MtvUiFilePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 997
    :sswitch_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$1300(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 998
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$1500(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$1400(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_0

    .line 1001
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$1600(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    .line 1002
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$1700(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    .line 1003
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$1800(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1004
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$1900(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$1400(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1006
    sget-object v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v1

    if-eq v1, v6, :cond_1

    .line 1007
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$2000(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v1

    const/16 v2, 0x7e

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2, v5, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1009
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$2100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    goto :goto_0

    .line 1012
    :sswitch_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$1600(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    .line 1013
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$2200(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    .line 1014
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$2300(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1015
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$2400(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$1400(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1017
    sget-object v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 1018
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$2500(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v1

    const/16 v2, 0x72

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2, v5, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1020
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$2100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    goto/16 :goto_0

    .line 1023
    :sswitch_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$2600(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$2700(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v1

    const/16 v2, 0x71

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isInTrickMode()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_0

    .line 1027
    :sswitch_4
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$2800(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    goto/16 :goto_0

    .line 1031
    :sswitch_5
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$2900(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;I)V

    goto/16 :goto_0

    .line 1034
    :sswitch_6
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$3000(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1035
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$3100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v1

    const/16 v2, 0x68

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2, v5, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_0

    .line 1038
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$3200(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 1041
    .local v0, "flag":Z
    :goto_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$3300(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1043
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    if-eqz v1, :cond_0

    .line 1044
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$3400(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    const/16 v3, 0x70

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3, v4, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_0

    .line 1040
    .end local v0    # "flag":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 995
    nop

    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_7
        0x191 -> :sswitch_0
        0x192 -> :sswitch_1
        0x193 -> :sswitch_2
        0x194 -> :sswitch_3
        0x199 -> :sswitch_4
        0x19d -> :sswitch_6
        0x19e -> :sswitch_5
    .end sparse-switch
.end method
