.class Lcom/sec/minimode/manager/MiniModeAppManagerService$2;
.super Landroid/os/Handler;
.source "MiniModeAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/minimode/manager/MiniModeAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;


# direct methods
.method constructor <init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 577
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 773
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 579
    :pswitch_1
    new-instance v22, Landroid/content/Intent;

    const-string v21, "com.samsung.action.MINI_MODE_SERVICE"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/content/ComponentName;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v13

    .line 581
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$500(Lcom/sec/minimode/manager/MiniModeAppManagerService;I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v16

    .line 582
    .local v16, "policy":Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    if-nez v16, :cond_1

    .line 583
    const-string v21, "MiniModeAppManager"

    const-string v22, "can not start MiniMode app : undefinded policy."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 775
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v16    # "policy":Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    :catch_0
    move-exception v21

    goto :goto_0

    .line 587
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v16    # "policy":Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    :cond_1
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;

    .line 588
    .local v9, "cd":Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;
    invoke-virtual {v9}, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;->getClientComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 590
    .local v10, "cn":Landroid/content/ComponentName;
    const-string v21, "window.pos.x"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->getLastPosition(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    const-string v21, "window.pos.y"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->getLastPosition(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$600(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 596
    .end local v9    # "cd":Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v16    # "policy":Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    :pswitch_2
    new-instance v22, Landroid/content/Intent;

    const-string v21, "com.samsung.action.MINI_MODE_SERVICE"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/content/ComponentName;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v13

    .line 597
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v21, "window.pos.x"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 598
    const-string v21, "window.pos.y"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$600(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 603
    .end local v13    # "intent":Landroid/content/Intent;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$600(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/content/Context;

    move-result-object v22

    new-instance v23, Landroid/content/Intent;

    const-string v21, "com.samsung.action.MINI_MODE_SERVICE"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 609
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/util/Pair;

    .line 610
    .local v15, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;>;"
    iget-object v14, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Landroid/content/ComponentName;

    .line 611
    .local v14, "name":Landroid/content/ComponentName;
    iget-object v8, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .line 612
    .local v8, "cb":Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$700(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/HashMap;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;Ljava/util/Map;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v14}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$700(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/HashMap;

    move-result-object v21

    invoke-interface {v8}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$700(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/HashMap;

    move-result-object v21

    invoke-interface {v8}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$700(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/HashMap;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;Ljava/util/Map;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->isInstalledMiniApp(Landroid/content/ComponentName;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$1000(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/List;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$1100(Lcom/sec/minimode/manager/MiniModeAppManagerService;Ljava/util/List;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$1000(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$1000(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$1000(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/List;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$1100(Lcom/sec/minimode/manager/MiniModeAppManagerService;Ljava/util/List;)V

    goto/16 :goto_0

    .line 632
    .end local v8    # "cb":Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .end local v14    # "name":Landroid/content/ComponentName;
    .end local v15    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;>;"
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .line 633
    .local v7, "callback":Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$700(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/HashMap;

    move-result-object v21

    invoke-interface {v7}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ComponentName;

    .line 635
    .restart local v14    # "name":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->isInstalledMiniApp(Landroid/content/ComponentName;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$1000(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/List;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$1100(Lcom/sec/minimode/manager/MiniModeAppManagerService;Ljava/util/List;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$1000(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$1000(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/List;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$1100(Lcom/sec/minimode/manager/MiniModeAppManagerService;Ljava/util/List;)V

    .line 641
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .line 645
    .end local v7    # "callback":Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .end local v14    # "name":Landroid/content/ComponentName;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/content/ComponentName;

    .line 646
    .restart local v14    # "name":Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const/4 v11, 0x1

    .line 648
    .local v11, "hasFocus":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 650
    .local v5, "N":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v5, :cond_5

    .line 652
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    move-object/from16 v0, v21

    invoke-interface {v0, v14, v11}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->focusChanged(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 650
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 646
    .end local v5    # "N":I
    .end local v11    # "hasFocus":Z
    .end local v12    # "i":I
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 659
    .restart local v5    # "N":I
    .restart local v11    # "hasFocus":Z
    .restart local v12    # "i":I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .line 664
    .end local v5    # "N":I
    .end local v11    # "hasFocus":Z
    .end local v12    # "i":I
    .end local v14    # "name":Landroid/content/ComponentName;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;

    .line 665
    .restart local v9    # "cd":Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-virtual {v9}, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;->getClientPolicyMode()I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$500(Lcom/sec/minimode/manager/MiniModeAppManagerService;I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v16

    .line 666
    .restart local v16    # "policy":Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    if-nez v16, :cond_6

    .line 667
    const-string v21, "MiniModeAppManager"

    const-string v22, "can not start MiniMode app : undefinded policy."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 671
    :cond_6
    invoke-virtual {v9}, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;->getClientComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 672
    .restart local v10    # "cn":Landroid/content/ComponentName;
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 673
    .local v17, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->setLastPosition(Landroid/content/ComponentName;Landroid/graphics/Rect;)V

    .line 674
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->addPosion(Landroid/content/ComponentName;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 683
    .end local v9    # "cd":Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v16    # "policy":Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    .end local v17    # "rect":Landroid/graphics/Rect;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;

    .line 684
    .restart local v9    # "cd":Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-virtual {v9}, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;->getClientPolicyMode()I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$500(Lcom/sec/minimode/manager/MiniModeAppManagerService;I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v16

    .line 685
    .restart local v16    # "policy":Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    if-nez v16, :cond_7

    .line 686
    const-string v21, "MiniModeAppManager"

    const-string v22, "can not start MiniMode app : undefinded policy."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 690
    :cond_7
    invoke-virtual {v9}, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;->getClientComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 691
    .restart local v10    # "cn":Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v10, v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->setLastSize(Landroid/content/ComponentName;II)V

    goto/16 :goto_0

    .line 695
    .end local v9    # "cd":Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v16    # "policy":Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/ComponentName;

    .line 696
    .local v18, "targetApp":Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 697
    .local v19, "x":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 700
    .local v20, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 702
    .restart local v5    # "N":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    if-ge v12, v5, :cond_8

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 704
    .restart local v10    # "cn":Landroid/content/ComponentName;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v21

    if-eqz v21, :cond_9

    .line 706
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->movementRequested(Landroid/content/ComponentName;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 715
    .end local v10    # "cn":Landroid/content/ComponentName;
    :cond_8
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .line 702
    .restart local v10    # "cn":Landroid/content/ComponentName;
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 720
    .end local v5    # "N":I
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v12    # "i":I
    .end local v18    # "targetApp":Landroid/content/ComponentName;
    .end local v19    # "x":I
    .end local v20    # "y":I
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 721
    .restart local v5    # "N":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v21, :cond_a

    .line 722
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_6
    if-ge v12, v5, :cond_b

    .line 724
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->closeAllRequested()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 722
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 730
    .end local v12    # "i":I
    :cond_a
    :try_start_6
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/ComponentName;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 731
    .local v6, "RequestingApp":Landroid/content/ComponentName;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_8
    if-ge v12, v5, :cond_b

    .line 733
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->closeRequestedFrom(Landroid/content/ComponentName;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 731
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 740
    .end local v6    # "RequestingApp":Landroid/content/ComponentName;
    :cond_b
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .line 745
    .end local v5    # "N":I
    .end local v12    # "i":I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result v5

    .line 746
    .restart local v5    # "N":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_a
    if-ge v12, v5, :cond_c

    .line 748
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->showAllRequested()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 746
    :goto_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 754
    :cond_c
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .line 759
    .end local v5    # "N":I
    .end local v12    # "i":I
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move-result v5

    .line 760
    .restart local v5    # "N":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_c
    if-ge v12, v5, :cond_d

    .line 762
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->hideAllRequested()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 760
    :goto_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 768
    :cond_d
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;->this$0:Lcom/sec/minimode/manager/MiniModeAppManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    .line 763
    :catch_1
    move-exception v21

    goto :goto_d

    .line 749
    :catch_2
    move-exception v21

    goto :goto_b

    .line 735
    .restart local v6    # "RequestingApp":Landroid/content/ComponentName;
    :catch_3
    move-exception v21

    goto/16 :goto_9

    .line 725
    .end local v6    # "RequestingApp":Landroid/content/ComponentName;
    :catch_4
    move-exception v21

    goto/16 :goto_7

    .line 707
    .restart local v10    # "cn":Landroid/content/ComponentName;
    .restart local v18    # "targetApp":Landroid/content/ComponentName;
    .restart local v19    # "x":I
    .restart local v20    # "y":I
    :catch_5
    move-exception v21

    goto/16 :goto_5

    .line 653
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v18    # "targetApp":Landroid/content/ComponentName;
    .end local v19    # "x":I
    .end local v20    # "y":I
    .restart local v11    # "hasFocus":Z
    .restart local v14    # "name":Landroid/content/ComponentName;
    :catch_6
    move-exception v21

    goto/16 :goto_3

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
