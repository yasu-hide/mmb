.class Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;
.super Landroid/os/Handler;
.source "MtvOneSegRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 351
    const-string v8, "MtvOneSegRemoteService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got Message ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] in Incoming Handler"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 591
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 356
    :sswitch_0
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->values()[Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_1

    .line 357
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->values()[Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    goto :goto_0

    .line 360
    :cond_1
    const-string v8, "MtvOneSegRemoteService"

    const-string v9, "Error Setting the State ! Unknow State Value !"

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :sswitch_1
    const/16 v8, 0x7b

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v8, v9, v10, v11}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto :goto_0

    .line 373
    :sswitch_2
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    iget-object v8, v8, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mClients:Ljava/util/ArrayList;

    iget-object v9, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 374
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    iget-object v8, v8, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 376
    const/16 v8, 0x7d

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto :goto_0

    .line 382
    :sswitch_3
    const-string v8, "MtvOneSegRemoteService"

    const-string v9, "Got CMD_CREATE from client..."

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$000()Z

    move-result v8

    if-nez v8, :cond_2

    .line 385
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$100()V

    .line 386
    new-instance v8, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;-><init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$1;)V

    invoke-static {v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$202(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;)Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    .line 387
    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "OneSegRemoteService"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 388
    .local v7, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 389
    const-string v8, "MtvOneSegRemoteService"

    const-string v9, "Starting the thread"

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-static {v10}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$500(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)Landroid/os/Handler$Callback;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$402(Landroid/os/Handler;)Landroid/os/Handler;

    .line 391
    const-string v8, "MtvOneSegRemoteService"

    const-string v9, "Successfully Instantiated Constrcutor"

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/16 v8, 0x65

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 393
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$002(Z)Z

    goto/16 :goto_0

    .line 397
    .end local v7    # "thread":Landroid/os/HandlerThread;
    :cond_2
    const/16 v8, 0x7d

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 405
    :sswitch_4
    const/4 v2, 0x0

    .line 406
    .local v2, "isOpenIssued":Z
    iget-object v9, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v9, v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getUriFromBundle(Landroid/os/Bundle;)Landroid/broadcast/helper/MtvURI;

    move-result-object v4

    .line 407
    .local v4, "mMtvUri":Landroid/broadcast/helper/MtvURI;
    if-eqz v4, :cond_6

    .line 409
    invoke-virtual {v4}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    invoke-virtual {v4}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    invoke-virtual {v4}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    .line 412
    :cond_3
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-virtual {v8, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->open(Landroid/broadcast/helper/MtvURI;)Z

    move-result v2

    .line 422
    :cond_4
    :goto_1
    if-nez v2, :cond_0

    .line 424
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v9, 0x0

    const/16 v10, 0x12e

    const/16 v11, 0xcb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 413
    :cond_5
    invoke-virtual {v4}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_4

    .line 415
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-virtual {v8, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->recOpen(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 420
    :cond_6
    const-string v8, "MtvOneSegRemoteService"

    const-string v9, "mMtvUril is null !"

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 431
    .end local v2    # "isOpenIssued":Z
    .end local v4    # "mMtvUri":Landroid/broadcast/helper/MtvURI;
    :sswitch_5
    iget-object v9, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    iget-object v10, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v10, v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getChannelFromBundle(Landroid/os/Bundle;)Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->start(Landroid/broadcast/helper/types/MtvOneSegChannel;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 433
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v9, 0x0

    const/16 v10, 0x72

    const/16 v11, 0xcb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 440
    :sswitch_6
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-static {v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$600(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 442
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v9, 0x0

    const/16 v10, 0x6d

    const/16 v11, 0xcb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 449
    :sswitch_7
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$700(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 451
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v9, 0x0

    const/16 v10, 0x70

    const/16 v11, 0xcb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 458
    :sswitch_8
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-static {v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$800(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 460
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v9, 0x0

    const/16 v10, 0x6e

    const/16 v11, 0xcb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 466
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 467
    .local v0, "b":Landroid/os/Bundle;
    const-string v8, "TRICK_CURR_TIME"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 468
    .local v1, "currTimeStamp":I
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8, v9, v10, v1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$900(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;III)Z

    move-result v8

    if-nez v8, :cond_0

    .line 470
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v9, 0x0

    const/16 v10, 0x6f

    const/16 v11, 0xcb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 476
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "currTimeStamp":I
    :sswitch_a
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->scanChannels()Z

    move-result v8

    if-nez v8, :cond_0

    .line 478
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v9, 0x0

    const/16 v10, 0x6b

    const/16 v11, 0xcb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 484
    :sswitch_b
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->cancelScanChannels()Z

    move-result v8

    if-nez v8, :cond_0

    .line 486
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v9, 0x0

    const/16 v10, 0x6c

    const/16 v11, 0xcb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 492
    :sswitch_c
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->deleteTVFile(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 494
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v9, 0x0

    const/16 v10, 0x132

    const/16 v11, 0xcb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 500
    :sswitch_d
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->close(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 502
    const-string v8, "MtvOneSegRemoteService"

    const-string v9, "Remote service CLOSE FAILED...NOW WHAT TO DO???"

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 509
    :sswitch_e
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->screwupCleanup()Z

    move-result v8

    if-nez v8, :cond_0

    .line 511
    const-string v8, "MtvOneSegRemoteService"

    const-string v9, "ScrewupCleanup Also FAILED...NOW WHAT TO DO???"

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 517
    :sswitch_f
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->delete()Z

    move-result v8

    if-nez v8, :cond_0

    .line 519
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v9, 0x0

    const/16 v10, 0x76

    const/16 v11, 0xcb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 525
    :sswitch_10
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->captureFrame()Z

    move-result v8

    if-nez v8, :cond_0

    .line 527
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v9, 0x0

    const/16 v10, 0x140

    const/16 v11, 0xcb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 533
    :sswitch_11
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getSignalStats()V

    goto/16 :goto_0

    .line 542
    :sswitch_12
    iget-object v9, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v9, v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getUriFromBundle(Landroid/os/Bundle;)Landroid/broadcast/helper/MtvURI;

    move-result-object v6

    .line 544
    .local v6, "openURI":Landroid/broadcast/helper/MtvURI;
    if-eqz v6, :cond_7

    .line 545
    const-string v8, "MtvOneSegRemoteService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PB type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " && Chnlnum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_7
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->recOpen(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 549
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v9, 0x0

    const/16 v10, 0x141

    const/16 v11, 0xcb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 555
    .end local v6    # "openURI":Landroid/broadcast/helper/MtvURI;
    :sswitch_13
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->recClose()Z

    move-result v8

    if-nez v8, :cond_0

    .line 557
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v9, 0x0

    const/16 v10, 0x142

    const/16 v11, 0xcb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 566
    :sswitch_14
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 567
    .local v3, "mBundle":Landroid/os/Bundle;
    const-string v8, "MTV_REC_CMD_DATA"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 568
    .local v5, "mUri":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v5, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->startRecord(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 570
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v9, 0x0

    const/16 v10, 0x12f

    const/16 v11, 0xcb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 576
    .end local v3    # "mBundle":Landroid/os/Bundle;
    .end local v5    # "mUri":Ljava/lang/String;
    :sswitch_15
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->cancelRecord()Z

    move-result v8

    if-nez v8, :cond_0

    .line 578
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v9, 0x0

    const/16 v10, 0x130

    const/16 v11, 0xcb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 584
    :sswitch_16
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->stopRecord()Z

    move-result v8

    if-nez v8, :cond_0

    .line 586
    iget-object v8, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v9, 0x0

    const/16 v10, 0x131

    const/16 v11, 0xcb

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_14
        0x68 -> :sswitch_15
        0x69 -> :sswitch_16
        0x6a -> :sswitch_10
        0x6b -> :sswitch_a
        0x6c -> :sswitch_b
        0x6d -> :sswitch_6
        0x6e -> :sswitch_8
        0x6f -> :sswitch_9
        0x70 -> :sswitch_7
        0x72 -> :sswitch_5
        0x75 -> :sswitch_d
        0x76 -> :sswitch_f
        0x7b -> :sswitch_1
        0x7c -> :sswitch_2
        0x7f -> :sswitch_12
        0x80 -> :sswitch_13
        0x132 -> :sswitch_c
        0x137 -> :sswitch_e
        0x138 -> :sswitch_11
        0x13f -> :sswitch_0
    .end sparse-switch
.end method
