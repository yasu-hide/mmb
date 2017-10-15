.class Landroid/broadcast/oneseg/MtvOneSegService$2;
.super Ljava/lang/Object;
.source "MtvOneSegService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/broadcast/oneseg/MtvOneSegService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/broadcast/oneseg/MtvOneSegService;


# direct methods
.method constructor <init>(Landroid/broadcast/oneseg/MtvOneSegService;)V
    .locals 0

    .prologue
    .line 1217
    iput-object p1, p0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 44
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1222
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got Command["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2300
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Command ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 1234
    :sswitch_0
    const/4 v8, 0x0

    .line 1236
    .local v8, "bCreate":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v3, v2, v4}, Landroid/broadcast/oneseg/MtvOneSegService;->access$500(Landroid/broadcast/oneseg/MtvOneSegService;Landroid/content/Context;I)Z

    move-result v8

    .line 1240
    const/4 v2, 0x1

    if-ne v8, v2, :cond_2

    .line 1241
    const-string v2, "MtvOneSegService"

    const-string v3, "Success in create -- waiting for SDTV service to respond..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$600(Landroid/broadcast/oneseg/MtvOneSegService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1243
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->IDLE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    goto :goto_0

    .line 1245
    :cond_1
    const-string v2, "MtvOneSegService"

    const-string v3, "Service already connected...not touching the state but everything is created! So send CREATE SUCCESS"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x65

    const/16 v4, 0xc9

    sget v5, Landroid/broadcast/oneseg/MtvOneSegService;->mCurrentInitMode:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1250
    :cond_2
    const-string v2, "MtvOneSegService"

    const-string v3, "Failure in CREATE -- Posting CREATE_FAILURE "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x65

    const/16 v4, 0xcb

    sget v5, Landroid/broadcast/oneseg/MtvOneSegService;->mCurrentInitMode:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1262
    .end local v8    # "bCreate":Z
    :sswitch_1
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got Remote Message : REMOTE_CMD_CREATE with status : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_3

    .line 1265
    const-string v2, "MtvOneSegService"

    const-string v3, "Got Remote Message : success in sdtv create..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->access$602(Landroid/broadcast/oneseg/MtvOneSegService;Z)Z

    .line 1267
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 1270
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x65

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1269
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->access$602(Landroid/broadcast/oneseg/MtvOneSegService;Z)Z

    goto :goto_1

    .line 1287
    :sswitch_2
    const/4 v14, 0x0

    .line 1288
    .local v14, "bOpen":Z
    const/16 v19, 0x0

    .line 1289
    .local v19, "bSDTVRequested":Z
    const/16 v40, -0x1

    .line 1291
    .local v40, "playbackType":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/broadcast/helper/MtvURI;

    .line 1292
    .local v39, "openURI":Landroid/broadcast/helper/MtvURI;
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$702(I)I

    .line 1293
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOneSegSvcClose in Open : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$700()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    if-eqz v39, :cond_f

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$000()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1295
    invoke-virtual/range {v39 .. v39}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v40

    .line 1297
    const/4 v2, 0x4

    move/from16 v0, v40

    if-eq v0, v2, :cond_a

    const/4 v2, 0x5

    move/from16 v0, v40

    if-eq v0, v2, :cond_a

    const/4 v2, 0x6

    move/from16 v0, v40

    if-eq v0, v2, :cond_a

    .line 1301
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1304
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->isBMLEngineCreated()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1306
    const/16 v30, 0x0

    .line 1307
    .local v30, "isCreated":Z
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->create()Z

    move-result v30

    .line 1308
    const-string v2, "MtvOneSegService"

    const-string v3, "BML Instance Create request complete..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    if-eqz v30, :cond_9

    .line 1311
    const-string v2, "MtvOneSegService"

    const-string v3, "Successfully created OneSegSVCBMLEngineControl() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    .end local v30    # "isCreated":Z
    :cond_4
    :goto_2
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->open()Z

    move-result v14

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x66

    const/4 v4, 0x0

    const/16 v5, 0x100

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    .line 1324
    :cond_5
    :goto_3
    const/4 v2, 0x1

    if-ne v14, v2, :cond_8

    .line 1325
    const/4 v2, 0x1

    move/from16 v0, v40

    if-ne v0, v2, :cond_6

    .line 1326
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$902(Z)Z

    .line 1329
    :cond_6
    const/4 v2, 0x2

    move/from16 v0, v40

    if-eq v0, v2, :cond_7

    const/4 v2, 0x1

    move/from16 v0, v40

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    move/from16 v0, v40

    if-eq v0, v2, :cond_7

    const/4 v2, 0x6

    move/from16 v0, v40

    if-ne v0, v2, :cond_c

    .line 1333
    :cond_7
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_b

    .line 1335
    const/4 v2, 0x0

    const/16 v3, 0x66

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Landroid/broadcast/oneseg/MtvOneSegService;->getBundleFromUri(Landroid/broadcast/helper/MtvURI;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v37

    .line 1337
    .local v37, "mesg":Landroid/os/Message;
    :try_start_0
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1338
    const/4 v14, 0x1

    .line 1339
    const/16 v19, 0x1

    .line 1375
    .end local v37    # "mesg":Landroid/os/Message;
    :cond_8
    :goto_4
    if-nez v14, :cond_11

    .line 1376
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$902(Z)Z

    .line 1377
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x66

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1100(Landroid/broadcast/oneseg/MtvOneSegService;)V

    goto/16 :goto_0

    .line 1314
    .restart local v30    # "isCreated":Z
    :cond_9
    const-string v2, "MtvOneSegService"

    const-string v3, "Failure in OneSegSVCBMLEngineControl() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1321
    .end local v30    # "isCreated":Z
    :cond_a
    const/4 v14, 0x1

    goto :goto_3

    .line 1340
    .restart local v37    # "mesg":Landroid/os/Message;
    :catch_0
    move-exception v28

    .line 1342
    .local v28, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1343
    const/4 v14, 0x0

    .line 1344
    const/16 v19, 0x0

    goto :goto_4

    .line 1348
    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v37    # "mesg":Landroid/os/Message;
    :cond_b
    const/4 v14, 0x0

    goto :goto_4

    .line 1352
    :cond_c
    const/4 v2, 0x5

    move/from16 v0, v40

    if-ne v0, v2, :cond_d

    .line 1353
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1000(Landroid/broadcast/oneseg/MtvOneSegService;)V

    goto :goto_4

    .line 1354
    :cond_d
    const/4 v2, 0x3

    move/from16 v0, v40

    if-ne v0, v2, :cond_e

    .line 1355
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1356
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    invoke-virtual/range {v39 .. v39}, Landroid/broadcast/helper/MtvURI;->tvLink()Landroid/broadcast/helper/types/MtvOneSegTVLink;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->openTvLink(Landroid/broadcast/helper/types/MtvOneSegTVLink;)Z

    move-result v14

    .line 1358
    const/4 v2, 0x1

    if-ne v14, v2, :cond_8

    .line 1359
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1000(Landroid/broadcast/oneseg/MtvOneSegService;)V

    goto :goto_4

    .line 1363
    :cond_e
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid PBType ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Cannot Open Playback Session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1368
    :cond_f
    if-nez v39, :cond_10

    .line 1369
    const-string v2, "MtvOneSegService"

    const-string v3, "Invalid openURI [null]. Failure in open() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1371
    :cond_10
    const-string v2, "MtvOneSegService"

    const-string v3, "Invalid Controller Instance. Failure in open() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1379
    :cond_11
    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_0

    .line 1380
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x66

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    goto/16 :goto_0

    .line 1388
    .end local v14    # "bOpen":Z
    .end local v19    # "bSDTVRequested":Z
    .end local v39    # "openURI":Landroid/broadcast/helper/MtvURI;
    .end local v40    # "playbackType":I
    :sswitch_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_12

    .line 1390
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$902(Z)Z

    .line 1391
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x66

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1100(Landroid/broadcast/oneseg/MtvOneSegService;)V

    goto/16 :goto_0

    .line 1395
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x66

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    goto/16 :goto_0

    .line 1401
    :sswitch_4
    const/16 v21, 0x0

    .line 1403
    .local v21, "bStart":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/broadcast/helper/types/MtvOneSegChannel;

    .line 1405
    .local v42, "servname":Landroid/broadcast/helper/types/MtvOneSegChannel;
    if-eqz v42, :cond_13

    .line 1406
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_14

    .line 1408
    const/4 v2, 0x0

    const/16 v3, 0x72

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Landroid/broadcast/oneseg/MtvOneSegService;->getBundleFromChannel(Landroid/broadcast/helper/types/MtvOneSegChannel;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v37

    .line 1410
    .restart local v37    # "mesg":Landroid/os/Message;
    :try_start_1
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1411
    const/16 v21, 0x1

    .line 1424
    .end local v37    # "mesg":Landroid/os/Message;
    :cond_13
    :goto_5
    if-nez v21, :cond_0

    .line 1425
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x72

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1100(Landroid/broadcast/oneseg/MtvOneSegService;)V

    goto/16 :goto_0

    .line 1412
    .restart local v37    # "mesg":Landroid/os/Message;
    :catch_1
    move-exception v28

    .line 1414
    .restart local v28    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1415
    const/16 v21, 0x0

    goto :goto_5

    .line 1419
    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v37    # "mesg":Landroid/os/Message;
    :cond_14
    const/16 v21, 0x0

    goto :goto_5

    .line 1434
    .end local v21    # "bStart":Z
    .end local v42    # "servname":Landroid/broadcast/helper/types/MtvOneSegChannel;
    :sswitch_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_0

    .line 1436
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x72

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1100(Landroid/broadcast/oneseg/MtvOneSegService;)V

    goto/16 :goto_0

    .line 1444
    :sswitch_6
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_15

    .line 1446
    const/4 v2, 0x0

    const/16 v3, 0x6a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v37

    .line 1448
    .restart local v37    # "mesg":Landroid/os/Message;
    :try_start_2
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1300()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v3}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1200(Landroid/broadcast/oneseg/MtvOneSegService;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1449
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 1450
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1402(Landroid/broadcast/oneseg/MtvOneSegService;Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1451
    :catch_2
    move-exception v28

    .line 1452
    .restart local v28    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1456
    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v37    # "mesg":Landroid/os/Message;
    :cond_15
    const-string v2, "MtvOneSegService"

    const-string v3, "Not able to send CAPTURE_FRAME to Remote service"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1462
    :sswitch_7
    const/16 v16, 0x0

    .line 1464
    .local v16, "bRecord":Z
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_16

    .line 1466
    new-instance v31, Landroid/os/Bundle;

    invoke-direct/range {v31 .. v31}, Landroid/os/Bundle;-><init>()V

    .line 1467
    .local v31, "mBundle":Landroid/os/Bundle;
    const-string v3, "MTV_REC_CMD_DATA"

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    const/4 v2, 0x0

    const/16 v3, 0x67

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-static {v2, v3, v4, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v37

    .line 1471
    .restart local v37    # "mesg":Landroid/os/Message;
    :try_start_3
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1472
    const/16 v16, 0x1

    .line 1483
    .end local v31    # "mBundle":Landroid/os/Bundle;
    .end local v37    # "mesg":Landroid/os/Message;
    :goto_6
    if-nez v16, :cond_0

    .line 1484
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x67

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1473
    .restart local v31    # "mBundle":Landroid/os/Bundle;
    .restart local v37    # "mesg":Landroid/os/Message;
    :catch_3
    move-exception v28

    .line 1475
    .restart local v28    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1476
    const/16 v16, 0x0

    goto :goto_6

    .line 1480
    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v31    # "mBundle":Landroid/os/Bundle;
    .end local v37    # "mesg":Landroid/os/Message;
    :cond_16
    const/16 v16, 0x0

    goto :goto_6

    .line 1490
    .end local v16    # "bRecord":Z
    :sswitch_8
    const/16 v16, 0x0

    .line 1491
    .restart local v16    # "bRecord":Z
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_17

    .line 1493
    const/4 v2, 0x0

    const/16 v3, 0x68

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v37

    .line 1495
    .restart local v37    # "mesg":Landroid/os/Message;
    :try_start_4
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1496
    const/16 v16, 0x1

    .line 1508
    .end local v37    # "mesg":Landroid/os/Message;
    :goto_7
    if-nez v16, :cond_0

    .line 1509
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x68

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1497
    .restart local v37    # "mesg":Landroid/os/Message;
    :catch_4
    move-exception v28

    .line 1499
    .restart local v28    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1500
    const/16 v16, 0x0

    goto :goto_7

    .line 1504
    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v37    # "mesg":Landroid/os/Message;
    :cond_17
    const/16 v16, 0x0

    goto :goto_7

    .line 1515
    .end local v16    # "bRecord":Z
    :sswitch_9
    const/16 v16, 0x0

    .line 1516
    .restart local v16    # "bRecord":Z
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_18

    .line 1518
    const/4 v2, 0x0

    const/16 v3, 0x69

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v37

    .line 1520
    .restart local v37    # "mesg":Landroid/os/Message;
    :try_start_5
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1521
    const/16 v16, 0x1

    .line 1532
    .end local v37    # "mesg":Landroid/os/Message;
    :goto_8
    if-nez v16, :cond_0

    .line 1533
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x69

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1522
    .restart local v37    # "mesg":Landroid/os/Message;
    :catch_5
    move-exception v28

    .line 1524
    .restart local v28    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1525
    const/16 v16, 0x0

    goto :goto_8

    .line 1529
    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v37    # "mesg":Landroid/os/Message;
    :cond_18
    const/16 v16, 0x0

    goto :goto_8

    .line 1549
    .end local v16    # "bRecord":Z
    :sswitch_a
    const/16 v20, 0x0

    .line 1550
    .local v20, "bScan":Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 1571
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Command ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in SCAN. Failure in SCAN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    :goto_9
    if-nez v20, :cond_0

    .line 1577
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x6b

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1553
    :pswitch_0
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_19

    .line 1555
    const/4 v2, 0x0

    const/16 v3, 0x6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v37

    .line 1557
    .restart local v37    # "mesg":Landroid/os/Message;
    :try_start_6
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1558
    const/16 v20, 0x1

    goto :goto_9

    .line 1559
    :catch_6
    move-exception v28

    .line 1561
    .restart local v28    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1562
    const/16 v20, 0x0

    goto :goto_9

    .line 1566
    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v37    # "mesg":Landroid/os/Message;
    :cond_19
    const/16 v20, 0x0

    .line 1569
    goto :goto_9

    .line 1584
    .end local v20    # "bScan":Z
    :sswitch_b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_1a

    .line 1586
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    .line 1587
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->SCAN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    goto/16 :goto_0

    .line 1588
    :cond_1a
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_1b

    .line 1590
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x6b

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1591
    :cond_1b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xca

    if-ne v2, v3, :cond_0

    .line 1593
    const/16 v33, 0x0

    .line 1594
    .local v33, "mChannels":[Landroid/broadcast/helper/types/MtvOneSegChannel;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1c

    .line 1596
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/broadcast/oneseg/MtvOneSegService;->getChannelFromBundle(Landroid/os/Bundle;)[Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v33

    .line 1598
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x6b

    const/16 v4, 0xca

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v33

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1603
    .end local v33    # "mChannels":[Landroid/broadcast/helper/types/MtvOneSegChannel;
    :sswitch_c
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got CMD_CANCEL_SCAN in thread:: Current Scan ChnlIndex ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1500()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1600(Landroid/broadcast/oneseg/MtvOneSegService;)V

    goto/16 :goto_0

    .line 1610
    :sswitch_d
    const/4 v15, 0x0

    .line 1611
    .local v15, "bPause":Z
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_1d

    .line 1613
    const/4 v2, 0x0

    const/16 v3, 0x6d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v37

    .line 1615
    .restart local v37    # "mesg":Landroid/os/Message;
    :try_start_7
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1616
    const/4 v15, 0x1

    .line 1625
    .end local v37    # "mesg":Landroid/os/Message;
    :goto_a
    if-nez v15, :cond_0

    .line 1626
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x6d

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1617
    .restart local v37    # "mesg":Landroid/os/Message;
    :catch_7
    move-exception v28

    .line 1618
    .restart local v28    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1619
    const/4 v15, 0x0

    goto :goto_a

    .line 1622
    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v37    # "mesg":Landroid/os/Message;
    :cond_1d
    const/4 v15, 0x0

    goto :goto_a

    .line 1632
    .end local v15    # "bPause":Z
    :sswitch_e
    const/16 v18, 0x0

    .line 1633
    .local v18, "bResume":Z
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_1e

    .line 1635
    const/4 v2, 0x0

    const/16 v3, 0x6e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v37

    .line 1637
    .restart local v37    # "mesg":Landroid/os/Message;
    :try_start_8
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1638
    const/16 v18, 0x1

    .line 1647
    .end local v37    # "mesg":Landroid/os/Message;
    :goto_b
    if-nez v18, :cond_0

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x6e

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1639
    .restart local v37    # "mesg":Landroid/os/Message;
    :catch_8
    move-exception v28

    .line 1640
    .restart local v28    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1641
    const/16 v18, 0x0

    goto :goto_b

    .line 1644
    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v37    # "mesg":Landroid/os/Message;
    :cond_1e
    const/16 v18, 0x0

    goto :goto_b

    .line 1654
    .end local v18    # "bResume":Z
    :sswitch_f
    const/16 v24, 0x0

    .line 1655
    .local v24, "bTrickMode":Z
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_1f

    .line 1657
    new-instance v31, Landroid/os/Bundle;

    invoke-direct/range {v31 .. v31}, Landroid/os/Bundle;-><init>()V

    .line 1658
    .restart local v31    # "mBundle":Landroid/os/Bundle;
    const-string v3, "TRICK_CURR_TIME"

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1659
    const/4 v2, 0x0

    const/16 v3, 0x6f

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v31

    invoke-static {v2, v3, v4, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v37

    .line 1661
    .restart local v37    # "mesg":Landroid/os/Message;
    :try_start_9
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1662
    const/16 v24, 0x1

    .line 1671
    .end local v31    # "mBundle":Landroid/os/Bundle;
    .end local v37    # "mesg":Landroid/os/Message;
    :goto_c
    if-nez v24, :cond_0

    .line 1672
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x6f

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1663
    .restart local v31    # "mBundle":Landroid/os/Bundle;
    .restart local v37    # "mesg":Landroid/os/Message;
    :catch_9
    move-exception v28

    .line 1664
    .restart local v28    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1665
    const/16 v24, 0x0

    goto :goto_c

    .line 1668
    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v31    # "mBundle":Landroid/os/Bundle;
    .end local v37    # "mesg":Landroid/os/Message;
    :cond_1f
    const/16 v24, 0x0

    goto :goto_c

    .line 1687
    .end local v24    # "bTrickMode":Z
    :sswitch_10
    const/16 v17, 0x0

    .line 1688
    .local v17, "bReposition":Z
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_20

    .line 1690
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v41, v0

    .line 1691
    .local v41, "reposTimeStamp":I
    const/4 v2, 0x0

    const/16 v3, 0x70

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v41

    invoke-static {v2, v3, v0, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v37

    .line 1693
    .restart local v37    # "mesg":Landroid/os/Message;
    :try_start_a
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    .line 1694
    const/16 v17, 0x1

    .line 1703
    .end local v37    # "mesg":Landroid/os/Message;
    .end local v41    # "reposTimeStamp":I
    :goto_d
    if-nez v17, :cond_0

    .line 1704
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x70

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1695
    .restart local v37    # "mesg":Landroid/os/Message;
    .restart local v41    # "reposTimeStamp":I
    :catch_a
    move-exception v28

    .line 1696
    .restart local v28    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1697
    const/16 v17, 0x0

    goto :goto_d

    .line 1700
    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v37    # "mesg":Landroid/os/Message;
    .end local v41    # "reposTimeStamp":I
    :cond_20
    const/16 v17, 0x0

    goto :goto_d

    .line 1710
    .end local v17    # "bReposition":Z
    :sswitch_11
    const/16 v22, 0x0

    .line 1712
    .local v22, "bStartTvLink":Z
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 1713
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/broadcast/helper/types/MtvOneSegTVLink;

    invoke-virtual {v3, v2}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->openTvLink(Landroid/broadcast/helper/types/MtvOneSegTVLink;)Z

    move-result v22

    .line 1718
    :goto_e
    if-nez v22, :cond_0

    .line 1719
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x73

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1715
    :cond_21
    const-string v2, "MtvOneSegService"

    const-string v3, "Invalid BML Instance. Failure in startTVLink() -- But How come TV is PLAYING still?!!? "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1725
    .end local v22    # "bStartTvLink":Z
    :sswitch_12
    const/16 v23, 0x0

    .line 1727
    .local v23, "bStopTvLink":Z
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 1729
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->closeTVLink(I)Z

    move-result v23

    .line 1736
    :goto_f
    if-nez v23, :cond_0

    .line 1737
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x74

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1733
    :cond_22
    const-string v2, "MtvOneSegService"

    const-string v3, "Invalid BML Instance. Failure in stopTVLink() -- But How come TV is PLAYING still?!!? "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 1743
    .end local v23    # "bStopTvLink":Z
    :sswitch_13
    const/4 v13, 0x0

    .line 1744
    .local v13, "bDeleteTvLink":Z
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting tvlink with index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 1746
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->DeleteTvLink(I)Z

    move-result v13

    .line 1747
    const/4 v2, 0x1

    if-ne v13, v2, :cond_23

    .line 1748
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x77

    const/16 v4, 0xc9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 1753
    :cond_23
    :goto_10
    if-nez v13, :cond_0

    .line 1754
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x77

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1750
    :cond_24
    const-string v2, "MtvOneSegService"

    const-string v3, "Invalid BML instance. failure in DeleteTVlink "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1759
    .end local v13    # "bDeleteTvLink":Z
    :sswitch_14
    const/4 v11, 0x0

    .line 1760
    .local v11, "bDeleteAllTvLink":Z
    const-string v2, "MtvOneSegService"

    const-string v3, "Deleting all tvlinks  "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1762
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->DeleteAllTvLink()Z

    move-result v11

    .line 1763
    const/4 v2, 0x1

    if-ne v11, v2, :cond_25

    .line 1764
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x78

    const/16 v4, 0xc9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 1768
    :cond_25
    :goto_11
    if-nez v11, :cond_0

    .line 1769
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x78

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1766
    :cond_26
    const-string v2, "MtvOneSegService"

    const-string v3, "Invalid BML instance. failure in DeleteAllTvLink "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1774
    .end local v11    # "bDeleteAllTvLink":Z
    :sswitch_15
    const/4 v10, 0x0

    .line 1775
    .local v10, "bDeleteAffiTvLink":Z
    const-string v2, "MtvOneSegService"

    const-string v3, "Deleting all AffililiationAreas  "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1777
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->DeleteAllAffililiationAreas()Z

    move-result v10

    .line 1778
    const/4 v2, 0x1

    if-ne v10, v2, :cond_27

    .line 1779
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x79

    const/16 v4, 0xc9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 1783
    :cond_27
    :goto_12
    if-nez v10, :cond_0

    .line 1784
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x79

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1781
    :cond_28
    const-string v2, "MtvOneSegService"

    const-string v3, "Invalid BML instance. failure in AffililiationAreas() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 1790
    .end local v10    # "bDeleteAffiTvLink":Z
    :sswitch_16
    const/4 v12, 0x0

    .line 1791
    .local v12, "bDeleteBroCstAreaTvLink":Z
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting Broacaster area with affilication id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " origin Net id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 1793
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->DeleteBroadCasterArea(II)Z

    move-result v12

    .line 1794
    const/4 v2, 0x1

    if-ne v12, v2, :cond_29

    .line 1795
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x7a

    const/16 v4, 0xc9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 1800
    :cond_29
    :goto_13
    if-nez v12, :cond_0

    .line 1801
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x7a

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1797
    :cond_2a
    const-string v2, "MtvOneSegService"

    const-string v3, "Invalid BML instance. failure in DeleteBroadCasterArea() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1813
    .end local v12    # "bDeleteBroCstAreaTvLink":Z
    :sswitch_17
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v2

    sget-object v3, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->SCAN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v2, v3, :cond_2b

    .line 1814
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1600(Landroid/broadcast/oneseg/MtvOneSegService;)V

    .line 1816
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1100(Landroid/broadcast/oneseg/MtvOneSegService;)V

    .line 1817
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    goto/16 :goto_0

    .line 1830
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1700(Landroid/broadcast/oneseg/MtvOneSegService;)V

    goto/16 :goto_0

    .line 1850
    :sswitch_19
    const/4 v9, 0x0

    .line 1851
    .local v9, "bDelTVFile":Z
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_2c

    .line 1853
    const/4 v2, 0x0

    const/16 v3, 0x132

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v37

    .line 1855
    .restart local v37    # "mesg":Landroid/os/Message;
    :try_start_b
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    .line 1856
    const/4 v9, 0x1

    .line 1866
    .end local v37    # "mesg":Landroid/os/Message;
    :goto_14
    if-nez v9, :cond_0

    .line 1867
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x71

    const/16 v4, 0xda

    const/16 v5, 0xcb

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1857
    .restart local v37    # "mesg":Landroid/os/Message;
    :catch_b
    move-exception v28

    .line 1859
    .restart local v28    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1860
    const/4 v9, 0x0

    goto :goto_14

    .line 1864
    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v37    # "mesg":Landroid/os/Message;
    :cond_2c
    const/4 v9, 0x0

    goto :goto_14

    .line 1873
    .end local v9    # "bDelTVFile":Z
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x71

    const/16 v4, 0xda

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1878
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v4, 0x71

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v7, v2}, Landroid/broadcast/oneseg/MtvOneSegService;->getSignalInfoFromBundle(Landroid/os/Bundle;)Landroid/broadcast/helper/types/MtvOneSegSignal;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1882
    :sswitch_1c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_1

    .line 1973
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Status ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] with MW OPEN Command. Ignoring.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1884
    :sswitch_1d
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v27

    .line 1885
    .local v27, "curState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-object/from16 v0, v27

    if-eq v0, v2, :cond_2d

    .line 1886
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/broadcast/oneseg/MtvOneSegService;->getChannelFromBundle(Landroid/os/Bundle;)[Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v32

    .line 1887
    .local v32, "mChannelInfo":[Landroid/broadcast/helper/types/MtvOneSegChannel;
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 1888
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x66

    const/16 v4, 0xc9

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1892
    .end local v32    # "mChannelInfo":[Landroid/broadcast/helper/types/MtvOneSegChannel;
    :cond_2d
    const-string v2, "MtvOneSegService"

    const-string v3, "Looks like Received OPEN SUCCESS Multiple Times, Ignoring it now. Correct me if i\'m wrong.!!! "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1913
    .end local v27    # "curState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    :sswitch_1e
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v27

    .line 1914
    .restart local v27    # "curState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-object/from16 v0, v27

    if-ne v0, v2, :cond_2e

    .line 1915
    const-string v2, "MtvOneSegService"

    const-string v3, "Looks like no data from demuxer -- Okie!! Close TV !! "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x66

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    .line 1917
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1100(Landroid/broadcast/oneseg/MtvOneSegService;)V

    goto/16 :goto_0

    .line 1918
    :cond_2e
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-object/from16 v0, v27

    if-eq v0, v2, :cond_2f

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-object/from16 v0, v27

    if-ne v0, v2, :cond_30

    .line 1919
    :cond_2f
    const-string v2, "MtvOneSegService"

    const-string v3, "STAT_FAILURE recieved in OPEN or START State !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x66

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    .line 1921
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1100(Landroid/broadcast/oneseg/MtvOneSegService;)V

    goto/16 :goto_0

    .line 1923
    :cond_30
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. What am I suppose to do with TUNER_FAILURE ??"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1929
    .end local v27    # "curState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    :sswitch_1f
    const-string v2, "MtvOneSegService"

    const-string v3, "Got EIT Received from below!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v4, 0x71

    const/16 v5, 0xd0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v7, v2}, Landroid/broadcast/oneseg/MtvOneSegService;->getProgInfoFromBundle(Landroid/os/Bundle;)[Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1937
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x71

    const/16 v4, 0xdf

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1942
    :sswitch_21
    const-wide/16 v34, 0x0

    .line 1943
    .local v34, "mStreamTime":J
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/os/Bundle;

    .line 1944
    .restart local v31    # "mBundle":Landroid/os/Bundle;
    const-string v2, "MTV_STREAM_TIME"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v34

    .line 1945
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x71

    const/16 v4, 0xd1

    const/4 v5, 0x0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1950
    .end local v31    # "mBundle":Landroid/os/Bundle;
    .end local v34    # "mStreamTime":J
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x72

    const/16 v4, 0xd7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1955
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x72

    const/16 v4, 0xd6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1960
    :sswitch_24
    const/16 v2, 0x10

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$776(I)I

    .line 1961
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$700()I

    move-result v3

    invoke-static {v2, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1800(Landroid/broadcast/oneseg/MtvOneSegService;I)V

    goto/16 :goto_0

    .line 1966
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    .line 1967
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 1968
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x72

    const/16 v4, 0xc9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 1969
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x72

    const/16 v4, 0xd6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1984
    :sswitch_26
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    .line 1985
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x6b

    const/16 v4, 0xca

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1500()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 1990
    :goto_15
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1508()I

    goto/16 :goto_0

    .line 1988
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x6b

    const/16 v4, 0xca

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1500()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto :goto_15

    .line 1996
    :sswitch_27
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v2

    sget-object v3, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->SCAN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v2, v3, :cond_32

    .line 1998
    const/16 v2, 0x11

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$776(I)I

    .line 1999
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDtvControl.CMD_CLOSE :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$700()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$700()I

    move-result v3

    invoke-static {v2, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1800(Landroid/broadcast/oneseg/MtvOneSegService;I)V

    goto/16 :goto_0

    .line 2002
    :cond_32
    const-string v2, "MtvOneSegService"

    const-string v3, "Resetting scan variables and setting the state as CREATE"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    const/16 v2, 0xd

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1502(I)I

    .line 2004
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 2005
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1900()Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2007
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1900()Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    move-result-object v3

    invoke-static {v3}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$300(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)I

    move-result v3

    const/16 v4, 0xc9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 2008
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    goto/16 :goto_0

    .line 2017
    :sswitch_28
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->IDLE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 2018
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x76

    const/16 v4, 0xc9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 2021
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$2000(Landroid/broadcast/oneseg/MtvOneSegService;)V

    goto/16 :goto_0

    .line 2028
    :sswitch_29
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_33

    .line 2030
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 2031
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x72

    const/16 v4, 0xc9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2033
    :cond_33
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 2035
    const-string v2, "MtvOneSegService"

    const-string v3, "Failure in Play ! "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x72

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2042
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1400(Landroid/broadcast/oneseg/MtvOneSegService;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2043
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1402(Landroid/broadcast/oneseg/MtvOneSegService;Z)Z

    .line 2044
    :cond_34
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1300()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {v3}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1200(Landroid/broadcast/oneseg/MtvOneSegService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2045
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_35

    .line 2046
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x6a

    const/16 v4, 0xc9

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2048
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x6a

    const/16 v4, 0xcb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2053
    :sswitch_2b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    .line 2054
    .local v43, "status":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    .line 2055
    .local v38, "objInfo":Ljava/lang/Object;
    const/16 v2, 0xc9

    move/from16 v0, v43

    if-ne v0, v2, :cond_37

    .line 2057
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->REC_OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 2093
    .end local v38    # "objInfo":Ljava/lang/Object;
    :cond_36
    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    move/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2059
    .restart local v38    # "objInfo":Ljava/lang/Object;
    :cond_37
    const/16 v2, 0xde

    move/from16 v0, v43

    if-ne v0, v2, :cond_38

    .line 2061
    const-string v2, "MtvOneSegService"

    const-string v3, "Got Tuner Failure ! Cleaning Up the Middleware States !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Landroid/broadcast/oneseg/MtvOneSegService;->access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V

    .line 2065
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_36

    .line 2067
    const-string v2, "MtvOneSegService"

    const-string v3, "Sending message to remote service to close SDTV..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    const/4 v2, 0x0

    const/16 v3, 0x75

    sget-object v4, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->REC_OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-virtual {v4}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v37

    .line 2071
    .restart local v37    # "mesg":Landroid/os/Message;
    :try_start_c
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_16

    .line 2072
    :catch_c
    move-exception v28

    .line 2074
    .restart local v28    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v28 .. v28}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_16

    .line 2079
    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v37    # "mesg":Landroid/os/Message;
    :cond_38
    const/16 v2, 0xdd

    move/from16 v0, v43

    if-ne v0, v2, :cond_39

    .line 2081
    move-object/from16 v0, v38

    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_36

    .line 2083
    check-cast v38, Landroid/os/Bundle;

    .end local v38    # "objInfo":Ljava/lang/Object;
    const-string v2, "CHNL_NAME"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .local v38, "objInfo":Ljava/lang/String;
    goto :goto_16

    .line 2086
    .local v38, "objInfo":Ljava/lang/Object;
    :cond_39
    const/16 v2, 0xdc

    move/from16 v0, v43

    if-ne v0, v2, :cond_36

    .line 2088
    move-object/from16 v0, v38

    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_36

    .line 2090
    check-cast v38, Landroid/os/Bundle;

    .end local v38    # "objInfo":Ljava/lang/Object;
    const-string v2, "PROG_NAME"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .local v38, "objInfo":Ljava/lang/String;
    goto :goto_16

    .line 2097
    .end local v38    # "objInfo":Ljava/lang/String;
    .end local v43    # "status":I
    :sswitch_2c
    const/16 v36, 0x0

    .line 2098
    .local v36, "mThumbnailName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_3a

    .line 2100
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/os/Bundle;

    .line 2101
    .restart local v31    # "mBundle":Landroid/os/Bundle;
    if-eqz v31, :cond_3a

    .line 2103
    const-string v2, "REC_THUMBNAIL_NAME"

    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 2107
    .end local v31    # "mBundle":Landroid/os/Bundle;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x67

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2116
    .end local v36    # "mThumbnailName":Ljava/lang/String;
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x69

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2121
    :sswitch_2e
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 2122
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x80

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2126
    :sswitch_2f
    const/16 v43, 0xcb

    .line 2128
    .restart local v43    # "status":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    .line 2129
    const/16 v43, 0xc9

    .line 2130
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->PAUSE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 2132
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x6d

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x0

    move/from16 v0, v43

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2137
    .end local v43    # "status":I
    :sswitch_30
    const/16 v43, 0xcb

    .line 2139
    .restart local v43    # "status":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3c

    .line 2140
    const/16 v43, 0xc9

    .line 2141
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 2143
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x6e

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x0

    move/from16 v0, v43

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2147
    .end local v43    # "status":I
    :sswitch_31
    const/16 v43, 0xcb

    .line 2148
    .restart local v43    # "status":I
    const/16 v29, 0x0

    .line 2149
    .local v29, "extraInfo":Ljava/lang/Integer;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3e

    .line 2150
    const/16 v43, 0xc9

    .line 2151
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "REPOSITION_TIME"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 2155
    :cond_3d
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x70

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2152
    :cond_3e
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v3, 0x1009

    if-ne v2, v3, :cond_3d

    .line 2153
    const/16 v43, 0xca

    goto :goto_17

    .line 2160
    .end local v29    # "extraInfo":Ljava/lang/Integer;
    .end local v43    # "status":I
    :sswitch_32
    const/16 v43, 0xcb

    .line 2161
    .restart local v43    # "status":I
    const/16 v29, 0x0

    .line 2162
    .restart local v29    # "extraInfo":Ljava/lang/Integer;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_2

    .line 2199
    :goto_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x6f

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2166
    :sswitch_33
    const/16 v43, 0xca

    .line 2167
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "TRICK_TIME"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 2169
    goto :goto_18

    .line 2172
    :sswitch_34
    const/16 v43, 0xc9

    .line 2173
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "TRICK_TIME"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 2175
    goto :goto_18

    .line 2178
    :sswitch_35
    const/16 v43, 0xd6

    .line 2180
    goto :goto_18

    .line 2183
    :sswitch_36
    const/16 v43, 0xcb

    .line 2185
    goto :goto_18

    .line 2203
    .end local v29    # "extraInfo":Ljava/lang/Integer;
    .end local v43    # "status":I
    :sswitch_37
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_3

    goto/16 :goto_0

    .line 2244
    :sswitch_38
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v4, 0x71

    const/16 v5, 0xdd

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v7, v2}, Landroid/broadcast/oneseg/MtvOneSegService;->getChannelFromBundle(Landroid/os/Bundle;)[Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2207
    :sswitch_39
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v4}, Landroid/broadcast/oneseg/MtvOneSegService;->access$2100(Landroid/broadcast/oneseg/MtvOneSegService;II)V

    goto/16 :goto_0

    .line 2212
    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x71

    const/16 v4, 0xde

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2216
    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x71

    const/16 v4, 0xd2

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2222
    :sswitch_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 2223
    .local v26, "captionBundle":Landroid/os/Bundle;
    const-string v2, "CAPTION_ARRAY"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v25

    .line 2224
    .local v25, "capArray":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/broadcast/oneseg/MtvOneSegService;->parseCCData([B)V

    goto/16 :goto_0

    .line 2229
    .end local v25    # "capArray":[B
    .end local v26    # "captionBundle":Landroid/os/Bundle;
    :sswitch_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x71

    const/16 v4, 0xd4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2234
    :sswitch_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x71

    const/16 v4, 0xd5

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2239
    :sswitch_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x71

    const/16 v4, 0xcf

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2261
    :sswitch_40
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v4, 0x71

    const/16 v5, 0xe8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v7, v2}, Landroid/broadcast/oneseg/MtvOneSegService;->getChannelFromBundle(Landroid/os/Bundle;)[Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2266
    :sswitch_41
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x71

    const/16 v4, 0xe1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2278
    :sswitch_42
    const-string v2, "MtvOneSegService"

    const-string v3, "Got HALT from BML"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    const/16 v2, 0x100

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->access$776(I)I

    .line 2280
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BMLNativeConstants.SLIM_DTV_HALT_NONE :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$700()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->access$700()I

    move-result v3

    invoke-static {v2, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->access$1800(Landroid/broadcast/oneseg/MtvOneSegService;I)V

    goto/16 :goto_0

    .line 2287
    :sswitch_43
    const-string v2, "MtvOneSegService"

    const-string v3, "Got  TVLINK_START success  from TV LINK"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x73

    const/16 v4, 0xc9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2294
    :sswitch_44
    const-string v2, "MtvOneSegService"

    const-string v3, "Got HALT from TV LINK"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/broadcast/oneseg/MtvOneSegService$2;->this$0:Landroid/broadcast/oneseg/MtvOneSegService;

    const/16 v3, 0x74

    const/16 v4, 0xc9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1224
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_42
        0x1 -> :sswitch_42
        0x8 -> :sswitch_43
        0x20 -> :sswitch_19
        0x65 -> :sswitch_0
        0x66 -> :sswitch_2
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_9
        0x6a -> :sswitch_6
        0x6b -> :sswitch_a
        0x6c -> :sswitch_c
        0x6d -> :sswitch_d
        0x6e -> :sswitch_e
        0x6f -> :sswitch_f
        0x70 -> :sswitch_10
        0x72 -> :sswitch_4
        0x73 -> :sswitch_11
        0x74 -> :sswitch_12
        0x75 -> :sswitch_17
        0x76 -> :sswitch_18
        0x77 -> :sswitch_13
        0x78 -> :sswitch_14
        0x79 -> :sswitch_15
        0x7a -> :sswitch_16
        0x12d -> :sswitch_1
        0x12e -> :sswitch_3
        0x12f -> :sswitch_2c
        0x130 -> :sswitch_2d
        0x131 -> :sswitch_2d
        0x132 -> :sswitch_1a
        0x133 -> :sswitch_b
        0x138 -> :sswitch_1b
        0x13a -> :sswitch_5
        0x140 -> :sswitch_2a
        0x141 -> :sswitch_2b
        0x142 -> :sswitch_2e
        0x502 -> :sswitch_1c
        0x503 -> :sswitch_27
        0x504 -> :sswitch_28
        0x505 -> :sswitch_26
        0x602 -> :sswitch_29
        0x603 -> :sswitch_2f
        0x604 -> :sswitch_30
        0x605 -> :sswitch_31
        0x606 -> :sswitch_32
        0x1000 -> :sswitch_37
        0x8001 -> :sswitch_44
    .end sparse-switch

    .line 1550
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1882
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_1e
        0x1 -> :sswitch_1d
        0x20 -> :sswitch_21
        0x200 -> :sswitch_1f
        0x505 -> :sswitch_20
        0x509 -> :sswitch_23
        0x50b -> :sswitch_25
        0x50c -> :sswitch_24
        0x50e -> :sswitch_22
    .end sparse-switch

    .line 2162
    :sswitch_data_2
    .sparse-switch
        -0x1 -> :sswitch_36
        0x1 -> :sswitch_34
        0x509 -> :sswitch_35
        0x50a -> :sswitch_33
    .end sparse-switch

    .line 2203
    :sswitch_data_3
    .sparse-switch
        0x8 -> :sswitch_38
        0x1001 -> :sswitch_39
        0x1002 -> :sswitch_39
        0x1003 -> :sswitch_39
        0x1004 -> :sswitch_3f
        0x1005 -> :sswitch_3b
        0x1006 -> :sswitch_3c
        0x1007 -> :sswitch_3d
        0x1008 -> :sswitch_3e
        0x100a -> :sswitch_40
        0x100b -> :sswitch_3a
        0x100c -> :sswitch_41
    .end sparse-switch
.end method
