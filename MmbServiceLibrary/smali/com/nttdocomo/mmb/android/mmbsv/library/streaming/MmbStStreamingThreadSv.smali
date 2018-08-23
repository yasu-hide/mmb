.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;
.super Ljava/lang/Thread;
.source "MmbStStreamingThreadSv.java"


# static fields
.field public static final RETURN_DEFAULT_VALUE:I = 0x1


# instance fields
.field private mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

.field mFinalizeFlag:Z

.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;",
            ">;"
        }
    .end annotation
.end field

.field private mSeekQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;",
            ">;"
        }
    .end annotation
.end field

.field private mTuneQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/ArrayDeque;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;)V
    .locals 1
    .param p4, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;",
            ">;",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;",
            ">;",
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;",
            ">;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "aQueue":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;>;"
    .local p2, "aTuneQueue":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;>;"
    .local p3, "aSeekQueue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;>;"
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 60
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mTuneQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 65
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mSeekQueue:Ljava/util/ArrayDeque;

    .line 69
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mFinalizeFlag:Z

    .line 96
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 97
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mTuneQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 98
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mSeekQueue:Ljava/util/ArrayDeque;

    .line 99
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    .line 103
    return-void
.end method

.method private audioDecode(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 1633
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->audioDecode(I)V

    .line 1636
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1637
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1638
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1651
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1639
    :catch_0
    move-exception v0

    .line 1640
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "audioDecode exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1642
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1643
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 1644
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "audioDecode fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1646
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private audioMute(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 1683
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->audioMute(I)V

    .line 1686
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1687
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1688
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1701
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1689
    :catch_0
    move-exception v0

    .line 1690
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "audioMute exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1692
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1693
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 1694
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "audioMute fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1696
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private cancelScan(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 1336
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->cancelScan()V

    .line 1339
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1340
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1341
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1354
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1342
    :catch_0
    move-exception v0

    .line 1344
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "cancelScan exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1345
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1346
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 1347
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "cancelScan fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1349
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private captionNotifyExist(IZLcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aIndex"    # I
    .param p2, "aIsExist"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3114
    .local p3, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->captionNotifyExist(IZ)V

    .line 3117
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3118
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3119
    invoke-virtual {p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 3123
    return-void
.end method

.method private captionNotifyLangNumSetEnable(IBLcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aIndex"    # I
    .param p2, "aLangNum"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IB",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2968
    .local p3, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->captionNotifyLangNumSetEnable(IB)V

    .line 2971
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2972
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2973
    invoke-virtual {p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2977
    return-void
.end method

.method private captionNotifyNothingFixedTime(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3004
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->captionNotifyNothingFixedTime(I)V

    .line 3007
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3008
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3009
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 3013
    return-void
.end method

.method private captionNotifyRecv(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3074
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->captionNotifyRecv(I)V

    .line 3077
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3078
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3079
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 3083
    return-void
.end method

.method private captionNotifyRestart(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3039
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->captionNotifyRestart(I)V

    .line 3042
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3043
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3044
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 3048
    return-void
.end method

.method private changeParental(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x1

    .line 2242
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->changeParental()V

    .line 2245
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2246
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2247
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2256
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 2248
    :catch_0
    move-exception v0

    .line 2249
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "exception error(%d)"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->getExceptionDetail()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2251
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private destroyFinalizeFlag()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3236
    :goto_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3237
    const/4 v2, 0x0

    .line 3240
    .local v2, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    move-object v2, v0

    .line 3242
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->getResultObj()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v3

    .line 3243
    .local v3, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3245
    .end local v3    # "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    :catch_0
    move-exception v1

    .line 3246
    .local v1, "exception":Ljava/lang/InterruptedException;
    const-string v4, "Take queue error"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3250
    .end local v1    # "exception":Ljava/lang/InterruptedException;
    .end local v2    # "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    :cond_0
    iput-boolean v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mFinalizeFlag:Z

    .line 3254
    return-void
.end method

.method private end(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 1171
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->end()V

    .line 1174
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1175
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1176
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1189
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "end exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1180
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1181
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 1182
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "end fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1184
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private executeMessage(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "aProcessId"    # I
    .param p3, "aArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 166
    packed-switch p1, :pswitch_data_0

    .line 488
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 495
    :goto_0
    return-void

    .line 168
    :pswitch_1
    aget-object v0, p3, v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;

    aget-object v1, p3, v4

    check-cast v1, Ljava/lang/String;

    aget-object v2, p3, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto :goto_0

    .line 172
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->end(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto :goto_0

    .line 176
    :pswitch_3
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v3, p3, v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    aget-object v4, p3, v5

    check-cast v4, Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->tune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto :goto_0

    .line 181
    :pswitch_4
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->scan(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto :goto_0

    .line 185
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->cancelScan(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto :goto_0

    .line 189
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->getStatus(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto :goto_0

    .line 193
    :pswitch_7
    aget-object v0, p3, v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->setMmbStStreamingEventListenerSv(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto :goto_0

    .line 197
    :pswitch_8
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->videoDecode(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto :goto_0

    .line 201
    :pswitch_9
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->videoMute(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto :goto_0

    .line 205
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->getVideoInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto :goto_0

    .line 209
    :pswitch_b
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->audioDecode(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 212
    :pswitch_c
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->audioMute(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 215
    :pswitch_d
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->selectAudioMode(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 219
    :pswitch_e
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->selectAudioLanguage(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 223
    :pswitch_f
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->getAudioLanguage(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 227
    :pswitch_10
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->getAudioInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 231
    :pswitch_11
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->setState(IZLcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 235
    :pswitch_12
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->getLanguageCount(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 239
    :pswitch_13
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->setLanguageIndex(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 243
    :pswitch_14
    aget-object v0, p3, v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 247
    :pswitch_15
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->pause(IIZLcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 251
    :pswitch_16
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->getProgramInformation(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 255
    :pswitch_17
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->getAudioLanguageNum(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 259
    :pswitch_18
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onCompleteScan(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 263
    :pswitch_19
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onCompleteStartSt(IIILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 268
    :pswitch_1a
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onCompleteSelectCh(IIILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 273
    :pswitch_1b
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onChangeViewingStatus(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 277
    :pswitch_1c
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onChangeAntennaLevel(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 281
    :pswitch_1d
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onNotifyServiceNg(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 285
    :pswitch_1e
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onUpdatePmt(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 289
    :pswitch_1f
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onUpdateNit(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 293
    :pswitch_20
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onUpdateBit(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 297
    :pswitch_21
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onUpdateEit(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 301
    :pswitch_22
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onUpdateSdt(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 305
    :pswitch_23
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onUpdateEmm(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 309
    :pswitch_24
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onNotifyError(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 313
    :pswitch_25
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, p3, v5

    check-cast v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onVideoInformation(IIILmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 318
    :pswitch_26
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onAudioInformation(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 322
    :pswitch_27
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onChangeAudioComponent(SLcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 326
    :pswitch_28
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v1, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->captionNotifyLangNumSetEnable(IBLcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 330
    :pswitch_29
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->captionNotifyNothingFixedTime(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 334
    :pswitch_2a
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->captionNotifyRestart(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 338
    :pswitch_2b
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->captionNotifyRecv(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 342
    :pswitch_2c
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->captionNotifyExist(IZLcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 346
    :pswitch_2d
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->notifyOnDestroy(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 350
    :pswitch_2e
    aget-object v0, p3, v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->notifyOnPause(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 354
    :pswitch_2f
    aget-object v0, p3, v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->notifyOnResume(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 358
    :pswitch_30
    aget-object v0, p3, v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 362
    :pswitch_31
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->changeParental(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 366
    :pswitch_32
    aget-object v0, p3, v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->setCaptionSurface(Landroid/view/Surface;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 370
    :pswitch_33
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, p3, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->setCaptionDisplayAreaInfo(IIIILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 375
    :pswitch_34
    aget-object v0, p3, v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->setSuperimposeSurface(Landroid/view/Surface;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 379
    :pswitch_35
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, p3, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->setSuperimposeDisplayAreaInfo(IIIILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 384
    :pswitch_36
    aget-object v0, p3, v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->setVideoSurface(Landroid/view/Surface;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 388
    :pswitch_37
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, p3, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->setVideoDisplayAreaInfo(IIIILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 393
    :pswitch_38
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->setVideoDisplay(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 397
    :pswitch_39
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->judgmentReservationReschedule(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 401
    :pswitch_3a
    aget-object v0, p3, v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->notifyBroadcastAction(Landroid/content/Intent;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 405
    :pswitch_3b
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->setBmlState(ZLcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 409
    :pswitch_3c
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->getBmlOnOffStatus(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 413
    :pswitch_3d
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->getCaptionOnOffStatus(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 417
    :pswitch_3e
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->getSuperimposeOnOffStatus(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 421
    :pswitch_3f
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->notifyOnUnload(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 425
    :pswitch_40
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->getSuperimposeAutoDisplay(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 429
    :pswitch_41
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->getCnValue(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 433
    :pswitch_42
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onFinishFunction(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 437
    :pswitch_43
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onFinishReleaseResource(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 440
    :pswitch_44
    aget-object v0, p3, v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;

    invoke-virtual {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->prepPlay(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 443
    :pswitch_45
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->startPlay(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 446
    :pswitch_46
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->stopPlay(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 449
    :pswitch_47
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->isResumeInfoExist(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 452
    :pswitch_48
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->setResumePlaying(ZLcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 455
    :pswitch_49
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->trickplay(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 458
    :pswitch_4a
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v2, v3, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->seek(JILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 461
    :pswitch_4b
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->getCurrentPlayPosition(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 464
    :pswitch_4c
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->getFileDuration(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 467
    :pswitch_4d
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->resumePlay(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 470
    :pswitch_4e
    aget-object v0, p3, v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->setMmbStRecPlayingEventListenerSv(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 474
    :pswitch_4f
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onCompleteStartPlay(IIILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 478
    :pswitch_50
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onPlayToEnd(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 481
    :pswitch_51
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onFastForwardToEnd(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 484
    :pswitch_52
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->onRewindToTop(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    goto/16 :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_0
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_f
        :pswitch_38
        :pswitch_39
        :pswitch_c
        :pswitch_9
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_0
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_0
        :pswitch_0
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
    .end packed-switch
.end method

.method private getAudioInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1858
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v0, 0x0

    .line 1860
    .local v0, "audioinfo":I
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getAudioInfo()I

    move-result v0

    .line 1863
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1864
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1865
    invoke-virtual {p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1874
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1866
    :catch_0
    move-exception v1

    .line 1867
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v3, "getAudioInfo exception error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1869
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private getAudioLanguage(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1820
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v0, 0x0

    .line 1822
    .local v0, "audiolanguagevalue":I
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getAudioLanguage()I

    move-result v0

    .line 1825
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1826
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1827
    invoke-virtual {p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1836
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1828
    :catch_0
    move-exception v1

    .line 1829
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v3, "getAudioLanguage exception error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1831
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private getAudioLanguageNum(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2209
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v0, 0x0

    .line 2211
    .local v0, "audiolanguagenum":I
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getAudioLanguageNum()I

    move-result v0

    .line 2214
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2215
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2216
    invoke-virtual {p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2225
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 2217
    :catch_0
    move-exception v1

    .line 2218
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v3, "getAudioLanguageNum exception error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2220
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private getCurrentPlayPosition(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const-wide/16 v0, 0x0

    .line 634
    .local v0, "currentTime":J
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getCurrentPlayPosition()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 641
    :goto_0
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 642
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput-wide v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultLongData:J

    .line 643
    invoke-virtual {p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 649
    return-void

    .line 635
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :catch_0
    move-exception v2

    .line 636
    .local v2, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v4, "getCurrentPlayPosition exception error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    invoke-virtual {p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private getFileDuration(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const-wide/16 v2, 0x0

    .line 597
    .local v2, "totalTime":J
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getFileDuration()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 604
    :goto_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 605
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput-wide v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultLongData:J

    .line 606
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 612
    return-void

    .line 598
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :catch_0
    move-exception v0

    .line 599
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v4, "getFileDuration exception error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private getLanguageCount(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 5
    .param p1, "aType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v4, 0x0

    .line 1955
    const/4 v1, 0x0

    .line 1957
    .local v1, "languagecount":I
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getLanguageCount(I)I

    move-result v1

    .line 1960
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1961
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput v1, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1962
    invoke-virtual {p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1975
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1963
    :catch_0
    move-exception v0

    .line 1964
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v3, "getLanguageCount exception error"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1966
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1967
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 1968
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v3, "getLanguageCount fatal error"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1970
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private getProgramInformation(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 5
    .param p1, "aCondition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2171
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v0, 0x0

    .line 2173
    .local v0, "eventinfo":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getProgramInformation(I)Ljava/util/List;

    move-result-object v0

    .line 2176
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2177
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput-object v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultListData:Ljava/util/List;

    .line 2178
    invoke-virtual {p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2187
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 2179
    :catch_0
    move-exception v1

    .line 2180
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v3, "getProgramInformation exception error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2182
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private getStatus(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1374
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v2, 0x0

    .line 1376
    .local v2, "status":I
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getStatus()I

    move-result v2

    .line 1379
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1380
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1381
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1382
    :catch_0
    move-exception v0

    .line 1383
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v3, "getStatus exception error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1385
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private getVideoInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1582
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v2, 0x0

    .line 1584
    .local v2, "videoparam":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    move-result-object v2

    .line 1587
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1588
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultVideoParameterData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    .line 1589
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1598
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1590
    :catch_0
    move-exception v0

    .line 1591
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v3, "getVideoInfo exception error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1593
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private isResumeInfoExist(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 5
    .param p1, "aPrgNo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 863
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v0, 0x0

    .line 865
    .local v0, "bRet":Z
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->isResumeInfoExist(I)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 872
    :goto_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 873
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput-boolean v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultBooleanData:Z

    .line 874
    invoke-virtual {p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 880
    return-void

    .line 866
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :catch_0
    move-exception v1

    .line 867
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v3, "isResumeInfoExist exception error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 869
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private judgmentReservationReschedule(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 5
    .param p1, "aUserParam"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v4, 0x1

    .line 3543
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->judgmentReservationReschedule(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3548
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3549
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3550
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 3555
    :goto_0
    return-void

    .line 3544
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :catch_0
    move-exception v0

    .line 3545
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :try_start_1
    const-string v2, "judgmentReservationReschedule exception error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3548
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3549
    .restart local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3550
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 3548
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :catchall_0
    move-exception v2

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3549
    .restart local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3550
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 3551
    throw v2
.end method

.method private notifyBroadcastAction(Landroid/content/Intent;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 3139
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyBroadcastAction(Landroid/content/Intent;)V

    .line 3142
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3143
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3144
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3157
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 3145
    :catch_0
    move-exception v0

    .line 3146
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "notifyBroadcastAction exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3148
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 3149
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 3150
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "notifyBroadcastAction fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3152
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private notifyOnDestroy(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3218
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    return-void
.end method

.method private notifyOnPause(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3275
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyOnPause(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 3278
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3279
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3280
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3289
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 3281
    :catch_0
    move-exception v0

    .line 3282
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "notifyOnPause fatal error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3284
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private notifyOnResume(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 5
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3309
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyOnResume(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 3312
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3313
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3314
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3329
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 3315
    :catch_0
    move-exception v0

    .line 3316
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "notifyOnResume exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3318
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3319
    .restart local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3320
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 3321
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :catch_1
    move-exception v0

    .line 3322
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "notifyOnResume fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3324
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private notifyOnUnload(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 3176
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyOnUnload()V

    .line 3179
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->destroyFinalizeFlag()V

    .line 3182
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3183
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3184
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3198
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 3186
    :catch_0
    move-exception v0

    .line 3187
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "notifyOnUnload exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3189
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 3190
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 3191
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "notifyOnUnload fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3193
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private onAudioInformation(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aAudioInfo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2754
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onAudioInformation(I)V

    .line 2757
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2758
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2759
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2763
    return-void
.end method

.method private onChangeAntennaLevel(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aAntennaLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2429
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onChangeAntennaLevel(I)V

    .line 2432
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2433
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2434
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2438
    return-void
.end method

.method private onChangeAudioComponent(SLcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aComponentTag"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2927
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onChangeAudioComponent(S)V

    .line 2930
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2931
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2932
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2936
    return-void
.end method

.method private onChangeViewingStatus(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aViewingStatus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2396
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onChangeViewingStatus(I)V

    .line 2399
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2400
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2401
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2405
    return-void
.end method

.method private onCompleteScan(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aResult"    # I
    .param p2, "aUserParam"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2284
    .local p3, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onCompleteScan(II)V

    .line 2287
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2288
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2289
    invoke-virtual {p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2293
    return-void
.end method

.method private onCompleteSelectCh(IIILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2363
    .local p4, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onCompleteSelectCh(III)V

    .line 2366
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2367
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2368
    invoke-virtual {p4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2372
    return-void
.end method

.method private onCompleteStartPlay(IIILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2794
    .local p4, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onCompleteStartPlay(III)V

    .line 2797
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2798
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2799
    invoke-virtual {p4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2804
    return-void
.end method

.method private onCompleteStartSt(IIILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2324
    .local p4, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onCompleteStartSt(III)V

    .line 2327
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2328
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2329
    invoke-virtual {p4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2333
    return-void
.end method

.method private onFinishFunction(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aErrorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3769
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onFinishFunction(I)V

    .line 3772
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3773
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3774
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 3779
    return-void
.end method

.method private onFinishReleaseResource(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aErrorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3805
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onFinishReleaseResource(I)V

    .line 3808
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3809
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3810
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 3815
    return-void
.end method

.method private onNotifyError(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aErrorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2680
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onNotifyError(I)V

    .line 2683
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2684
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2685
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2689
    return-void
.end method

.method private onNotifyServiceNg(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aCause"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2461
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onNotifyServiceNg(I)V

    .line 2464
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2465
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2466
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2470
    return-void
.end method

.method private onPlayToEnd(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aResult"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2827
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onPlayToEnd(I)V

    .line 2830
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2831
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2832
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2837
    return-void
.end method

.method private onUpdateBit(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2551
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onUpdateBit()V

    .line 2554
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2555
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2556
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2560
    return-void
.end method

.method private onUpdateEit(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2581
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onUpdateEit()V

    .line 2584
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2585
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2586
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2590
    return-void
.end method

.method private onUpdateEmm(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2641
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onUpdateEmm()V

    .line 2644
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2645
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2646
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2650
    return-void
.end method

.method private onUpdateNit(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2521
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onUpdateNit()V

    .line 2524
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2525
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2526
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2530
    return-void
.end method

.method private onUpdatePmt(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2491
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onUpdatePmt()V

    .line 2494
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2495
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2496
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2500
    return-void
.end method

.method private onUpdateSdt(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2611
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onUpdateSdt()V

    .line 2614
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2615
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2616
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2620
    return-void
.end method

.method private onVideoInformation(IIILmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aPicWidth"    # I
    .param p2, "aPicHeight"    # I
    .param p3, "aAspect"    # I
    .param p4, "aStereoView"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2718
    .local p5, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onVideoInformation(IIILmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;)V

    .line 2721
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2722
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2723
    invoke-virtual {p5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2727
    return-void
.end method

.method private pause(IIZLcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 2123
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->pause(IIZ)V

    .line 2126
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2127
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2129
    invoke-virtual {p4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2142
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 2130
    :catch_0
    move-exception v0

    .line 2131
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "pause exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2133
    invoke-virtual {p4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 2134
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 2135
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "pause fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2137
    invoke-virtual {p4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private resumePlay(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v5, 0x3

    .line 551
    const/4 v1, -0x2

    .line 554
    .local v1, "lRet":I
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->resumePlay()I

    move-result v1

    .line 556
    const/4 v3, -0x2

    if-ne v3, v1, :cond_0

    .line 557
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->stopPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :cond_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3, v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyOperationResult(II)V

    .line 568
    :goto_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 569
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v3, 0x1

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 570
    invoke-virtual {p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 575
    return-void

    .line 559
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :catch_0
    move-exception v0

    .line 560
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "stopPlay Exception error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    const/4 v1, -0x2

    .line 564
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3, v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyOperationResult(II)V

    goto :goto_0

    .end local v0    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v4, v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyOperationResult(II)V

    throw v3
.end method

.method private scan(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aUserParam"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 1294
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->scan(I)V

    .line 1297
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1298
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1299
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1312
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1300
    :catch_0
    move-exception v0

    .line 1302
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "scan exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1303
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1304
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 1305
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "scan fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1307
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private seek(JILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 9
    .param p1, "aMsec"    # J
    .param p3, "aUserParam"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p4, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 679
    .local v3, "lRet":I
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 680
    .local v5, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v7, 0x1

    iput v7, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 683
    const/4 v4, 0x0

    .line 686
    .local v4, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    :try_start_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mSeekQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 687
    if-nez v4, :cond_0

    .line 724
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v7, v3, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifySeekResult(II)V

    .line 732
    :goto_0
    return-void

    .line 694
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->getArgument()[Ljava/lang/Object;

    move-result-object v1

    .line 695
    .local v1, "args":[Ljava/lang/Object;
    const/4 v7, 0x0

    aget-object v7, v1, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 697
    .local v6, "seekUserparam":I
    if-eq v6, p3, :cond_1

    .line 724
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v7, v3, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifySeekResult(II)V

    goto :goto_0

    .line 706
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v7, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->seek(JI)I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 713
    :goto_1
    const/4 v7, -0x2

    if-ne v7, v3, :cond_2

    .line 714
    :try_start_3
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->stopPlay()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 717
    :cond_2
    :try_start_4
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mSeekQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 724
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v7, v3, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifySeekResult(II)V

    .line 727
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v6    # "seekUserparam":I
    :goto_2
    invoke-virtual {p4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 707
    .restart local v1    # "args":[Ljava/lang/Object;
    .restart local v6    # "seekUserparam":I
    :catch_0
    move-exception v2

    .line 708
    .local v2, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const/4 v3, -0x3

    .line 711
    goto :goto_1

    .line 709
    .end local v2    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v2

    .line 710
    .local v2, "exception":Ljava/lang/Exception;
    const/4 v3, -0x2

    goto :goto_1

    .line 717
    .end local v2    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :try_start_5
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mSeekQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 719
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v6    # "seekUserparam":I
    :catch_2
    move-exception v2

    .line 720
    .restart local v2    # "exception":Ljava/lang/Exception;
    :try_start_6
    const-string v7, "seek Exception error"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 721
    const/4 v3, -0x2

    .line 724
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v7, v3, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifySeekResult(II)V

    goto :goto_2

    .end local v2    # "exception":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v8, v3, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifySeekResult(II)V

    throw v7
.end method

.method private selectAudioLanguage(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aLang"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 1784
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->selectAudioLanguage(I)V

    .line 1787
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1788
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1789
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1802
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1790
    :catch_0
    move-exception v0

    .line 1791
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "selectAudioLanguage exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1793
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1794
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 1795
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "selectAudioLanguage fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1797
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private selectAudioMode(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 1733
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->selectAudioMode(I)V

    .line 1736
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1737
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1738
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1751
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1739
    :catch_0
    move-exception v0

    .line 1740
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "selectAudioMode exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1742
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1743
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 1744
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "selectAudioMode fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1746
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 2061
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 2064
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2065
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2066
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2079
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 2067
    :catch_0
    move-exception v0

    .line 2068
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "setDisplayArea exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2070
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 2071
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 2072
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "setDisplayArea fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2074
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private setLanguageIndex(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aType"    # I
    .param p2, "aLang"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 2010
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setLanguageIndex(II)V

    .line 2013
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2014
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2015
    invoke-virtual {p3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2028
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 2016
    :catch_0
    move-exception v0

    .line 2017
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "setLanguageIndex exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2019
    invoke-virtual {p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 2020
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 2021
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "getLanguageCount fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2023
    invoke-virtual {p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private setMmbStRecPlayingEventListenerSv(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setMmbStRecPlayingEventListenerSv(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;)V

    .line 524
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 525
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 526
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 531
    return-void
.end method

.method private setMmbStStreamingEventListenerSv(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1445
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setMmbStStreamingEventListenerSv(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;)V

    .line 1448
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1449
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1450
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 1455
    return-void
.end method

.method private setResumePlaying(ZLcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aResumeflag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 825
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setResumePlaying(Z)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :goto_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 834
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 835
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 840
    return-void

    .line 826
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :catch_0
    move-exception v0

    .line 827
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "setResumePlaying exception error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 829
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private setState(IZLcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aType"    # I
    .param p2, "aState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 1908
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setState(IZ)V

    .line 1911
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1912
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1913
    invoke-virtual {p3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1926
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1914
    :catch_0
    move-exception v0

    .line 1915
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "setState exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1917
    invoke-virtual {p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1918
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 1919
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "setState fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1921
    invoke-virtual {p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 1128
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;)V

    .line 1131
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1132
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1133
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1146
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "start exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1137
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1138
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 1139
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "start fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1141
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 7
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    .param p2, "aEntityId"    # Ljava/lang/String;
    .param p3, "aUserParam"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;",
            "Ljava/lang/String;",
            "I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1068
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3, p1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->preStart(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;I)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;

    move-result-object v2

    .line 1071
    .local v2, "resultsetting":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1072
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v3, 0x1

    iput v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1073
    invoke-virtual {p4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 1076
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3, v2, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1097
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    .end local v2    # "resultsetting":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    :goto_0
    return-void

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const/4 v3, -0x8

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->getExceptionDetail()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-boolean v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbExecutionSelectStart:Z

    if-ne v5, v3, :cond_0

    .line 1081
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1082
    .restart local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1083
    invoke-virtual {p4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 1085
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :cond_0
    const-string v3, "start exception error"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1087
    invoke-virtual {p4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1089
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 1090
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v3, "start fatal error"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1092
    invoke-virtual {p4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private startPlay(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aUserParam"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 951
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->startPlay(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 963
    :goto_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 964
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 965
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 971
    return-void

    .line 952
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :catch_0
    move-exception v0

    .line 953
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "startPlay exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 955
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 956
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 957
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "startPlay fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 959
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private stopPlay(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 903
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->stopPlay()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 914
    :goto_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 915
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 916
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 922
    return-void

    .line 904
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :catch_0
    move-exception v0

    .line 905
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "stopPlay exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 907
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 908
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 909
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "stopPlay fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 910
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private trickplay(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 6
    .param p1, "aKind"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 761
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v1, -0x2

    .line 764
    .local v1, "lRet":I
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->trickplay(I)I

    move-result v1

    .line 766
    const/4 v4, -0x2

    if-ne v4, v1, :cond_0

    .line 767
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->stopPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    :cond_0
    const/4 v2, 0x0

    .line 774
    .local v2, "operation":I
    packed-switch p1, :pswitch_data_0

    .line 787
    :goto_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyOperationResult(II)V

    .line 791
    :goto_1
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 792
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v4, 0x1

    iput v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 793
    invoke-virtual {p2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 799
    return-void

    .line 776
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :pswitch_0
    const/4 v2, 0x0

    .line 777
    goto :goto_0

    .line 779
    :pswitch_1
    const/4 v2, 0x1

    .line 780
    goto :goto_0

    .line 782
    :pswitch_2
    const/4 v2, 0x2

    goto :goto_0

    .line 769
    .end local v2    # "operation":I
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "trickplay Exception error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    const/4 v1, -0x2

    .line 773
    const/4 v2, 0x0

    .line 774
    .restart local v2    # "operation":I
    packed-switch p1, :pswitch_data_1

    .line 787
    :goto_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyOperationResult(II)V

    goto :goto_1

    .line 776
    :pswitch_3
    const/4 v2, 0x0

    .line 777
    goto :goto_2

    .line 779
    :pswitch_4
    const/4 v2, 0x1

    .line 780
    goto :goto_2

    .line 782
    :pswitch_5
    const/4 v2, 0x2

    goto :goto_2

    .line 773
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "operation":I
    :catchall_0
    move-exception v4

    const/4 v2, 0x0

    .line 774
    .restart local v2    # "operation":I
    packed-switch p1, :pswitch_data_2

    .line 787
    :goto_3
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v5, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->notifyOperationResult(II)V

    .line 788
    throw v4

    .line 776
    :pswitch_6
    const/4 v2, 0x0

    .line 777
    goto :goto_3

    .line 779
    :pswitch_7
    const/4 v2, 0x1

    .line 780
    goto :goto_3

    .line 782
    :pswitch_8
    const/4 v2, 0x2

    goto :goto_3

    .line 774
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private tune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 13
    .param p1, "aServiceId"    # I
    .param p2, "aMode"    # I
    .param p3, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .param p4, "aEntityId"    # Ljava/lang/String;
    .param p5, "aUserParam"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;",
            "Ljava/lang/String;",
            "I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1221
    .local p6, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v9, 0x0

    .line 1222
    .local v9, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1223
    .local v12, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v12, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1227
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mTuneQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    move-object v9, v0

    .line 1229
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mTuneQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v11

    .line 1232
    .local v11, "queuesize":I
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->getArgument()[Ljava/lang/Object;

    move-result-object v7

    .line 1233
    .local v7, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v7, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1235
    .local v10, "messagecount":I
    const/4 v1, 0x1

    if-ge v1, v11, :cond_0

    if-eqz v10, :cond_0

    .line 1236
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mTuneQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    .line 1257
    .end local v7    # "args":[Ljava/lang/Object;
    .end local v10    # "messagecount":I
    .end local v11    # "queuesize":I
    :goto_0
    return-void

    .line 1243
    .restart local v7    # "args":[Ljava/lang/Object;
    .restart local v10    # "messagecount":I
    .restart local v11    # "queuesize":I
    :cond_0
    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 1246
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->tune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;Ljava/lang/String;I)V

    .line 1247
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mTuneQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1248
    .end local v7    # "args":[Ljava/lang/Object;
    .end local v10    # "messagecount":I
    .end local v11    # "queuesize":I
    :catch_0
    move-exception v8

    .line 1249
    .local v8, "exception":Ljava/lang/InterruptedException;
    const-string v1, "Take queue error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1251
    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private videoDecode(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 1490
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->videoDecode(I)V

    .line 1493
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1494
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1495
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1508
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1496
    :catch_0
    move-exception v0

    .line 1497
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "videoDecode exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1499
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1500
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 1501
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "videoDecode fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1503
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private videoMute(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 1540
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->videoMute(I)V

    .line 1543
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1544
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1545
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1558
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1546
    :catch_0
    move-exception v0

    .line 1547
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "videoMute exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1549
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1550
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 1551
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "videoMute fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1553
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method


# virtual methods
.method public getBmlOnOffStatus(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3644
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlOnOffStatus()Z

    move-result v2

    .line 3646
    .local v2, "starterflag":Z
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3647
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput-boolean v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultBooleanData:Z

    .line 3648
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3657
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    .end local v2    # "starterflag":Z
    :goto_0
    return-void

    .line 3649
    :catch_0
    move-exception v0

    .line 3650
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v3, "getBmlOnOffStatus exception error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3652
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getCaptionOnOffStatus(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3674
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getCaptionOnOffStatus()Z

    move-result v2

    .line 3676
    .local v2, "starterflag":Z
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3677
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput-boolean v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultBooleanData:Z

    .line 3678
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3687
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    .end local v2    # "starterflag":Z
    :goto_0
    return-void

    .line 3679
    :catch_0
    move-exception v0

    .line 3680
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v3, "getCaptionOnOffStatus exception error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3682
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getCnValue(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1407
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getCnValue()I

    move-result v0

    .line 1409
    .local v0, "cnvalue":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1410
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1411
    invoke-virtual {p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    .end local v0    # "cnvalue":I
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 1412
    :catch_0
    move-exception v1

    .line 1413
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v3, "getCnValue exception error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1415
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getSuperimposeAutoDisplay(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3734
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getSuperimposeAutoDisplay()Z

    move-result v0

    .line 3736
    .local v0, "automaticflag":Z
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3737
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput-boolean v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultBooleanData:Z

    .line 3738
    invoke-virtual {p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3747
    .end local v0    # "automaticflag":Z
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 3739
    :catch_0
    move-exception v1

    .line 3740
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v3, "getSuperimposeOnOffStatus exception error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3742
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getSuperimposeOnOffStatus(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3704
    .local p1, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getSuperimposeOnOffStatus()Z

    move-result v2

    .line 3706
    .local v2, "starterflag":Z
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3707
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    iput-boolean v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultBooleanData:Z

    .line 3708
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3717
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    .end local v2    # "starterflag":Z
    :goto_0
    return-void

    .line 3709
    :catch_0
    move-exception v0

    .line 3710
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v3, "getSuperimposeOnOffStatus exception error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3712
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onFastForwardToEnd(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aResult"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2860
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onFastForwardToEnd(I)V

    .line 2863
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2864
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2865
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2870
    return-void
.end method

.method public onRewindToTop(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aResult"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2893
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->onRewindToTop(I)V

    .line 2896
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 2897
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 2898
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 2903
    return-void
.end method

.method public prepPlay(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v3, 0x0

    .line 997
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->prepPlay(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1009
    :goto_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 1010
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 1011
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 1016
    return-void

    .line 998
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :catch_0
    move-exception v0

    .line 999
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "prepPlay exception error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1001
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1002
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    :catch_1
    move-exception v0

    .line 1003
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "prepPlay fatal error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1005
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 121
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mFinalizeFlag:Z

    .line 124
    :goto_0
    iget-boolean v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mFinalizeFlag:Z

    if-eqz v6, :cond_0

    .line 126
    const/4 v3, 0x0

    .line 128
    .local v3, "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;

    move-object v3, v0

    .line 131
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->getProcessId()I

    move-result v4

    .line 132
    .local v4, "processid":I
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->getResultObj()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v5

    .line 133
    .local v5, "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->getArgument()[Ljava/lang/Object;

    move-result-object v1

    .line 136
    .local v1, "args":[Ljava/lang/Object;
    invoke-direct {p0, v4, v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->executeMessage(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v4    # "processid":I
    .end local v5    # "resultobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    :catch_0
    move-exception v2

    .line 139
    .local v2, "exception":Ljava/lang/InterruptedException;
    const-string v6, "Take queue error"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    .end local v2    # "exception":Ljava/lang/InterruptedException;
    .end local v3    # "message":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
    :cond_0
    return-void
.end method

.method public setBmlState(ZLcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3614
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setBmlState(Z)V

    .line 3616
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3617
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3618
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3627
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 3619
    :catch_0
    move-exception v0

    .line 3620
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "setBmlState exception error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3622
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setCaptionDisplayAreaInfo(IIIILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3384
    .local p5, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setCaptionDisplayAreaInfo(IIII)V

    .line 3387
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3388
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3389
    invoke-virtual {p5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 3394
    return-void
.end method

.method public setCaptionSurface(Landroid/view/Surface;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aCaptionSurface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3350
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setCaptionSurface(Landroid/view/Surface;)V

    .line 3353
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3354
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3355
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 3360
    return-void
.end method

.method public setSuperimposeDisplayAreaInfo(IIIILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3449
    .local p5, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setSuperimposeDisplayAreaInfo(IIII)V

    .line 3453
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3454
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3455
    invoke-virtual {p5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 3460
    return-void
.end method

.method public setSuperimposeSurface(Landroid/view/Surface;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aSuperimposeSurface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3415
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setSuperimposeSurface(Landroid/view/Surface;)V

    .line 3418
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3419
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3420
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 3425
    return-void
.end method

.method public setVideoDisplay(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .param p1, "aRotateDegrees"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3574
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setVideoDisplay(I)V

    .line 3576
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3577
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v2, 0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3578
    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3587
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    :goto_0
    return-void

    .line 3579
    :catch_0
    move-exception v0

    .line 3580
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v2, "setVideoDisplay exception error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3582
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setVideoDisplayAreaInfo(IIIILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3515
    .local p5, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setVideoDisplayAreaInfo(IIII)V

    .line 3519
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3520
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3521
    invoke-virtual {p5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 3526
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 2
    .param p1, "aVideoSurface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3481
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->setVideoSurface(Landroid/view/Surface;)V

    .line 3484
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;-><init>()V

    .line 3485
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;
    const/4 v1, 0x1

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;->mmbResultIntData:I

    .line 3486
    invoke-virtual {p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 3491
    return-void
.end method
