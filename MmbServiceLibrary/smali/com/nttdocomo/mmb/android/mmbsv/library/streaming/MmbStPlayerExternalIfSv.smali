.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;
.source "MmbStPlayerExternalIfSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;
.implements Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;
.implements Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbStReservationTimerListenerSv;
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;",
        ">;",
        "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;",
        "Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;",
        "Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;",
        "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbStReservationTimerListenerSv;",
        "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;"
    }
.end annotation


# static fields
.field private static final QUEUE_SIZE:I = 0x400

.field private static final SEEK_QUEUE_MAX:I = 0x2


# instance fields
.field mBmlScrollView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

.field mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

.field mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

.field mChangeLayoutUserParam:I

.field mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

.field mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

.field mLayoutStartFlag:Z

.field mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

.field mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;",
            ">;"
        }
    .end annotation
.end field

.field mSeekQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;",
            ">;"
        }
    .end annotation
.end field

.field mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

.field mThread:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;

.field private mTotalTime:J

.field mTuneQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;",
            ">;"
        }
    .end annotation
.end field

.field mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 5
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    const/16 v2, 0x400

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 94
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 99
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 104
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mTuneQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 108
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mSeekQueue:Ljava/util/ArrayDeque;

    .line 113
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    .line 118
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;

    .line 123
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mBmlScrollView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .line 128
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    .line 133
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    .line 138
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .line 143
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    .line 148
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mLayoutStartFlag:Z

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mChangeLayoutUserParam:I

    .line 168
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mTotalTime:J

    .line 187
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 190
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 192
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mTuneQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 194
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mSeekQueue:Ljava/util/ArrayDeque;

    .line 196
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-direct {v0, p1, p0, p0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    .line 198
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mTuneQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mSeekQueue:Ljava/util/ArrayDeque;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/ArrayDeque;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;

    .line 200
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->transit(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setAudioManager(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 207
    return-void
.end method

.method private addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    .locals 1
    .param p1, "aMessage"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;"
        }
    .end annotation

    .prologue
    .line 4208
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-result-object v0

    return-object v0
.end method

.method private addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    .locals 8
    .param p1, "aMessage"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    .param p3, "aIsNotify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;Z)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v7, 0x0

    .line 4230
    const/4 v3, 0x0

    .line 4233
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->isAlive()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v4, v3

    .line 4266
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    .local v4, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-object v4

    .line 4237
    .end local v4    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    .restart local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :cond_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    .line 4239
    .local v2, "queueret":Z
    if-nez v2, :cond_2

    .line 4240
    const-string v5, "mQueue.offer error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v2    # "queueret":Z
    :cond_1
    :goto_1
    move-object v4, v3

    .line 4266
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    .restart local v4    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    goto :goto_0

    .line 4243
    .end local v4    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    .restart local v2    # "queueret":Z
    .restart local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :cond_2
    if-nez p3, :cond_1

    .line 4244
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_1

    .line 4247
    .end local v2    # "queueret":Z
    :catch_0
    move-exception v1

    .line 4248
    .local v1, "exception":Ljava/lang/NullPointerException;
    const-string v5, "exception error"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 4249
    .end local v1    # "exception":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 4250
    .local v1, "exception":Ljava/lang/ClassCastException;
    const-string v5, "exception error"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 4251
    .end local v1    # "exception":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v1

    .line 4252
    .local v1, "exception":Ljava/lang/IllegalArgumentException;
    const-string v5, "exception error"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 4253
    .end local v1    # "exception":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 4254
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v5, "exception error"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4256
    throw v1

    .line 4257
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_4
    move-exception v1

    .line 4258
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v5, "fatal error"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4260
    throw v1
.end method

.method private addSeekQueue(I)V
    .locals 9
    .param p1, "aMessage"    # I

    .prologue
    const/4 v8, 0x0

    .line 4369
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4402
    :cond_0
    :goto_0
    return-void

    .line 4377
    :cond_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v3, 0x46

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v1, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 4382
    .local v1, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mSeekQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v2

    .line 4384
    .local v2, "queueret":Z
    if-nez v2, :cond_0

    .line 4385
    const-string v3, "mQueue.offer error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 4387
    .end local v1    # "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    .end local v2    # "queueret":Z
    :catch_0
    move-exception v0

    .line 4388
    .local v0, "exception":Ljava/lang/NullPointerException;
    const-string v3, "exception error"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4389
    .end local v0    # "exception":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4390
    .local v0, "exception":Ljava/lang/ClassCastException;
    const-string v3, "exception error"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4391
    .end local v0    # "exception":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v0

    .line 4392
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    const-string v3, "exception error"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4393
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 4394
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v3, "fatal error"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4396
    throw v0
.end method

.method private addTuneQueue(I)V
    .locals 10
    .param p1, "aTuneQueueSize"    # I

    .prologue
    const/4 v9, 0x0

    .line 4285
    const/4 v3, 0x0

    .line 4288
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4322
    :cond_0
    :goto_0
    return-void

    .line 4293
    :cond_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v1, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 4298
    .local v1, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mTuneQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    .line 4300
    .local v2, "queueret":Z
    if-nez v2, :cond_0

    .line 4301
    const-string v4, "mQueue.offer error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 4303
    .end local v1    # "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    .end local v2    # "queueret":Z
    :catch_0
    move-exception v0

    .line 4304
    .local v0, "exception":Ljava/lang/NullPointerException;
    const-string v4, "exception error"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4305
    .end local v0    # "exception":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4306
    .local v0, "exception":Ljava/lang/ClassCastException;
    const-string v4, "exception error"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4307
    .end local v0    # "exception":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v0

    .line 4308
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    const-string v4, "exception error"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4309
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 4310
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v4, "exception error"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4312
    throw v0

    .line 4313
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_4
    move-exception v0

    .line 4314
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v4, "fatal error"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4316
    throw v0
.end method

.method private changeSeekQueueLast(I)V
    .locals 9
    .param p1, "aMessage"    # I

    .prologue
    const/4 v8, 0x0

    .line 4424
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4459
    :cond_0
    :goto_0
    return-void

    .line 4432
    :cond_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v3, 0x46

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v1, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 4437
    .local v1, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mSeekQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    .line 4439
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mSeekQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v2

    .line 4441
    .local v2, "queueret":Z
    if-nez v2, :cond_0

    .line 4442
    const-string v3, "mQueue.offer error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 4444
    .end local v1    # "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    .end local v2    # "queueret":Z
    :catch_0
    move-exception v0

    .line 4445
    .local v0, "exception":Ljava/lang/NullPointerException;
    const-string v3, "exception error"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4446
    .end local v0    # "exception":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4447
    .local v0, "exception":Ljava/lang/ClassCastException;
    const-string v3, "exception error"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4448
    .end local v0    # "exception":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v0

    .line 4449
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    const-string v3, "exception error"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4450
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 4451
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v3, "fatal error"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4453
    throw v0
.end method

.method private getTuneQueueSize()I
    .locals 2

    .prologue
    .line 4342
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mTuneQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v0

    .line 4347
    .local v0, "size":I
    return v0
.end method

.method private threadStart(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;)V
    .locals 0
    .param p1, "aThread"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->start()V

    .line 229
    return-void
.end method


# virtual methods
.method public audioDecode(I)V
    .locals 6
    .param p1, "aState"    # I

    .prologue
    .line 1063
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1066
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 1071
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 1075
    return-void
.end method

.method public audioMute(I)V
    .locals 6
    .param p1, "aState"    # I

    .prologue
    .line 1103
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1106
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x38

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 1111
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 1115
    return-void
.end method

.method public cancelScan()V
    .locals 4

    .prologue
    .line 737
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 740
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 744
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 748
    return-void
.end method

.method public captionNotifyExist(IZ)V
    .locals 6
    .param p1, "aIndex"    # I
    .param p2, "aIsExist"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2890
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2893
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x28

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2897
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 2900
    invoke-direct {p0, v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2905
    return-void
.end method

.method public captionNotifyLangNumSetEnable(IB)V
    .locals 6
    .param p1, "aIndex"    # I
    .param p2, "aLangNum"    # B

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2732
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2735
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x24

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2740
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 2743
    invoke-direct {p0, v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2747
    return-void
.end method

.method public captionNotifyNothingFixedTime(I)V
    .locals 6
    .param p1, "aIndex"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2771
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2774
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x25

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2779
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 2782
    invoke-direct {p0, v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2786
    return-void
.end method

.method public captionNotifyRecv(I)V
    .locals 6
    .param p1, "aIndex"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2848
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2851
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x27

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2855
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 2858
    invoke-direct {p0, v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2862
    return-void
.end method

.method public captionNotifyRestart(I)V
    .locals 6
    .param p1, "aIndex"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2810
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2813
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x26

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2817
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 2820
    invoke-direct {p0, v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2824
    return-void
.end method

.method public changeBmlDirection(I)V
    .locals 1
    .param p1, "aBmlDirection"    # I

    .prologue
    .line 4483
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->changeBmlDirection(I)V

    .line 4487
    return-void
.end method

.method public changeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    .prologue
    .line 4140
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->changeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V

    .line 4144
    return-void
.end method

.method public changeParental()V
    .locals 4

    .prologue
    .line 812
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 815
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 819
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 823
    return-void
.end method

.method public clearNvram()V
    .locals 1

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->clearNvram()V

    .line 2084
    return-void
.end method

.method public end()V
    .locals 4

    .prologue
    .line 593
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 596
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 600
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 604
    return-void
.end method

.method public getAudioInfo()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1224
    const/4 v0, 0x0

    .line 1225
    .local v0, "audioinfo":I
    const/4 v2, 0x0

    .line 1228
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1231
    .local v3, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v4, 0xc

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v1, v4, v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 1235
    .local v1, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-result-object v2

    .line 1237
    if-nez v2, :cond_0

    .line 1238
    const-string v4, "exception error"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1246
    :goto_0
    return v0

    .line 1240
    :cond_0
    iget v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    goto :goto_0
.end method

.method public getAudioLanguage()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1269
    const/4 v0, 0x0

    .line 1270
    .local v0, "audiolanguageinfo":I
    const/4 v2, 0x0

    .line 1273
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1276
    .local v3, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v4, 0x35

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v1, v4, v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 1281
    .local v1, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-result-object v2

    .line 1283
    if-nez v2, :cond_0

    .line 1284
    const-string v4, "exception error"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1292
    :goto_0
    return v0

    .line 1286
    :cond_0
    iget v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    goto :goto_0
.end method

.method public getAudioLanguageNum()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1598
    const/4 v0, 0x0

    .line 1599
    .local v0, "audiolanguagenum":I
    const/4 v2, 0x0

    .line 1602
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1605
    .local v3, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v4, 0x13

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v1, v4, v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 1610
    .local v1, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-result-object v2

    .line 1612
    if-nez v2, :cond_0

    .line 1613
    const-string v4, "exception error"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1621
    :goto_0
    return v0

    .line 1615
    :cond_0
    iget v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    goto :goto_0
.end method

.method public getBmlFullScreenControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;
    .locals 2

    .prologue
    .line 4185
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlFullScreenControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    move-result-object v0

    .line 4189
    .local v0, "instance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;
    return-object v0
.end method

.method public getBmlOnOffStatus()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4817
    const/4 v3, 0x0

    .line 4818
    .local v3, "status":Z
    const/4 v1, 0x0

    .line 4821
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 4824
    .local v2, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v4, 0x3c

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v0, v4, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 4827
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-result-object v1

    .line 4829
    if-nez v1, :cond_0

    .line 4830
    const-string v4, "result error"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4838
    :goto_0
    return v3

    .line 4832
    :cond_0
    iget-boolean v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultBooleanData:Z

    goto :goto_0
.end method

.method public getBmlTouchControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;
    .locals 2

    .prologue
    .line 4163
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlTouchControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    move-result-object v0

    .line 4167
    .local v0, "instance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;
    return-object v0
.end method

.method public getBmlView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
    .locals 1

    .prologue
    .line 5099
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mBmlScrollView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    return-object v0
.end method

.method public getCaptionOnOffStatus()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4700
    const/4 v3, 0x0

    .line 4701
    .local v3, "status":Z
    const/4 v1, 0x0

    .line 4704
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 4707
    .local v2, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v4, 0x3d

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v0, v4, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 4710
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-result-object v1

    .line 4712
    if-nez v1, :cond_0

    .line 4713
    const-string v4, "result error"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4721
    :goto_0
    return v3

    .line 4715
    :cond_0
    iget-boolean v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultBooleanData:Z

    goto :goto_0
.end method

.method public getCaptionView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;
    .locals 1

    .prologue
    .line 5059
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    return-object v0
.end method

.method public getCnValue()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, "cnvalue":I
    const/4 v2, 0x0

    .line 850
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 853
    .local v3, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v4, 0x42

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v1, v4, v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 856
    .local v1, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-result-object v2

    .line 858
    if-nez v2, :cond_0

    .line 859
    const-string v4, "result error"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    :goto_0
    return v0

    .line 861
    :cond_0
    iget v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    goto :goto_0
.end method

.method public getCurrentPlayPosition()J
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5545
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->hasRecordingFunction()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5546
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>()V

    throw v5

    .line 5549
    :cond_0
    const-wide/16 v0, 0x0

    .line 5550
    .local v0, "currentTime":J
    const/4 v3, 0x0

    .line 5553
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 5556
    .local v4, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v5, 0x4e

    new-array v6, v7, [Ljava/lang/Object;

    invoke-direct {v2, v5, v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 5561
    .local v2, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-result-object v3

    .line 5563
    if-nez v3, :cond_1

    .line 5564
    const-string v5, "exception error"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5572
    :goto_0
    return-wide v0

    .line 5566
    :cond_1
    iget-wide v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultLongData:J

    goto :goto_0
.end method

.method public getFileDuration()J
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5593
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->hasRecordingFunction()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5594
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>()V

    throw v3

    .line 5597
    :cond_0
    const-wide/16 v4, 0x0

    .line 5598
    .local v4, "totalTime":J
    const/4 v1, 0x0

    .line 5601
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 5604
    .local v2, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v3, 0x4f

    new-array v6, v7, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 5609
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-result-object v1

    .line 5611
    if-nez v1, :cond_1

    .line 5612
    const-string v3, "exception error"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5620
    :goto_0
    return-wide v4

    .line 5614
    :cond_1
    iget-wide v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultLongData:J

    goto :goto_0
.end method

.method public getLanguageCount(I)I
    .locals 8
    .param p1, "aType"    # I

    .prologue
    const/4 v7, 0x0

    .line 1363
    const/4 v0, 0x0

    .line 1364
    .local v0, "languagecount":I
    const/4 v2, 0x0

    .line 1367
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1370
    .local v3, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v4, 0xe

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {v1, v4, v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 1375
    .local v1, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-result-object v2

    .line 1377
    if-nez v2, :cond_0

    .line 1378
    const-string v4, "exception error"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1386
    :goto_0
    return v0

    .line 1380
    :cond_0
    iget v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    goto :goto_0
.end method

.method public getParentView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;
    .locals 1

    .prologue
    .line 5019
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    return-object v0
.end method

.method public getProgramInformation(I)Ljava/util/List;
    .locals 8
    .param p1, "aCondition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1554
    const/4 v0, 0x0

    .line 1555
    .local v0, "eventinfo":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    const/4 v2, 0x0

    .line 1558
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1561
    .local v3, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v4, 0x12

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {v1, v4, v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 1566
    .local v1, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-result-object v2

    .line 1568
    if-nez v2, :cond_0

    .line 1569
    const-string v4, "exception error"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1577
    :goto_0
    return-object v0

    .line 1571
    :cond_0
    iget-object v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultListData:Ljava/util/List;

    goto :goto_0
.end method

.method public getStatus()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 773
    const/4 v3, 0x0

    .line 774
    .local v3, "status":I
    const/4 v1, 0x0

    .line 777
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 780
    .local v2, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/4 v4, 0x5

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v0, v4, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 783
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-result-object v1

    .line 785
    if-nez v1, :cond_0

    .line 786
    const-string v4, "result error"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 794
    :goto_0
    return v3

    .line 788
    :cond_0
    iget v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    goto :goto_0
.end method

.method public getSuperimposeAutoDisplayStatus()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4777
    const/4 v3, 0x0

    .line 4778
    .local v3, "status":Z
    const/4 v1, 0x0

    .line 4781
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 4784
    .local v2, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v4, 0x41

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v0, v4, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 4788
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-result-object v1

    .line 4790
    if-nez v1, :cond_0

    .line 4791
    const-string v4, "result error"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4799
    :goto_0
    return v3

    .line 4793
    :cond_0
    iget-boolean v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultBooleanData:Z

    goto :goto_0
.end method

.method public getSuperimposeOnOffStatus()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4738
    const/4 v3, 0x0

    .line 4739
    .local v3, "status":Z
    const/4 v1, 0x0

    .line 4742
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 4745
    .local v2, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v4, 0x3e

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v0, v4, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 4749
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-result-object v1

    .line 4751
    if-nez v1, :cond_0

    .line 4752
    const-string v4, "result error"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4760
    :goto_0
    return v3

    .line 4754
    :cond_0
    iget-boolean v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultBooleanData:Z

    goto :goto_0
.end method

.method public getSuperimposeView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;
    .locals 1

    .prologue
    .line 5079
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    return-object v0
.end method

.method public getTvLink()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1964
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getTvLink()Ljava/util/List;

    move-result-object v0

    .line 1968
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    return-object v0
.end method

.method public getTvView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;
    .locals 1

    .prologue
    .line 5039
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    return-object v0
.end method

.method public getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1008
    const/4 v3, 0x0

    .line 1009
    .local v3, "videoparam":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    const/4 v1, 0x0

    .line 1012
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1015
    .local v2, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v4, 0x8

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v0, v4, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 1019
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-result-object v1

    .line 1021
    if-nez v1, :cond_0

    .line 1022
    const-string v4, "exception error"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1030
    :goto_0
    return-object v3

    .line 1024
    :cond_0
    iget-object v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultVideoParameterData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    goto :goto_0
.end method

.method public isResumeInfoExist(I)Z
    .locals 9
    .param p1, "aPrgNo"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 5315
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->hasRecordingFunction()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5316
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>()V

    throw v5

    .line 5320
    :cond_0
    if-gt v6, p1, :cond_1

    const v5, 0x7fffffff

    if-ge v5, p1, :cond_2

    .line 5322
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;-><init>()V

    .line 5323
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const/4 v5, -0x3

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->setExceptionDetail(I)V

    .line 5324
    throw v0

    .line 5327
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :cond_2
    const/4 v1, 0x0

    .line 5328
    .local v1, "hasResumeInfo":Z
    const/4 v3, 0x0

    .line 5331
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 5334
    .local v4, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v5, 0x4a

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-direct {v2, v5, v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 5339
    .local v2, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move-result-object v3

    .line 5341
    if-nez v3, :cond_3

    .line 5342
    const-string v5, "exception error"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5350
    :goto_0
    return v1

    .line 5344
    :cond_3
    iget-boolean v1, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultBooleanData:Z

    goto :goto_0
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 9
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 3106
    if-eqz p1, :cond_1

    .line 3107
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3108
    .local v1, "action":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v5, "com.nttdocomo.mmb.android.mmbsv.process.arbitration.MmbCfConflictModuleSv"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3109
    const/4 v0, -0x1

    .line 3110
    .local v0, "ERRCODE":I
    const-string v5, "key"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 3111
    .local v3, "releaseResult":I
    if-eq v6, v3, :cond_0

    .line 3112
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->onFinishReleaseResourceCallback(I)V

    .line 3137
    .end local v0    # "ERRCODE":I
    .end local v1    # "action":Ljava/lang/String;
    .end local v3    # "releaseResult":I
    :cond_0
    :goto_0
    return-void

    .line 3122
    :cond_1
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 3125
    .local v4, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v5, 0x3a

    new-array v6, v7, [Ljava/lang/Object;

    invoke-direct {v2, v5, v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 3129
    .local v2, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual {v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 3132
    invoke-direct {p0, v2, v4, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    goto :goto_0
.end method

.method public notifyChangeLayoutEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4971
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    if-eqz v0, :cond_0

    .line 4972
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v0, v1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->setChangeLayoutInformationState(ZI)V

    .line 4974
    :cond_0
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mLayoutStartFlag:Z

    .line 4978
    return-void
.end method

.method public notifyChangeLayoutStart(I)V
    .locals 2
    .param p1, "aUserParam"    # I

    .prologue
    const/4 v1, 0x1

    .line 4947
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    if-eqz v0, :cond_0

    .line 4948
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v0, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->setChangeLayoutInformationState(ZI)V

    .line 4950
    :cond_0
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mLayoutStartFlag:Z

    .line 4951
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mChangeLayoutUserParam:I

    .line 4955
    return-void
.end method

.method public notifyKey(II)V
    .locals 1
    .param p1, "aKeyCode"    # I
    .param p2, "aKeyEvent"    # I

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyKey(II)V

    .line 2112
    return-void
.end method

.method public notifyOnCreate(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 0
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 3235
    return-void
.end method

.method public notifyOnDestroy(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 0
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 3256
    return-void
.end method

.method public notifyOnLoad()V
    .locals 3

    .prologue
    .line 3158
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mThread:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->threadStart(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;)V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3163
    :goto_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyOnLoad()V

    .line 3168
    return-void

    .line 3159
    :catch_0
    move-exception v0

    .line 3160
    .local v0, "exception":Ljava/lang/IllegalThreadStateException;
    const-string v1, "IllegalThreadStateException Error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public notifyOnPause(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 5
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    const/4 v4, 0x0

    .line 3276
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 3279
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x2b

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 3282
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 3285
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 3289
    return-void
.end method

.method public notifyOnResume(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 5
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    const/4 v4, 0x0

    .line 3309
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 3312
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x2c

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 3315
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 3318
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 3322
    return-void
.end method

.method public notifyOnUnload()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3187
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    if-eqz v2, :cond_0

    .line 3188
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->resetStPlayerObject()V

    .line 3190
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    if-eqz v2, :cond_1

    .line 3191
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->resetStPlayerObject()V

    .line 3193
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    if-eqz v2, :cond_2

    .line 3194
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->resetStPlayerObject()V

    .line 3196
    :cond_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    if-eqz v2, :cond_3

    .line 3197
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->resetStPlayerObject()V

    .line 3201
    :cond_3
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 3204
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x40

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 3207
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 3210
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 3214
    return-void
.end method

.method public notifyViewCreated(II)V
    .locals 2
    .param p1, "aType"    # I
    .param p2, "aUserParam"    # I

    .prologue
    .line 5116
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5128
    return-void
.end method

.method public onAudioInformation(I)V
    .locals 6
    .param p1, "aAudioInfo"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2654
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2657
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x22

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2661
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 2664
    invoke-direct {p0, v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2668
    return-void
.end method

.method public onBrowserReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;

    .prologue
    .line 3581
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onBrowserReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;)V

    .line 3585
    return-void
.end method

.method public onCallReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;

    .prologue
    .line 3533
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onCallReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;)V

    .line 3537
    return-void
.end method

.method public onChangeAntennaLevel(I)V
    .locals 6
    .param p1, "aAntennaLevel"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2288
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2291
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x18

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2295
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 2298
    invoke-direct {p0, v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2302
    return-void
.end method

.method public onChangeAudioComponent(S)V
    .locals 6
    .param p1, "aComponentTag"    # S

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2689
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2692
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x23

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2696
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 2699
    invoke-direct {p0, v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2703
    return-void
.end method

.method public onChangeDispReply(Z)V
    .locals 0
    .param p1, "aResult"    # Z

    .prologue
    .line 3923
    return-void
.end method

.method public onChangeViewingStatus(I)V
    .locals 6
    .param p1, "aViewingStatus"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2253
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2256
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x17

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2260
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 2263
    invoke-direct {p0, v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2267
    return-void
.end method

.method public onCheckStorageStatusReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;

    .prologue
    .line 3629
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onCheckStorageStatusReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;)V

    .line 3633
    return-void
.end method

.method public onCloseReq()V
    .locals 1

    .prologue
    .line 3366
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onCloseReq()V

    .line 3370
    return-void
.end method

.method public onCompleteScan(II)V
    .locals 6
    .param p1, "aResult"    # I
    .param p2, "aUserParam"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2137
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2140
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x14

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2143
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 2146
    invoke-direct {p0, v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2150
    return-void
.end method

.method public onCompleteSelectCh(III)V
    .locals 6
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2218
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2221
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x16

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2225
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 2228
    invoke-direct {p0, v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2232
    return-void
.end method

.method public onCompleteStartPlay(III)V
    .locals 7
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2936
    if-eqz p1, :cond_0

    const/4 v2, -0x1

    if-eq v2, p1, :cond_0

    .line 2938
    const-string v2, "aResult bad param."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2941
    :cond_0
    if-eq v6, p2, :cond_1

    const/16 v2, 0x100

    if-eq v2, p2, :cond_1

    .line 2943
    const-string v2, "aViewingStatus bad param."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2947
    :cond_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2950
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x52

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2955
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2960
    return-void
.end method

.method public onCompleteStartSt(III)V
    .locals 6
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2177
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2180
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x15

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2184
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 2187
    invoke-direct {p0, v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2191
    return-void
.end method

.method public onDispIcon(Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;

    .prologue
    .line 3944
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onDispIcon(Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;)V

    .line 3948
    return-void
.end method

.method public onEndFepReq()V
    .locals 1

    .prologue
    .line 3968
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onEndFepReq()V

    .line 3972
    return-void
.end method

.method public onEpgTuneReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;

    .prologue
    .line 3726
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onEpgTuneReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;)V

    .line 3730
    return-void
.end method

.method public onFastForwardToEnd(I)V
    .locals 7
    .param p1, "aResult"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3027
    if-eqz p1, :cond_0

    const/4 v2, -0x2

    if-eq v2, p1, :cond_0

    .line 3029
    const-string v2, "aResult bad param."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3047
    :goto_0
    return-void

    .line 3034
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 3037
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x54

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 3042
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    goto :goto_0
.end method

.method public onFinishFunctionCallback(I)V
    .locals 7
    .param p1, "aErrorCode"    # I

    .prologue
    const/4 v6, 0x1

    .line 4859
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 4862
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x43

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 4867
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 4872
    return-void
.end method

.method public onFinishReleaseResourceCallback(I)V
    .locals 7
    .param p1, "aErrorCode"    # I

    .prologue
    const/4 v6, 0x1

    .line 4892
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 4895
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x44

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 4900
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 4905
    return-void
.end method

.method public onGetGpsReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;

    .prologue
    .line 3893
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onGetGpsReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;)V

    .line 3897
    return-void
.end method

.method public onHttpCancelReq()V
    .locals 1

    .prologue
    .line 3461
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onHttpCancelReq()V

    .line 3465
    return-void
.end method

.method public onHttpStartReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    .prologue
    .line 3438
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onHttpStartReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;)V

    .line 3442
    return-void
.end method

.method public onIsContentsStoredReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;

    .prologue
    .line 3702
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onIsContentsStoredReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;)V

    .line 3706
    return-void
.end method

.method public onJudgmentReservationReschedule(I)V
    .locals 7
    .param p1, "aUserParam"    # I

    .prologue
    const/4 v6, 0x1

    .line 4582
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 4585
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x37

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 4590
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 4595
    return-void
.end method

.method public onLaunchContentReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;

    .prologue
    .line 3605
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onLaunchContentReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;)V

    .line 3609
    return-void
.end method

.method public onMailSendReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;

    .prologue
    .line 3485
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onMailSendReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;)V

    .line 3489
    return-void
.end method

.method public onNotifyError(I)V
    .locals 6
    .param p1, "aErrorCode"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2576
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2579
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x20

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2582
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 2585
    invoke-direct {p0, v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2589
    return-void
.end method

.method public onNotifyServiceNg(I)V
    .locals 6
    .param p1, "aCause"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2323
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2326
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x19

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2330
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 2333
    invoke-direct {p0, v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2337
    return-void
.end method

.method public onNvramReadReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;)V
    .locals 1
    .param p1, "aInf"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;

    .prologue
    .line 3414
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onNvramReadReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;)V

    .line 3418
    return-void
.end method

.method public onNvramWriteReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;

    .prologue
    .line 3390
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onNvramWriteReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;)V

    .line 3394
    return-void
.end method

.method public onPasswordReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;

    .prologue
    .line 3993
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onPasswordReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;)V

    .line 3997
    return-void
.end method

.method public onPermissionReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;

    .prologue
    .line 4018
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onPermissionReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;)V

    .line 4022
    return-void
.end method

.method public onPhoneBookReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;

    .prologue
    .line 3509
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onPhoneBookReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;)V

    .line 3513
    return-void
.end method

.method public onPictureSaveComplete(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 3821
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onPictureSaveComplete(Z)V

    .line 3825
    return-void
.end method

.method public onPictureSaveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;

    .prologue
    .line 3796
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onPictureSaveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;)V

    .line 3800
    return-void
.end method

.method public onPlayToEnd(I)V
    .locals 7
    .param p1, "aResult"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2984
    if-eqz p1, :cond_0

    const/4 v2, -0x2

    if-eq v2, p1, :cond_0

    .line 2986
    const-string v2, "aResult bad param."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3003
    :goto_0
    return-void

    .line 2991
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2994
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x53

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2998
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    goto :goto_0
.end method

.method public onRenderSizeUpdateReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;

    .prologue
    .line 4043
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onRenderSizeUpdateReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;)V

    .line 4047
    return-void
.end method

.method public onRewindToTop(I)V
    .locals 7
    .param p1, "aResult"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3071
    if-eqz p1, :cond_0

    const/4 v2, -0x2

    if-eq v2, p1, :cond_0

    .line 3073
    const-string v2, "aResult bad param."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3091
    :goto_0
    return-void

    .line 3078
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 3081
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x55

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 3086
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    goto :goto_0
.end method

.method public onScheduleReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;

    .prologue
    .line 3557
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onScheduleReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;)V

    .line 3561
    return-void
.end method

.method public onScrollReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;

    .prologue
    .line 4068
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onScrollReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;)V

    .line 4072
    return-void
.end method

.method public onStartFepReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;

    .prologue
    .line 4093
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onStartFepReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;)V

    .line 4097
    return-void
.end method

.method public onStartFullDispReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    .prologue
    .line 3750
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onStartFullDispReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)V

    .line 3754
    return-void
.end method

.method public onStartReply(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 3344
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onStartReply(Z)V

    .line 3348
    return-void
.end method

.method public onStopFullDispReq()V
    .locals 1

    .prologue
    .line 3772
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onStopFullDispReq()V

    .line 3776
    return-void
.end method

.method public onStoreCancelReserveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;

    .prologue
    .line 3678
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onStoreCancelReserveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;)V

    .line 3682
    return-void
.end method

.method public onStoreReserveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;

    .prologue
    .line 3653
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onStoreReserveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;)V

    .line 3657
    return-void
.end method

.method public onTvLinkEnrolReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;

    .prologue
    .line 3869
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onTvLinkEnrolReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;)V

    .line 3873
    return-void
.end method

.method public onTvLinkStartReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;

    .prologue
    .line 3845
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onTvLinkStartReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;)V

    .line 3849
    return-void
.end method

.method public onUpdateBit()V
    .locals 4

    .prologue
    .line 2444
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2447
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2451
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2455
    return-void
.end method

.method public onUpdateEit()V
    .locals 4

    .prologue
    .line 2475
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2478
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2482
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2486
    return-void
.end method

.method public onUpdateEmm()V
    .locals 4

    .prologue
    .line 2537
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2540
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2544
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2548
    return-void
.end method

.method public onUpdateInt()V
    .locals 2

    .prologue
    .line 2419
    const-string v0, "onUpdateInt has been called. it\'s not expected for this time!!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2424
    return-void
.end method

.method public onUpdateNit()V
    .locals 4

    .prologue
    .line 2388
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2391
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2395
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2399
    return-void
.end method

.method public onUpdatePmt()V
    .locals 4

    .prologue
    .line 2357
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2360
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2364
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2368
    return-void
.end method

.method public onUpdateSdt()V
    .locals 4

    .prologue
    .line 2506
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2509
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2513
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2517
    return-void
.end method

.method public onVideoInformation(IIILmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;)V
    .locals 6
    .param p1, "aPicWidth"    # I
    .param p2, "aPicHeight"    # I
    .param p3, "aAspect"    # I
    .param p4, "aStereoView"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2615
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 2618
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x21

    new-array v3, v4, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 2622
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->setArgument([Ljava/lang/Object;)V

    .line 2625
    invoke-direct {p0, v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 2629
    return-void
.end method

.method public pause(IIZ)V
    .locals 6
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 1513
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1518
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x11

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 1523
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 1527
    return-void
.end method

.method public prepPlay(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;)V
    .locals 7
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x3

    .line 5157
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->hasRecordingFunction()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5158
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>()V

    throw v3

    .line 5162
    :cond_0
    if-nez p1, :cond_1

    .line 5163
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;-><init>()V

    .line 5164
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->setExceptionDetail(I)V

    .line 5165
    throw v0

    .line 5168
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :cond_1
    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbPrgNoSetting:I

    if-gt v6, v3, :cond_2

    const v3, 0x7fffffff

    iget v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbPrgNoSetting:I

    if-ge v3, v4, :cond_3

    .line 5170
    :cond_2
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;-><init>()V

    .line 5171
    .restart local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->setExceptionDetail(I)V

    .line 5172
    throw v0

    .line 5175
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :cond_3
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    if-nez v3, :cond_4

    .line 5176
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;-><init>()V

    .line 5177
    .restart local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->setExceptionDetail(I)V

    .line 5178
    throw v0

    .line 5181
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :cond_4
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    if-nez v3, :cond_5

    .line 5182
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;-><init>()V

    .line 5183
    .restart local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->setExceptionDetail(I)V

    .line 5184
    throw v0

    .line 5187
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :cond_5
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mTotalTime:J

    .line 5190
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 5193
    .local v2, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v3, 0x47

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, v3, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 5198
    .local v1, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 5203
    return-void
.end method

.method public relDisplay()V
    .locals 1

    .prologue
    .line 4609
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->relDisplay()V

    .line 4613
    return-void
.end method

.method public removeTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    .locals 1
    .param p1, "aLink"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->removeTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V

    .line 2034
    return-void
.end method

.method public responseAddTvLink(ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    .locals 1
    .param p1, "aResult"    # Z
    .param p2, "aLink"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->responseAddTvLink(ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V

    .line 2002
    return-void
.end method

.method public responseCancelFilecastingReservation(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->responseCancelFilecastingReservation(Z)V

    .line 1886
    return-void
.end method

.method public responseFilecastingReservation(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->responseFilecastingReservation(Z)V

    .line 1860
    return-void
.end method

.method public responsePassword(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "aResult"    # I
    .param p2, "aUserName"    # Ljava/lang/String;
    .param p3, "aPassword"    # Ljava/lang/String;
    .param p4, "aBmlParameter"    # I

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->responsePassword(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1808
    return-void
.end method

.method public responsePermission(II)V
    .locals 1
    .param p1, "aUserSelect"    # I
    .param p2, "aBmlParameter"    # I

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->responsePermission(II)V

    .line 1771
    return-void
.end method

.method public responseStartFilecasting(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->responseStartFilecasting(Z)V

    .line 1834
    return-void
.end method

.method public responseStartInputMethod(ILjava/lang/String;)V
    .locals 1
    .param p1, "aType"    # I
    .param p2, "aText"    # Ljava/lang/String;

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->responseStartInputMethod(ILjava/lang/String;)V

    .line 1945
    return-void
.end method

.method public responseStartTvLink(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->responseStartTvLink(Z)V

    .line 2061
    return-void
.end method

.method public responseTune(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->responseTune(Z)V

    .line 1912
    return-void
.end method

.method public resumeBmlBrowser(I)V
    .locals 1
    .param p1, "aResumeKind"    # I

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->resumeBmlBrowser(I)V

    .line 1717
    return-void
.end method

.method public resumePlay()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5642
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->hasRecordingFunction()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5643
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>()V

    throw v2

    .line 5647
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getOperationRunning()Z

    move-result v4

    if-ne v2, v4, :cond_1

    .line 5669
    :goto_0
    return v2

    .line 5655
    :cond_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 5658
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v4, 0x50

    new-array v5, v3, [Ljava/lang/Object;

    invoke-direct {v0, v4, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 5662
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setOperationRunning(Z)V

    .line 5664
    invoke-direct {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move v2, v3

    .line 5669
    goto :goto_0
.end method

.method public scan(I)V
    .locals 6
    .param p1, "aUserParam"    # I

    .prologue
    .line 704
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 707
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/4 v2, 0x3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 711
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 715
    return-void
.end method

.method public seek(JI)I
    .locals 11
    .param p1, "aMsec"    # J
    .param p3, "aUserParam"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 5484
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->hasRecordingFunction()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5485
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>()V

    throw v4

    .line 5489
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v4, p1

    if-gtz v4, :cond_1

    iget-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mTotalTime:J

    cmp-long v4, v4, p1

    if-gez v4, :cond_2

    .line 5491
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;-><init>()V

    .line 5492
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const/4 v4, -0x3

    invoke-virtual {v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->setExceptionDetail(I)V

    .line 5493
    throw v0

    .line 5497
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :cond_2
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 5500
    .local v2, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v4, 0x4d

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {v1, v4, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 5506
    .local v1, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mSeekQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    .line 5507
    .local v3, "seekQueueSize":I
    if-ne v9, v3, :cond_3

    .line 5508
    invoke-direct {p0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->changeSeekQueueLast(I)V

    .line 5514
    :goto_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setOperationRunning(Z)V

    .line 5516
    invoke-direct {p0, v1, v2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 5518
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->stopPositionThread()V

    .line 5523
    return v8

    .line 5511
    :cond_3
    invoke-direct {p0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addSeekQueue(I)V

    goto :goto_0
.end method

.method public selectAudioLanguage(I)V
    .locals 6
    .param p1, "aLang"    # I

    .prologue
    .line 1187
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1190
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0xb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 1195
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 1199
    return-void
.end method

.method public selectAudioMode(I)V
    .locals 6
    .param p1, "aMode"    # I

    .prologue
    .line 1145
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1148
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0xa

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 1153
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 1157
    return-void
.end method

.method public setBMLFullDispRect(IIII)V
    .locals 1
    .param p1, "aXPosition"    # I
    .param p2, "aYPosition"    # I
    .param p3, "aWidth"    # I
    .param p4, "aHeight"    # I

    .prologue
    .line 4561
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setBMLFullDispRect(IIII)V

    .line 4565
    return-void
.end method

.method public setBmlState(Z)V
    .locals 6
    .param p1, "aState"    # Z

    .prologue
    .line 1648
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1651
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x3b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 1656
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 1660
    return-void
.end method

.method public setBmlSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;)V
    .locals 2
    .param p1, "aMmbStBmlSurfaceViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    .prologue
    .line 4502
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    .line 4503
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setBmlSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;)V

    .line 4504
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    if-eqz v0, :cond_0

    .line 4505
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->setParentView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V

    .line 4506
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mBmlScrollView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V

    .line 4511
    :cond_0
    return-void
.end method

.method public setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V
    .locals 2
    .param p1, "aMmbStBmlViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .prologue
    .line 4526
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V

    .line 4527
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mBmlScrollView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .line 4528
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mBmlScrollView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    if-eqz v0, :cond_0

    .line 4529
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mBmlScrollView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->setParentView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V

    .line 4534
    :cond_0
    return-void
.end method

.method public setCaptionDisplayAreaInfo(IIII)V
    .locals 6
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 286
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 289
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x30

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 294
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 299
    return-void
.end method

.method public setCaptionSurface(Landroid/view/Surface;)V
    .locals 5
    .param p1, "aCaptionSurface"    # Landroid/view/Surface;

    .prologue
    .line 249
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 252
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x2f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 257
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 262
    return-void
.end method

.method public setCaptionView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;)V
    .locals 2
    .param p1, "aMmbStCaptionViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .prologue
    .line 4651
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .line 4652
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setCaptionView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;)V

    .line 4653
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    if-eqz v0, :cond_0

    .line 4654
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->setParentView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V

    .line 4659
    :cond_0
    return-void
.end method

.method public setDisplay(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;

    .prologue
    .line 4116
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setDisplay(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;)V

    .line 4120
    return-void
.end method

.method public setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    .locals 5
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    .line 1461
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1464
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x10

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 1469
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 1473
    return-void
.end method

.method public setLanguageIndex(II)V
    .locals 6
    .param p1, "aType"    # I
    .param p2, "aLang"    # I

    .prologue
    .line 1420
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1423
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0xf

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 1428
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 1432
    return-void
.end method

.method public setMmbStBmlEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;)V
    .locals 1
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setMmbStBmlEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;)V

    .line 1739
    return-void
.end method

.method public setMmbStRecPlayingEventListenerSv(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;)V
    .locals 5
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;

    .prologue
    .line 5693
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->hasRecordingFunction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5694
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>()V

    throw v2

    .line 5698
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 5701
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x51

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 5706
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 5711
    return-void
.end method

.method public setMmbStStreamingEventListenerSv(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;)V
    .locals 5
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

    .prologue
    .line 889
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 892
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/4 v2, 0x6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 897
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 901
    return-void
.end method

.method public setParentView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V
    .locals 3
    .param p1, "aParentView"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .prologue
    const/4 v2, 0x1

    .line 4993
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .line 4994
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mLayoutStartFlag:Z

    if-ne v2, v0, :cond_0

    .line 4995
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mChangeLayoutUserParam:I

    invoke-virtual {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->setChangeLayoutInformationState(ZI)V

    .line 5000
    :cond_0
    return-void
.end method

.method public setRestoreMode(Z)V
    .locals 1
    .param p1, "aRestoreMode"    # Z

    .prologue
    .line 4927
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setRestoreMode(Z)V

    .line 4931
    return-void
.end method

.method public setResumePlaying(Z)V
    .locals 6
    .param p1, "aResumeflag"    # Z

    .prologue
    .line 5374
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->hasRecordingFunction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5375
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>()V

    throw v2

    .line 5379
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 5382
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x4b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 5387
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 5392
    return-void
.end method

.method public setState(IZ)V
    .locals 6
    .param p1, "aType"    # I
    .param p2, "aState"    # Z

    .prologue
    .line 1324
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 1327
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0xd

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 1332
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 1336
    return-void
.end method

.method public setSuperimposeDisplayAreaInfo(IIII)V
    .locals 6
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 356
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 359
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x32

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 364
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 369
    return-void
.end method

.method public setSuperimposeSurface(Landroid/view/Surface;)V
    .locals 5
    .param p1, "aSuperimposeSurface"    # Landroid/view/Surface;

    .prologue
    .line 319
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 322
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x31

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 327
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 332
    return-void
.end method

.method public setSuperimposeView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;)V
    .locals 2
    .param p1, "aMmbStSuperimposeViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    .prologue
    .line 4674
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    .line 4675
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setSuperimposeView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;)V

    .line 4676
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    if-eqz v0, :cond_0

    .line 4677
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->setParentView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V

    .line 4682
    :cond_0
    return-void
.end method

.method public setTvView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;)V
    .locals 2
    .param p1, "aMmbStTvViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    .prologue
    .line 4629
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    .line 4630
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    if-eqz v0, :cond_0

    .line 4631
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->setParentView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V

    .line 4636
    :cond_0
    return-void
.end method

.method public setVideoDisplay(I)V
    .locals 6
    .param p1, "aRotateDegrees"    # I

    .prologue
    .line 458
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 461
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x36

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 466
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 471
    return-void
.end method

.method public setVideoDisplayAreaInfo(IIII)V
    .locals 6
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 426
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 429
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x34

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 434
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 439
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 5
    .param p1, "aVideoSurface"    # Landroid/view/Surface;

    .prologue
    .line 389
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 392
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x33

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 397
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 402
    return-void
.end method

.method public start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;)V
    .locals 5
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;

    .prologue
    .line 558
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 561
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x2d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 566
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 570
    return-void
.end method

.method public start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;Ljava/lang/String;I)V
    .locals 6
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    .param p2, "aEntityId"    # Ljava/lang/String;
    .param p3, "aUserParam"    # I

    .prologue
    const/4 v5, 0x0

    .line 517
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 520
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 525
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 529
    return-void
.end method

.method public startPlay(I)V
    .locals 6
    .param p1, "aUserParam"    # I

    .prologue
    .line 5230
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->hasRecordingFunction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5231
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>()V

    throw v2

    .line 5235
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 5238
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x48

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 5243
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 5245
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->getFileDuration()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mTotalTime:J

    .line 5250
    return-void
.end method

.method public stopPlay()V
    .locals 4

    .prologue
    .line 5273
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->hasRecordingFunction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5274
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>()V

    throw v2

    .line 5278
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 5281
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x49

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 5286
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 5291
    return-void
.end method

.method public suspendBmlBrowser(I)V
    .locals 1
    .param p1, "aVramClear"    # I

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->suspendBmlBrowser(I)V

    .line 1689
    return-void
.end method

.method public trickplay(I)I
    .locals 8
    .param p1, "aKind"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5419
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->hasRecordingFunction()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5420
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>()V

    throw v3

    .line 5424
    :cond_0
    if-ltz p1, :cond_1

    const/4 v5, 0x2

    if-ge v5, p1, :cond_2

    .line 5426
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;-><init>()V

    .line 5427
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const/4 v3, -0x3

    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->setExceptionDetail(I)V

    .line 5428
    throw v0

    .line 5432
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :cond_2
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getOperationRunning()Z

    move-result v5

    if-ne v3, v5, :cond_3

    .line 5454
    :goto_0
    return v3

    .line 5440
    :cond_3
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 5443
    .local v2, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v5, 0x4c

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-direct {v1, v5, v2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 5447
    .local v1, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setOperationRunning(Z)V

    .line 5449
    invoke-direct {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    move v3, v4

    .line 5454
    goto :goto_0
.end method

.method public tune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;Ljava/lang/String;I)V
    .locals 9
    .param p1, "aServiceId"    # I
    .param p2, "aMode"    # I
    .param p3, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .param p4, "aEntityId"    # Ljava/lang/String;
    .param p5, "aUserParam"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 636
    if-ne v7, p2, :cond_0

    .line 637
    if-nez p3, :cond_0

    .line 638
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;-><init>()V

    .line 639
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const/4 v4, -0x3

    invoke-virtual {v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->setExceptionDetail(I)V

    .line 640
    throw v0

    .line 645
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :cond_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 648
    .local v2, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p3, v4, v8

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v1, v8, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 653
    .local v1, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->getTuneQueueSize()I

    move-result v3

    .line 656
    .local v3, "tunequeuesize":I
    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addTuneQueue(I)V

    .line 658
    if-eqz v3, :cond_1

    .line 660
    invoke-direct {p0, v1, v2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 669
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    goto :goto_0
.end method

.method public videoDecode(I)V
    .locals 6
    .param p1, "aState"    # I

    .prologue
    .line 933
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 936
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/4 v2, 0x7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 941
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 945
    return-void
.end method

.method public videoMute(I)V
    .locals 6
    .param p1, "aState"    # I

    .prologue
    .line 974
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 977
    .local v1, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    const/16 v2, 0x39

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V

    .line 982
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->addQueue(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    .line 986
    return-void
.end method
