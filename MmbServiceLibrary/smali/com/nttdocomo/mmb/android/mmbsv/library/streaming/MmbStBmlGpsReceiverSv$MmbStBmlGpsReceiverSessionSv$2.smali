.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$2;
.super Ljava/lang/Object;
.source "MmbStBmlGpsReceiverSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->start(Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 431
    const/4 v3, 0x0

    .line 432
    .local v3, "ret":Z
    const/4 v1, 0x0

    .line 435
    .local v1, "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->onWaitGpsTimeout(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;)Z

    move-result v3

    .line 438
    if-nez v3, :cond_1

    .line 440
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    monitor-enter v5

    .line 441
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    iget-boolean v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mNotified:Z

    if-nez v4, :cond_0

    .line 442
    new-instance v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;

    invoke-direct {v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 443
    .end local v1    # "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    .local v2, "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    const-wide/16 v6, 0x0

    :try_start_1
    iput-wide v6, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbLatitude:D

    .line 444
    const-wide/16 v6, 0x0

    iput-wide v6, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbLongitude:D

    .line 445
    const-wide/16 v6, 0x0

    iput-wide v6, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbAccurary:D

    .line 446
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    iget v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mPosInfo:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v4, :pswitch_data_0

    .line 459
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mClient:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyGps(ZLmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 463
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mNotified:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    .line 465
    .end local v2    # "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    .restart local v1    # "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    :cond_0
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 468
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mLooperHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    .line 474
    :cond_1
    return-void

    .line 448
    .end local v1    # "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    .restart local v2    # "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    :pswitch_0
    :try_start_5
    const-string v4, "gps"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbProvider:[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v4

    move-object v1, v2

    .end local v2    # "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    .restart local v1    # "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    :goto_2
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    .line 451
    .end local v1    # "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    .restart local v2    # "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    :pswitch_1
    :try_start_7
    const-string v4, "network"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbProvider:[B

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 465
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    .restart local v1    # "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    :catchall_1
    move-exception v4

    goto :goto_2

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
