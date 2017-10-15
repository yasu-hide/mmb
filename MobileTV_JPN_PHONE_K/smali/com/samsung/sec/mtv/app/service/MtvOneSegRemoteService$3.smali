.class Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;
.super Ljava/lang/Object;
.source "MtvOneSegRemoteService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V
    .locals 0

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 38
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1270
    const-string v4, "MtvOneSegRemoteService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got Command["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] in thread"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 2037
    const-string v4, "MtvOneSegRemoteService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Command ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]. Ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 1275
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/os/Messenger;

    .line 1276
    .local v28, "myClientMessenger":Landroid/os/Messenger;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    iget-object v4, v4, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mClients:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    const/16 v27, 0x0

    .line 1279
    .local v27, "myClientBinder":Landroid/os/IBinder;
    invoke-virtual/range {v28 .. v28}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 1281
    const-string v4, "MtvOneSegRemoteService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "myClientMessenger Binder is :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    :try_start_0
    const-string v4, "MtvOneSegRemoteService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "linkToDeath myClientMessenger Binder :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    new-instance v4, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$DtvRemoteDeatRecipient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    move-object/from16 v0, v28

    invoke-direct {v4, v5, v0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$DtvRemoteDeatRecipient;-><init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;Landroid/os/Messenger;)V

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1287
    :catch_0
    move-exception v24

    .line 1289
    .local v24, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v24 .. v24}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1294
    .end local v24    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v4, "MtvOneSegRemoteService"

    const-string v5, "IMtvOneSegServiceListener.CMD_REGISTER_CLIENT :: myClientMessenger is NULL "

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1307
    .end local v27    # "myClientBinder":Landroid/os/IBinder;
    .end local v28    # "myClientMessenger":Landroid/os/Messenger;
    :sswitch_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-nez v4, :cond_0

    .line 1309
    const/4 v12, 0x0

    .line 1311
    .local v12, "bCreate":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1900(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;Landroid/content/Context;)Z

    move-result v12

    .line 1313
    const/4 v4, 0x1

    if-ne v12, v4, :cond_4

    .line 1314
    const-string v4, "MtvOneSegRemoteService"

    const-string v5, "Success in CREATE -- Only SDTVControl Initialized..state is still Idle "

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$002(Z)Z

    .line 1316
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1317
    const/16 v4, 0x7d

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 1321
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    iget-object v4, v4, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 1323
    const-string v4, "MtvOneSegRemoteService"

    const-string v5, "Success in CREATE -- Turning off tuner as safety code "

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const/16 v4, 0x7d

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendUrgentSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 1327
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x12d

    const/16 v7, 0xc9

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1331
    :cond_4
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$002(Z)Z

    .line 1332
    const-string v4, "MtvOneSegRemoteService"

    const-string v5, "Failure in CREATE -- Posting CREATE_FAILURE "

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x12d

    const/16 v7, 0xcb

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1352
    .end local v12    # "bCreate":Z
    :sswitch_2
    const/4 v14, 0x0

    .line 1353
    .local v14, "bOpen":Z
    const/16 v30, -0x1

    .line 1355
    .local v30, "playbackType":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getUriFromBundle(Landroid/os/Bundle;)Landroid/broadcast/helper/MtvURI;

    move-result-object v29

    .line 1356
    .local v29, "openURI":Landroid/broadcast/helper/MtvURI;
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$2002(Z)Z

    .line 1357
    if-eqz v29, :cond_0

    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1358
    invoke-virtual/range {v29 .. v29}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v30

    .line 1364
    const-string v4, "MtvOneSegRemoteService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMtvOneSegServiceListener.CMD_OPEN -> Playback Type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ServiceID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Landroid/broadcast/helper/MtvURI;->serviceID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", chNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const/4 v4, 0x2

    move/from16 v0, v30

    if-ne v0, v4, :cond_6

    .line 1368
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v5

    invoke-virtual/range {v29 .. v29}, Landroid/broadcast/helper/MtvURI;->filePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Landroid/broadcast/helper/MtvURI;->serviceID()I

    move-result v7

    move/from16 v0, v30

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/broadcast/sdtv/SDtvControl;->open(IILjava/lang/String;I)Z

    move-result v14

    .line 1378
    :cond_5
    :goto_1
    const/4 v4, 0x1

    if-ne v14, v4, :cond_9

    .line 1380
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_8

    .line 1381
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->setIsLocalPlay(Z)V

    .line 1384
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x12e

    const/16 v7, 0xc9

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1372
    :cond_6
    const/4 v4, 0x1

    move/from16 v0, v30

    if-eq v0, v4, :cond_7

    const/4 v4, 0x4

    move/from16 v0, v30

    if-ne v0, v4, :cond_5

    .line 1373
    :cond_7
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v5

    invoke-virtual/range {v29 .. v29}, Landroid/broadcast/helper/MtvURI;->filePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Landroid/broadcast/helper/MtvURI;->fileIndex()I

    move-result v7

    move/from16 v0, v30

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/broadcast/sdtv/SDtvControl;->open(IILjava/lang/String;I)Z

    move-result v14

    goto :goto_1

    .line 1383
    :cond_8
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->setIsLocalPlay(Z)V

    goto :goto_2

    .line 1386
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x12e

    const/16 v7, 0xcb

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1392
    .end local v14    # "bOpen":Z
    .end local v29    # "openURI":Landroid/broadcast/helper/MtvURI;
    .end local v30    # "playbackType":I
    :sswitch_3
    const/16 v29, 0x0

    .line 1393
    .local v29, "openURI":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/broadcast/helper/types/MtvOneSegChannel;

    .line 1395
    .local v32, "servname":Landroid/broadcast/helper/types/MtvOneSegChannel;
    if-eqz v32, :cond_0

    .line 1396
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 1397
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/broadcast/sdtv/SDtvControl;->getChnlURI(Landroid/broadcast/helper/types/MtvOneSegChannel;)Ljava/lang/String;

    move-result-object v29

    .line 1399
    :cond_a
    if-nez v29, :cond_b

    .line 1400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x13a

    const/16 v7, 0xcb

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1403
    :cond_b
    new-instance v25, Landroid/os/Bundle;

    invoke-direct/range {v25 .. v25}, Landroid/os/Bundle;-><init>()V

    .line 1404
    .local v25, "mBundle":Landroid/os/Bundle;
    const-string v4, "SDTV_URI"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x13a

    const/16 v7, 0xc9

    const/4 v8, 0x0

    move-object/from16 v0, v25

    invoke-static {v5, v6, v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1413
    .end local v25    # "mBundle":Landroid/os/Bundle;
    .end local v29    # "openURI":Ljava/lang/String;
    .end local v32    # "servname":Landroid/broadcast/helper/types/MtvOneSegChannel;
    :sswitch_4
    const/4 v15, 0x0

    .line 1414
    .local v15, "bPause":Z
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 1415
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/broadcast/sdtv/SDtvControl;->pause()Z

    move-result v15

    .line 1417
    :cond_c
    if-nez v15, :cond_0

    .line 1418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x135

    const/16 v7, 0xcb

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1424
    .end local v15    # "bPause":Z
    :sswitch_5
    const/16 v17, 0x0

    .line 1425
    .local v17, "bResume":Z
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 1426
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/broadcast/sdtv/SDtvControl;->resume()Z

    move-result v17

    .line 1428
    :cond_d
    if-nez v17, :cond_0

    .line 1429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x136

    const/16 v7, 0xcb

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1435
    .end local v17    # "bResume":Z
    :sswitch_6
    const/16 v19, 0x0

    .line 1436
    .local v19, "bSeek":Z
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 1437
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/broadcast/sdtv/SDtvControl;->reposition(I)Z

    move-result v19

    .line 1439
    :cond_e
    if-nez v19, :cond_0

    .line 1440
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x146

    const/16 v7, 0xcb

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1445
    .end local v19    # "bSeek":Z
    :sswitch_7
    const/16 v20, 0x0

    .line 1446
    .local v20, "bTrick":Z
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 1447
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/Integer;

    .line 1448
    .local v23, "currTimeStamp":Ljava/lang/Integer;
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/broadcast/sdtv/SDtvControl;->trickmode(III)Z

    move-result v20

    .line 1450
    .end local v23    # "currTimeStamp":Ljava/lang/Integer;
    :cond_f
    if-nez v20, :cond_0

    .line 1451
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x145

    const/16 v7, 0xcb

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1456
    .end local v20    # "bTrick":Z
    :sswitch_8
    const/16 v18, 0x0

    .line 1457
    .local v18, "bScan":Z
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    .line 1479
    const-string v4, "MtvOneSegRemoteService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Command ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] in SCAN. Failure in SCAN"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    :cond_10
    :goto_3
    if-nez v18, :cond_0

    .line 1485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x133

    const/16 v7, 0xcb

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1459
    :pswitch_0
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 1460
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->open(IILjava/lang/String;I)Z

    move-result v18

    .line 1462
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_10

    .line 1464
    sget-object v4, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->SCAN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/16 v5, 0x6b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$2100(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;IIIIZ)V

    .line 1466
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x133

    const/16 v7, 0xc9

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto :goto_3

    .line 1473
    :pswitch_1
    const/16 v18, 0x1

    .line 1474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1800(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V

    goto :goto_3

    .line 1490
    .end local v18    # "bScan":Z
    :sswitch_9
    const-string v4, "MtvOneSegRemoteService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got CMD_CANCEL_SCAN in thread:: Current Scan ChnlIndex ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1700()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$2200(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V

    goto/16 :goto_0

    .line 1495
    :sswitch_a
    const/4 v13, 0x0

    .line 1497
    .local v13, "bDelTVFile":Z
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 1498
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/broadcast/sdtv/SDtvControl;->deleteTVFile(I)Z

    move-result v13

    .line 1503
    :goto_4
    const/4 v4, 0x1

    if-ne v13, v4, :cond_12

    .line 1504
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x132

    const/16 v7, 0xc9

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1500
    :cond_11
    const-string v4, "MtvOneSegRemoteService"

    const-string v5, "Invalid MW Handle. Cannot Delete TVFile from DB"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1506
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x132

    const/16 v7, 0xcb

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1512
    .end local v13    # "bDelTVFile":Z
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$2300(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;I)V

    goto/16 :goto_0

    .line 1517
    :sswitch_c
    const/4 v10, 0x0

    .line 1518
    .local v10, "bCapture":Z
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 1519
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/broadcast/sdtv/SDtvControl;->captureFrame()Z

    move-result v10

    .line 1525
    :goto_5
    if-nez v10, :cond_0

    .line 1526
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x140

    const/16 v7, 0xcb

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1522
    :cond_13
    const-string v4, "MtvOneSegRemoteService"

    const-string v5, "SDTV Control is null, Weird... Is is even possible ??"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1532
    .end local v10    # "bCapture":Z
    :sswitch_d
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1534
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 1535
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/broadcast/sdtv/SDtvControl;->tunerPowerCtrl(Z)V

    .line 1539
    :goto_6
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1541
    const-string v4, "MtvOneSegRemoteService"

    const-string v5, "CMD_CREATE: tuner power control done...sending CREATE success"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x12d

    const/16 v7, 0xc9

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1537
    :cond_14
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/broadcast/sdtv/SDtvControl;->tunerPowerCtrl(Z)V

    goto :goto_6

    .line 1550
    :sswitch_e
    const/16 v26, 0x0

    .line 1551
    .local v26, "mSigInfo":Landroid/broadcast/helper/types/MtvOneSegSignal;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getSignalStatistics()Landroid/broadcast/helper/types/MtvOneSegSignal;

    move-result-object v26

    .line 1552
    if-nez v26, :cond_15

    .line 1554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x138

    const/16 v7, 0xd2

    sget v8, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->MTV_SERVICE_NO_SIGNAL:I

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1556
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x138

    const/16 v7, 0xd2

    invoke-virtual/range {v26 .. v26}, Landroid/broadcast/helper/types/MtvOneSegSignal;->getSignalQuality()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getBundlefromSigInfo(Landroid/broadcast/helper/types/MtvOneSegSignal;)Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1569
    .end local v26    # "mSigInfo":Landroid/broadcast/helper/types/MtvOneSegSignal;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$2100(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;IIIIZ)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$2400(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V

    goto/16 :goto_0

    .line 1577
    :sswitch_10
    const/4 v14, 0x0

    .line 1578
    .restart local v14    # "bOpen":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/broadcast/helper/MtvURI;

    .line 1579
    .local v29, "openURI":Landroid/broadcast/helper/MtvURI;
    if-eqz v29, :cond_16

    .line 1580
    const-string v4, "MtvOneSegRemoteService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PB type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " && Chnlnum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    :cond_16
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getInstance()Landroid/broadcast/sdtv/SDtvRecEngineControl;

    move-result-object v4

    if-eqz v4, :cond_17

    if-eqz v29, :cond_17

    .line 1582
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getInstance()Landroid/broadcast/sdtv/SDtvRecEngineControl;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v5

    invoke-virtual/range {v29 .. v29}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v6

    invoke-virtual/range {v29 .. v29}, Landroid/broadcast/helper/MtvURI;->serviceID()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->openBGRecord(III)Z

    move-result v14

    .line 1583
    :cond_17
    if-nez v14, :cond_0

    .line 1585
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x141

    const/16 v7, 0xcb

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1594
    .end local v14    # "bOpen":Z
    .end local v29    # "openURI":Landroid/broadcast/helper/MtvURI;
    :sswitch_11
    const/4 v11, 0x0

    .line 1595
    .local v11, "bClose":Z
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getInstance()Landroid/broadcast/sdtv/SDtvRecEngineControl;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 1596
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getInstance()Landroid/broadcast/sdtv/SDtvRecEngineControl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->closeBGRecord()Z

    move-result v11

    .line 1597
    :cond_18
    if-nez v11, :cond_19

    .line 1598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x142

    const/16 v7, 0xcb

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    .line 1599
    :cond_19
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$2002(Z)Z

    goto/16 :goto_0

    .line 1605
    .end local v11    # "bClose":Z
    :sswitch_12
    const/16 v16, 0x0

    .line 1606
    .local v16, "bRecord":Z
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getInstance()Landroid/broadcast/sdtv/SDtvRecEngineControl;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 1607
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getInstance()Landroid/broadcast/sdtv/SDtvRecEngineControl;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v4, v6}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->startRecord(Ljava/lang/String;I)Z

    move-result v16

    .line 1609
    :cond_1a
    if-nez v16, :cond_0

    .line 1611
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x12f

    const/16 v7, 0xcb

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1617
    .end local v16    # "bRecord":Z
    :sswitch_13
    const/16 v16, 0x0

    .line 1618
    .restart local v16    # "bRecord":Z
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getInstance()Landroid/broadcast/sdtv/SDtvRecEngineControl;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 1619
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getInstance()Landroid/broadcast/sdtv/SDtvRecEngineControl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->cancelRecord()Z

    move-result v16

    .line 1621
    :cond_1b
    if-nez v16, :cond_1c

    .line 1623
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x130

    const/16 v7, 0xcb

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    .line 1628
    :goto_7
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$2002(Z)Z

    goto/16 :goto_0

    .line 1626
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x130

    const/16 v7, 0xc9

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto :goto_7

    .line 1633
    .end local v16    # "bRecord":Z
    :sswitch_14
    const/16 v16, 0x0

    .line 1634
    .restart local v16    # "bRecord":Z
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getInstance()Landroid/broadcast/sdtv/SDtvRecEngineControl;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 1635
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getInstance()Landroid/broadcast/sdtv/SDtvRecEngineControl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->stopRecord()Z

    move-result v16

    .line 1637
    :cond_1d
    if-nez v16, :cond_1e

    .line 1639
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x131

    const/16 v7, 0xcb

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    .line 1641
    :cond_1e
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$2002(Z)Z

    goto/16 :goto_0

    .line 1645
    .end local v16    # "bRecord":Z
    :sswitch_15
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    sparse-switch v4, :sswitch_data_1

    goto/16 :goto_0

    .line 1665
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x141

    const/16 v7, 0xde

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1659
    :sswitch_17
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$2002(Z)Z

    .line 1660
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x141

    const/16 v7, 0xc9

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1669
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x140

    const/16 v7, 0xc9

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1672
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1673
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1674
    .local v22, "chNameBundle":Landroid/os/Bundle;
    const-string v5, "CHNL_NAME"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x141

    const/16 v7, 0xdd

    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-static {v5, v6, v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1679
    .end local v22    # "chNameBundle":Landroid/os/Bundle;
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1680
    new-instance v31, Landroid/os/Bundle;

    invoke-direct/range {v31 .. v31}, Landroid/os/Bundle;-><init>()V

    .line 1681
    .local v31, "prgNameBundle":Landroid/os/Bundle;
    const-string v5, "PROG_NAME"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x141

    const/16 v7, 0xdc

    const/4 v8, 0x0

    move-object/from16 v0, v31

    invoke-static {v5, v6, v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1692
    .end local v31    # "prgNameBundle":Landroid/os/Bundle;
    :sswitch_1b
    const/16 v33, 0xcb

    .line 1693
    .local v33, "status":I
    const/16 v25, 0x0

    .line 1694
    .restart local v25    # "mBundle":Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    sparse-switch v4, :sswitch_data_2

    .line 1720
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x12f

    const/4 v7, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v25

    invoke-static {v5, v6, v0, v7, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1696
    :sswitch_1c
    const/16 v33, 0xc9

    .line 1697
    new-instance v25, Landroid/os/Bundle;

    .end local v25    # "mBundle":Landroid/os/Bundle;
    invoke-direct/range {v25 .. v25}, Landroid/os/Bundle;-><init>()V

    .line 1698
    .restart local v25    # "mBundle":Landroid/os/Bundle;
    const-string v5, "REC_THUMBNAIL_NAME"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1703
    :sswitch_1d
    const/16 v33, 0xd7

    .line 1705
    goto :goto_8

    .line 1708
    :sswitch_1e
    const/16 v33, 0xd8

    .line 1710
    goto :goto_8

    .line 1713
    :sswitch_1f
    const/16 v33, 0xde

    .line 1715
    goto :goto_8

    .line 1726
    .end local v25    # "mBundle":Landroid/os/Bundle;
    .end local v33    # "status":I
    :sswitch_20
    const/16 v33, 0xcb

    .line 1728
    .restart local v33    # "status":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    .line 1729
    const/16 v33, 0xc9

    .line 1732
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x131

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    const/4 v8, 0x0

    move/from16 v0, v33

    invoke-static {v5, v6, v0, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1738
    .end local v33    # "status":I
    :sswitch_21
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1740
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x142

    const/16 v7, 0xc9

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1748
    :sswitch_22
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1750
    const-string v4, "MtvOneSegRemoteService"

    const-string v5, "CMD_UPDATE_TV_FILES ... Calling SDTV Update TVFiles DB"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/broadcast/sdtv/SDtvControl;->updateTVFilesDB()V

    goto/16 :goto_0

    .line 1756
    :sswitch_23
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    sparse-switch v4, :sswitch_data_3

    .line 1836
    const-string v4, "MtvOneSegRemoteService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Status ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] with MW OPEN Command. Ignoring.."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1760
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x502

    const/16 v7, 0x505

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1764
    :sswitch_25
    sget-object v4, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->SCAN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v5

    if-ne v4, v5, :cond_20

    .line 1766
    const-string v4, "MtvOneSegRemoteService"

    const-string v5, "Dummy Channel Open Success... Can Start Scanning now !"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$400()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3$1;-><init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1777
    :cond_20
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$2500()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v4

    sget-object v5, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->REC_OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v4, v5, :cond_21

    .line 1779
    const-string v4, "MtvOneSegRemoteService"

    const-string v5, "UnRegistering Recorder Module From Tuner !"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getInstance()Landroid/broadcast/sdtv/SDtvRecEngineControl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->closeBGRecord()Z

    .line 1782
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v6, 0x0

    const/16 v7, 0x502

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Landroid/broadcast/helper/types/MtvOneSegChannel;

    check-cast v4, [Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getBundleFromChannel([Landroid/broadcast/helper/types/MtvOneSegChannel;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v6, v7, v8, v9, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1796
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x502

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1801
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v6, 0x0

    const/16 v7, 0x502

    const/16 v8, 0x200

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Landroid/broadcast/helper/types/MtvOneSegProgram;

    check-cast v4, [Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getBundleFromProgramInfo([Landroid/broadcast/helper/types/MtvOneSegProgram;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v6, v7, v8, v9, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1806
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v6, 0x0

    const/16 v7, 0x502

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getBundleFromStreamTime(J)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v6, v7, v8, v9, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1811
    :sswitch_29
    const-string v4, "MtvOneSegRemoteService"

    const-string v5, "Malfunctioning of MW - Have to close DTV!!!"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$002(Z)Z

    .line 1816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x502

    const/16 v7, 0x50e

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1821
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x502

    const/16 v7, 0x50b

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1826
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x502

    const/16 v7, 0x50c

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1831
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x502

    const/16 v7, 0x509

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1843
    :sswitch_2d
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x140

    const/16 v7, 0xc9

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1850
    :sswitch_2e
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_1

    .line 1888
    :pswitch_2
    const-string v4, "MtvOneSegRemoteService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnProcessed Status Updated - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1852
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x1000

    const/16 v7, 0x1001

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1855
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x1000

    const/16 v7, 0x1002

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1858
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x1000

    const/16 v7, 0x1003

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1861
    :pswitch_6
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1862
    .local v21, "captionBundle":Landroid/os/Bundle;
    const-string v5, "CAPTION_ARRAY"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x1000

    const/16 v7, 0x1006

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v21

    invoke-static {v5, v6, v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1866
    .end local v21    # "captionBundle":Landroid/os/Bundle;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x1000

    const/16 v7, 0x1007

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1869
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x1000

    const/16 v7, 0x1008

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1872
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x1000

    const/16 v7, 0x1004

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1875
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v6, 0x0

    const/16 v7, 0x1000

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Landroid/broadcast/helper/types/MtvOneSegChannel;

    check-cast v4, [Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getBundleFromChannel([Landroid/broadcast/helper/types/MtvOneSegChannel;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v6, v7, v8, v9, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1885
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x1000

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1895
    :sswitch_2f
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_22

    .line 1896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x604

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1900
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x604

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1906
    :sswitch_30
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    .line 1907
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x603

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1911
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x603

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1917
    :sswitch_31
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_24

    .line 1918
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x602

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1920
    :cond_24
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 1921
    const-string v4, "MtvOneSegRemoteService"

    const-string v5, "Failure in Play !"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x602

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1935
    :sswitch_32
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_25

    .line 1936
    new-instance v25, Landroid/os/Bundle;

    invoke-direct/range {v25 .. v25}, Landroid/os/Bundle;-><init>()V

    .line 1937
    .restart local v25    # "mBundle":Landroid/os/Bundle;
    const-string v5, "REPOSITION_TIME"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1938
    const-string v4, "MtvOneSegRemoteService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REPOSITION_TIME "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x605

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, v25

    invoke-static {v5, v6, v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1941
    .end local v25    # "mBundle":Landroid/os/Bundle;
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x605

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1947
    :sswitch_33
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    sparse-switch v4, :sswitch_data_4

    goto/16 :goto_0

    .line 1976
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x606

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1951
    :sswitch_35
    new-instance v25, Landroid/os/Bundle;

    invoke-direct/range {v25 .. v25}, Landroid/os/Bundle;-><init>()V

    .line 1952
    .restart local v25    # "mBundle":Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_26

    .line 1953
    const-string v5, "TRICK_TIME"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1956
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x606

    const/16 v7, 0x50a

    const/4 v8, 0x0

    move-object/from16 v0, v25

    invoke-static {v5, v6, v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1955
    :cond_26
    const-string v4, "TRICK_TIME"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9

    .line 1961
    .end local v25    # "mBundle":Landroid/os/Bundle;
    :sswitch_36
    new-instance v25, Landroid/os/Bundle;

    invoke-direct/range {v25 .. v25}, Landroid/os/Bundle;-><init>()V

    .line 1962
    .restart local v25    # "mBundle":Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_27

    .line 1963
    const-string v5, "TRICK_TIME"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1966
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x606

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, v25

    invoke-static {v5, v6, v7, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1965
    :cond_27
    const-string v4, "TRICK_TIME"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    .line 1971
    .end local v25    # "mBundle":Landroid/os/Bundle;
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x606

    const/16 v7, 0x509

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1999
    :sswitch_38
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$400()Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-static {v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$2600(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2001
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28

    .line 2002
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v6, 0x0

    const/16 v7, 0x133

    const/16 v8, 0xca

    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1700()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Landroid/broadcast/helper/types/MtvOneSegChannel;

    check-cast v4, [Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getBundleFromChannel([Landroid/broadcast/helper/types/MtvOneSegChannel;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v6, v7, v8, v9, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    .line 2014
    :goto_b
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1708()I

    .line 2015
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1800(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V

    goto/16 :goto_0

    .line 2012
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x133

    const/16 v7, 0xca

    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->access$1700()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto :goto_b

    .line 2021
    :sswitch_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x503

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2028
    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;->this$0:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    const/4 v5, 0x0

    const/16 v6, 0x504

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1272
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_a
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_12
        0x68 -> :sswitch_13
        0x69 -> :sswitch_14
        0x6a -> :sswitch_c
        0x6b -> :sswitch_8
        0x6c -> :sswitch_9
        0x6d -> :sswitch_4
        0x6e -> :sswitch_5
        0x6f -> :sswitch_7
        0x70 -> :sswitch_6
        0x72 -> :sswitch_3
        0x75 -> :sswitch_b
        0x76 -> :sswitch_f
        0x7b -> :sswitch_0
        0x7d -> :sswitch_d
        0x7e -> :sswitch_22
        0x7f -> :sswitch_10
        0x80 -> :sswitch_11
        0x138 -> :sswitch_e
        0x502 -> :sswitch_23
        0x503 -> :sswitch_39
        0x504 -> :sswitch_3a
        0x505 -> :sswitch_38
        0x507 -> :sswitch_15
        0x508 -> :sswitch_1b
        0x509 -> :sswitch_20
        0x50a -> :sswitch_21
        0x602 -> :sswitch_31
        0x603 -> :sswitch_30
        0x604 -> :sswitch_2f
        0x605 -> :sswitch_32
        0x606 -> :sswitch_33
        0x60d -> :sswitch_2d
        0x1000 -> :sswitch_2e
    .end sparse-switch

    .line 1457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1645
    :sswitch_data_1
    .sparse-switch
        -0x4 -> :sswitch_16
        0x1 -> :sswitch_17
        0x7 -> :sswitch_18
        0x602 -> :sswitch_19
        0x603 -> :sswitch_1a
    .end sparse-switch

    .line 1694
    :sswitch_data_2
    .sparse-switch
        -0x3 -> :sswitch_1d
        -0x2 -> :sswitch_1e
        0x1 -> :sswitch_1c
        0x100b -> :sswitch_1f
    .end sparse-switch

    .line 1756
    :sswitch_data_3
    .sparse-switch
        -0x1 -> :sswitch_26
        0x1 -> :sswitch_25
        0x20 -> :sswitch_28
        0x200 -> :sswitch_27
        0x505 -> :sswitch_24
        0x509 -> :sswitch_2c
        0x50b -> :sswitch_2a
        0x50c -> :sswitch_2b
        0x50e -> :sswitch_29
    .end sparse-switch

    .line 1850
    :pswitch_data_1
    .packed-switch 0x1001
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 1947
    :sswitch_data_4
    .sparse-switch
        -0x1 -> :sswitch_34
        0x1 -> :sswitch_36
        0x509 -> :sswitch_37
        0x50a -> :sswitch_35
    .end sparse-switch
.end method
