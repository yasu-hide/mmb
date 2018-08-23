.class Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;
.super Ljava/lang/Object;
.source "MmbFcControllerSv.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setStateChangeEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)V
    .locals 0

    .prologue
    .line 2392
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z
    .locals 11
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p2, "aWhat"    # I
    .param p3, "aExtra"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2400
    const/16 v2, 0x63

    .line 2401
    .local v2, "intstate":I
    const/4 v1, 0x0

    .line 2402
    .local v1, "intresult":I
    const/16 v3, 0xa

    .line 2403
    .local v3, "inttype":I
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v7, 0x0

    iput v7, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPlaySpeed:I

    .line 2406
    sparse-switch p2, :sswitch_data_0

    .line 2514
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mResultInfo:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2516
    const/16 v6, 0x63

    if-eq v2, v6, :cond_1

    .line 2518
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$1000(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;I)V

    .line 2521
    move v5, v2

    .line 2523
    .local v5, "tmpstate":I
    move v4, p3

    .line 2525
    .local v4, "tmpextra":I
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8$1;

    invoke-direct {v7, p0, v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;II)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2549
    .end local v4    # "tmpextra":I
    .end local v5    # "tmpstate":I
    :cond_1
    :goto_1
    return v10

    .line 2409
    :sswitch_0
    const/4 v2, 0x0

    .line 2410
    goto :goto_0

    .line 2413
    :sswitch_1
    const/16 v3, 0xb

    .line 2414
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v7, 0x1

    iput v7, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPlaySpeed:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2543
    :catch_0
    move-exception v0

    .line 2544
    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2418
    .end local v0    # "ex":Ljava/lang/Exception;
    :sswitch_2
    const/4 v2, 0x1

    .line 2419
    const/16 v3, 0xf

    .line 2420
    :try_start_1
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iput p3, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPlaySpeed:I

    goto :goto_0

    .line 2424
    :sswitch_3
    const/4 v2, 0x2

    .line 2425
    const/16 v3, 0x10

    .line 2426
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    neg-int v7, p3

    iput v7, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPlaySpeed:I

    goto :goto_0

    .line 2430
    :sswitch_4
    const/16 v3, 0xc

    .line 2431
    goto :goto_0

    .line 2434
    :sswitch_5
    const/16 v3, 0xd

    .line 2435
    goto :goto_0

    .line 2439
    :sswitch_6
    const/16 v3, 0x11

    .line 2440
    goto :goto_0

    .line 2443
    :sswitch_7
    const/16 v3, 0x12

    .line 2444
    goto :goto_0

    .line 2448
    :sswitch_8
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget v3, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAsyncType:I

    .line 2449
    const/16 v2, 0x9

    .line 2450
    goto :goto_0

    .line 2453
    :sswitch_9
    const/16 v2, 0xa

    .line 2454
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKGROUND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$600(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2455
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$700(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;Z)V

    .line 2456
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$800(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;Z)V

    .line 2458
    :cond_2
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STOPPED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->transit(Ljava/lang/Object;)V

    .line 2460
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$900(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->playErrorTermExpired()V

    goto/16 :goto_0

    .line 2464
    :sswitch_a
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-boolean v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->isOnPauseProcess:Z

    if-ne v6, v10, :cond_3

    .line 2465
    const/16 v3, 0x13

    .line 2466
    const/4 v1, 0x2

    .line 2467
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-boolean v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mSyncPlayFlag:Z

    if-eqz v6, :cond_0

    .line 2468
    const/16 v3, 0xb

    .line 2469
    const/16 v2, 0xb

    goto/16 :goto_0

    .line 2474
    :cond_3
    :sswitch_b
    const/16 v3, 0x13

    .line 2475
    const/4 v1, 0x1

    .line 2476
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-boolean v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mSyncPlayFlag:Z

    if-eqz v6, :cond_0

    .line 2477
    const/16 v3, 0xb

    .line 2478
    const/16 v2, 0xb

    goto/16 :goto_0

    .line 2483
    :sswitch_c
    const/16 v3, 0xb

    .line 2484
    const/16 v2, 0xb

    .line 2485
    const/4 v1, 0x1

    .line 2486
    goto/16 :goto_0

    .line 2489
    :sswitch_d
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget v3, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAsyncType:I

    .line 2490
    const/4 v1, 0x1

    .line 2491
    goto/16 :goto_0

    .line 2494
    :sswitch_e
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget v3, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAsyncType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2495
    const/4 v1, 0x1

    .line 2496
    goto/16 :goto_0

    .line 2499
    :sswitch_f
    const/4 v2, 0x5

    .line 2500
    goto/16 :goto_0

    .line 2503
    :sswitch_10
    const/4 v2, 0x6

    .line 2504
    goto/16 :goto_0

    .line 2507
    :sswitch_11
    const/16 v3, 0x11

    .line 2508
    const/4 v2, 0x7

    .line 2509
    goto/16 :goto_0

    .line 2406
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2bc -> :sswitch_4
        0x2bd -> :sswitch_5
        0x2be -> :sswitch_2
        0x2bf -> :sswitch_3
        0x2c0 -> :sswitch_8
        0x2c1 -> :sswitch_9
        0x2c2 -> :sswitch_d
        0x2c3 -> :sswitch_e
        0x2c4 -> :sswitch_f
        0x2c5 -> :sswitch_10
        0x2c7 -> :sswitch_1
        0x2c8 -> :sswitch_6
        0x2c9 -> :sswitch_7
        0x2cb -> :sswitch_11
        0x2cc -> :sswitch_b
        0x2cd -> :sswitch_a
        0x2ce -> :sswitch_c
    .end sparse-switch
.end method
