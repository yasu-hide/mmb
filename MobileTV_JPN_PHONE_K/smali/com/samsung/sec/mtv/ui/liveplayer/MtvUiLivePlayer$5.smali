.class Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;
.super Landroid/os/Handler;
.source "MtvUiLivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 351
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 355
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$1100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$1200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    const/16 v3, 0x145

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_0

    .line 360
    :sswitch_1
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$1300()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$1400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Z)V

    goto :goto_0

    .line 363
    :cond_1
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "showStatusNotification is false"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 368
    .local v14, "isAbnormal":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$1500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Z)V

    goto :goto_0

    .line 367
    .end local v14    # "isAbnormal":Ljava/lang/Boolean;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 374
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$1600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    goto :goto_0

    .line 378
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$1700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$1800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_0

    .line 383
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$1900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    goto/16 :goto_0

    .line 386
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    const/16 v3, 0x68

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_0

    .line 391
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setBMLLayoutFullView(Z)V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    const/16 v3, 0xe4

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BML_DIALOGUE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 395
    :cond_3
    const-string v3, "MtvUiLivePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changing channel - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v5, 0x136

    if-ne v2, v5, :cond_5

    const-string v2, "next"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x136

    if-ne v2, v3, :cond_6

    const/4 v15, 0x1

    .line 398
    .local v15, "isNext":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->delete(Landroid/content/Context;Landroid/net/Uri;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 401
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->removeOpenChannelMessages()V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2, v15}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Z)I

    move-result v8

    .line 425
    .local v8, "Pch":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getFirstServiceID(Landroid/content/Context;I)I

    move-result v12

    .line 426
    .local v12, "iServiceID":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v8, v12, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->prepareUri(IIZ)Landroid/broadcast/helper/MtvURI;

    move-result-object v16

    .line 427
    .local v16, "mMtvURI":Landroid/broadcast/helper/MtvURI;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->calculateDelayForStartChannel()J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->postOpenChannel(Landroid/broadcast/helper/MtvURI;I)Z

    .line 431
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2800()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x12d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const v6, 0x7f07021d

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 435
    .end local v8    # "Pch":I
    .end local v12    # "iServiceID":I
    .end local v16    # "mMtvURI":Landroid/broadcast/helper/MtvURI;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    goto/16 :goto_0

    .line 395
    .end local v15    # "isNext":Z
    :cond_5
    const-string v2, "prev"

    goto/16 :goto_2

    .line 396
    :cond_6
    const/4 v15, 0x0

    goto :goto_3

    .line 438
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->setBMLLayoutFullView(Z)V

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$3000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$3100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    const/16 v3, 0xe4

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BML_DIALOGUE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 443
    :cond_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/Bundle;

    .line 444
    .local v9, "bundle":Landroid/os/Bundle;
    const-string v2, "physicalchannelnumber"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 445
    .local v17, "mPhyChannelNumber":I
    const-string v2, "virtualchannelnumber"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 446
    .local v20, "mvirtualChannelNumber":I
    const-string v2, "serviceid"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 447
    .local v19, "mserviceID":I
    const-string v2, "multichannelnumber"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 450
    .local v18, "mmultiChannelNumber":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$3200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$3300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CHANNELNUM:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 452
    const-string v2, "MtvUiLivePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changing channel to - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$3400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$3500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$3600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$3700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$3800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 460
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->removeOpenChannelMessages()V

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$3900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannel()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->prepareUri(IIZ)Landroid/broadcast/helper/MtvURI;

    move-result-object v16

    .line 462
    .restart local v16    # "mMtvURI":Landroid/broadcast/helper/MtvURI;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->calculateDelayForStartChannel()J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->postOpenChannel(Landroid/broadcast/helper/MtvURI;I)Z

    .line 463
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4100()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x12d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const v6, 0x7f07021d

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 466
    .end local v16    # "mMtvURI":Landroid/broadcast/helper/MtvURI;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    goto/16 :goto_0

    .line 470
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v17    # "mPhyChannelNumber":I
    .end local v18    # "mmultiChannelNumber":I
    .end local v19    # "mserviceID":I
    .end local v20    # "mvirtualChannelNumber":I
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CAPTURE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v4, 0x7d0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 473
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 477
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->closeOptionsMenu()V

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4502(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Landroid/view/Menu;)Landroid/view/Menu;

    .line 482
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const v3, 0x7f0702c5

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 486
    .local v13, "intent":Landroid/content/Intent;
    if-eqz v13, :cond_b

    const-string v2, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "closing_from_notification"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const v3, 0x7f07024a

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    .line 493
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Z

    goto/16 :goto_0

    .line 496
    .end local v13    # "intent":Landroid/content/Intent;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_CHANNELNUM:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/16 v21, 0x0

    const v22, 0x7f0a001c

    aput v22, v7, v21

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    goto/16 :goto_0

    .line 503
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    new-instance v3, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5$1;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;)V

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 526
    :sswitch_d
    const-wide/16 v10, 0x0

    .line 527
    .local v10, "availMemSize":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->closeOptionsMenu()V

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4502(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Landroid/view/Menu;)Landroid/view/Menu;

    .line 532
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 536
    const/16 v2, 0x6013

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eq v2, v3, :cond_d

    const/16 v2, 0x6011

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_10

    .line 539
    :cond_d
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->getAvailableExternalMemorySize()J

    move-result-wide v10

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v2

    if-nez v2, :cond_f

    .line 542
    const-wide/32 v2, 0x204000

    cmp-long v2, v10, v2

    if-lez v2, :cond_e

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const v3, 0x7f0702ab

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    .line 551
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    goto/16 :goto_0

    .line 545
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const v3, 0x7f070307

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    goto :goto_4

    .line 549
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const v3, 0x7f070307

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    goto :goto_4

    .line 553
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const v3, 0x7f0702b0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    goto/16 :goto_0

    .line 559
    :cond_11
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5702(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 563
    .end local v10    # "availMemSize":J
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->closeOptionsMenu()V

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$4502(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Landroid/view/Menu;)Landroid/view/Menu;

    .line 569
    :cond_12
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->isRecordedFileSavable()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    .line 583
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 585
    const/16 v2, 0x6012

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_0

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const v3, 0x7f0702b1

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    goto/16 :goto_0

    .line 575
    :cond_13
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Recording Cancelled as the recording time is Less than required!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->getInstance()Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo;->stopRecordTimer()V

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    goto :goto_5

    .line 593
    :cond_14
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5702(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 597
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$6000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$6100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    const/16 v3, 0x6f

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_0

    .line 602
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$6200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$6300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$6400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v4, 0xbb8

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/16 v21, 0x0

    const v22, 0x7f0a0032

    aput v22, v7, v21

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/16 v3, 0xe2

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0xfa0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$6500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I[I)V

    goto/16 :goto_0

    .line 619
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$6600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/16 v3, 0xe2

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0xbb8

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$6500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I[I)V

    goto/16 :goto_0

    .line 627
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$6700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$6800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$6800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 636
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$6900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$7000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v4, 0xbb8

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/16 v21, 0x0

    const v22, 0x7f0a0032

    aput v22, v7, v21

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    goto/16 :goto_0

    .line 642
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$7100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_0

    .line 352
    nop

    :sswitch_data_0
    .sparse-switch
        0xd6 -> :sswitch_10
        0xdd -> :sswitch_11
        0x12e -> :sswitch_1
        0x130 -> :sswitch_2
        0x131 -> :sswitch_3
        0x133 -> :sswitch_4
        0x134 -> :sswitch_5
        0x136 -> :sswitch_7
        0x137 -> :sswitch_7
        0x138 -> :sswitch_6
        0x13a -> :sswitch_9
        0x13b -> :sswitch_a
        0x13c -> :sswitch_b
        0x13d -> :sswitch_c
        0x13e -> :sswitch_8
        0x140 -> :sswitch_d
        0x141 -> :sswitch_e
        0x142 -> :sswitch_f
        0x144 -> :sswitch_0
    .end sparse-switch
.end method
