.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;
.super Ljava/lang/Object;
.source "MmbStBmlGpsReceiverSv.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MmbStBmlGpsReceiverSessionSv"
.end annotation


# static fields
.field protected static final DEF_MIN_DIST:F = 0.0f

.field protected static final DEF_MIN_TIME:I = 0x7d0

.field protected static final GPS_MAX_TIME:I = 0x493e0


# instance fields
.field protected volatile mClient:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

.field protected mContext:Landroid/content/Context;

.field protected mLooperHandler:Landroid/os/Handler;

.field protected mLooperThread:Ljava/lang/Thread;

.field protected volatile mNotified:Z

.field protected mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;

.field protected volatile mPosInfo:I

.field protected mStopCond:Ljava/util/concurrent/CountDownLatch;

.field protected mTimeoutThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aParent"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mContext:Landroid/content/Context;

    .line 301
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;

    .line 303
    const/4 v0, -0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mPosInfo:I

    .line 304
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mClient:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    .line 305
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mLooperThread:Ljava/lang/Thread;

    .line 306
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mLooperHandler:Landroid/os/Handler;

    .line 307
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mTimeoutThread:Ljava/lang/Thread;

    .line 308
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mStopCond:Ljava/util/concurrent/CountDownLatch;

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mNotified:Z

    .line 327
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mContext:Landroid/content/Context;

    .line 328
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;

    .line 332
    return-void
.end method


# virtual methods
.method public getNotified()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mNotified:Z

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "aLocation"    # Landroid/location/Location;

    .prologue
    .line 543
    const/4 v2, 0x0

    .line 546
    .local v2, "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;

    invoke-virtual {v4, p1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->preOnLocationChanged(Landroid/location/Location;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 580
    :goto_0
    return-void

    .line 550
    :cond_0
    monitor-enter p0

    .line 551
    :try_start_0
    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mNotified:Z

    if-nez v4, :cond_1

    .line 552
    new-instance v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;

    invoke-direct {v3}, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 553
    .end local v2    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    .local v3, "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    :try_start_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbLatitude:D

    .line 554
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbLongitude:D

    .line 555
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    iput-wide v4, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbAccurary:D

    .line 556
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbProvider:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 560
    :try_start_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mClient:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyGps(ZLmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 564
    :goto_1
    const/4 v4, 0x1

    :try_start_3
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mNotified:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v3

    .line 566
    .end local v3    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    .restart local v2    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    :cond_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 569
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mStopCond:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 570
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v4, 0xa

    if-ge v1, v4, :cond_2

    .line 571
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 561
    .end local v1    # "i":I
    .end local v2    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    .restart local v3    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 566
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    .restart local v2    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    .line 575
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mLooperHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 566
    .end local v1    # "i":I
    :catchall_1
    move-exception v4

    goto :goto_3
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "aProvider"    # Ljava/lang/String;

    .prologue
    .line 599
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "aProvider"    # Ljava/lang/String;

    .prologue
    .line 618
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "aProvider"    # Ljava/lang/String;
    .param p2, "aStatus"    # I
    .param p3, "aExtras"    # Landroid/os/Bundle;

    .prologue
    .line 639
    return-void
.end method

.method public setCancel()Z
    .locals 3

    .prologue
    .line 495
    iget-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mNotified:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 498
    .local v1, "ret":Z
    :goto_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mLooperHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 501
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mStopCond:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 502
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 503
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 495
    .end local v0    # "i":I
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 509
    .restart local v0    # "i":I
    .restart local v1    # "ret":Z
    :cond_1
    return v1
.end method

.method public start(Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;)V
    .locals 2
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;
    .param p2, "aClient"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    .prologue
    .line 347
    iget v0, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;->mmbPosInfo:I

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mPosInfo:I

    .line 348
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mClient:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    .line 351
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$1;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mLooperThread:Ljava/lang/Thread;

    .line 418
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mLooperThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mNotified:Z

    .line 423
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mStopCond:Ljava/util/concurrent/CountDownLatch;

    .line 424
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$2;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mTimeoutThread:Ljava/lang/Thread;

    .line 476
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mTimeoutThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 481
    return-void
.end method
