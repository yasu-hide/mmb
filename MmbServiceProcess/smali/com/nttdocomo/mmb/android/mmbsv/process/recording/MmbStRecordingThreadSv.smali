.class Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;
.super Ljava/lang/Thread;
.source "MmbStRecordingThreadSv.java"


# instance fields
.field private mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

.field mFinalizeFlag:Z

.field private mLocalToReasonMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalToResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;",
            ">;"
        }
    .end annotation
.end field

.field private mStateMapSuccess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)V
    .locals 1
    .param p2, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;",
            ">;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "aQueue":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;>;"
    const/4 v0, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 59
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mFinalizeFlag:Z

    .line 64
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv$1;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mStateMapSuccess:Ljava/util/HashMap;

    .line 83
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv$2;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mLocalToReasonMap:Ljava/util/HashMap;

    .line 124
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv$3;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mLocalToResultMap:Ljava/util/HashMap;

    .line 198
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 199
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    .line 200
    return-void
.end method

.method private varargs addOwnQueue(ZILmmb/android/MmbStRecMw/MmbStRecMwClient;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "aClear"    # Z
    .param p2, "aEventId"    # I
    .param p3, "aMwInst"    # Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .param p4, "aArgs"    # [Ljava/lang/Object;

    .prologue
    .line 1431
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;

    invoke-direct {v0, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;-><init>(ILmmb/android/MmbStRecMw/MmbStRecMwClient;[Ljava/lang/Object;)V

    .line 1433
    .local v0, "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    if-eqz p1, :cond_0

    .line 1434
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 1436
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 1441
    return-void
.end method

.method private changeOfState(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;IZ)V
    .locals 4
    .param p1, "aStateObj"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
    .param p2, "aResult"    # I
    .param p3, "aFlg"    # Z

    .prologue
    .line 952
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getRecState()I

    move-result v0

    .line 953
    .local v0, "state":I
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getTimer()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    move-result-object v1

    .line 954
    .local v1, "timer":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;
    if-eqz p3, :cond_1

    .line 955
    const/4 v0, 0x4

    .line 965
    :goto_0
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setRecState(I)V

    .line 966
    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getRecState()I

    move-result v3

    if-eq v2, v3, :cond_0

    if-eqz v1, :cond_0

    .line 968
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->cancelTimer()V

    .line 969
    const/4 v1, 0x0

    .line 970
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setTimer(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;)V

    .line 972
    :cond_0
    invoke-virtual {p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->notifyToUi(I)V

    .line 977
    return-void

    .line 956
    :cond_1
    if-eqz p2, :cond_3

    .line 957
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->checkRecState(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 958
    const/4 v0, 0x0

    goto :goto_0

    .line 960
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 963
    :cond_3
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mStateMapSuccess:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getRecState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private checkPriority(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)Z
    .locals 20
    .param p1, "aMwInstance"    # Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .param p2, "aNowStateObj"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
    .param p3, "aNewStateobj"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    .prologue
    .line 396
    invoke-virtual/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getMeta()Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    move-result-object v5

    .line 397
    .local v5, "meta":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    const/4 v14, 0x0

    .line 398
    .local v14, "result":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v15

    .line 399
    .local v15, "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v17, "scheduledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/16 v18, 0x1000

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getSchedule(ILjava/util/ArrayList;)V

    .line 402
    iget-wide v10, v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramEndTime:J

    .line 403
    .local v10, "nowEndTime":J
    const-wide/16 v12, 0x0

    .line 404
    .local v12, "nowRegisterTime":J
    const-wide/16 v8, 0x0

    .line 405
    .local v8, "newStartTime":J
    const-wide/16 v6, 0x0

    .line 406
    .local v6, "newRegisterTime":J
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_3

    .line 407
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 408
    .local v16, "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 409
    move-object/from16 v0, v16

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    goto :goto_0

    .line 410
    :cond_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {p3 .. p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 411
    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 412
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    goto :goto_0

    .line 415
    .end local v16    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_2
    const-wide/16 v18, 0x0

    cmp-long v18, v18, v10

    if-eqz v18, :cond_6

    const-wide/16 v18, 0x0

    cmp-long v18, v18, v8

    if-eqz v18, :cond_6

    .line 417
    cmp-long v18, v10, v8

    if-nez v18, :cond_4

    .line 419
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 421
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopOfState(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;I)V

    .line 424
    const/4 v14, 0x1

    .line 453
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    return v14

    .line 425
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    const-wide/16 v18, 0x0

    cmp-long v18, v18, v12

    if-eqz v18, :cond_5

    cmp-long v18, v12, v6

    if-gez v18, :cond_5

    .line 427
    const/16 v18, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 429
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopOfState(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;I)V

    .line 432
    const/4 v14, 0x1

    goto :goto_1

    .line 437
    :cond_5
    const/16 v18, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 439
    const/16 v18, 0x0

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopOfState(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;I)V

    goto :goto_1

    .line 442
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 443
    const/16 v18, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 445
    const/16 v18, 0x0

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopOfState(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;I)V

    goto :goto_1
.end method

.method private checkRecState(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)V
    .locals 9
    .param p1, "aMwInst"    # Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .param p2, "aStateObj"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 312
    const/4 v3, 0x0

    .line 313
    .local v3, "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 314
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignStRecMw()Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    move-result-object v1

    .line 315
    .local v1, "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_2

    .line 316
    move-object v3, p1

    .line 321
    .end local v1    # "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_0
    if-nez v3, :cond_3

    .line 322
    const-string v5, "Mw Instance is null!!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    :cond_1
    :goto_1
    return-void

    .line 319
    .restart local v1    # "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_2
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    .end local v1    # "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_3
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;

    move-result-object v2

    .line 327
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    const/4 v4, 0x0

    .line 329
    .local v4, "startFlg":Z
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->checkRecState(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_4

    .line 331
    const/4 v4, 0x1

    .line 358
    :goto_2
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    .line 359
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    .line 361
    if-eqz v4, :cond_1

    .line 362
    const/4 v5, 0x2

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p2, v6, v7

    invoke-direct {p0, v8, v5, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->addOwnQueue(ZILmmb/android/MmbStRecMw/MmbStRecMwClient;[Ljava/lang/Object;)V

    goto :goto_1

    .line 333
    :cond_4
    :try_start_1
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v5

    if-lez v5, :cond_6

    .line 334
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v5

    if-lez v5, :cond_5

    .line 335
    const/4 v5, 0x7

    invoke-virtual {p2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 337
    const/4 v5, 0x4

    invoke-direct {p0, v3, p2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopOfState(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 358
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v6, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    .line 359
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v6, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    throw v5

    .line 342
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 344
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {p0, v3, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopOfState(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;I)V

    .line 347
    const/4 v4, 0x1

    goto :goto_2

    .line 352
    :cond_6
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-direct {p0, v3, v5, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->checkPriority(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)Z

    move-result v4

    .line 354
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->deleteTimer(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private deleteTimer(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)V
    .locals 7
    .param p1, "aStateObj"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    .prologue
    .line 582
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v3

    if-gez v3, :cond_1

    .line 583
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    iget-object v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    monitor-enter v4

    .line 587
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ge v1, v3, :cond_0

    .line 589
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    .line 590
    .local v2, "timer":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->getStateObject()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 591
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mTimer:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    .end local v2    # "timer":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;
    :cond_0
    :try_start_2
    monitor-exit v4

    .line 608
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 594
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private executeMessage(ILmmb/android/MmbStRecMw/MmbStRecMwClient;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aMessageId"    # I
    .param p2, "aMwInst"    # Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .param p3, "aArgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 268
    packed-switch p1, :pswitch_data_0

    .line 291
    :goto_0
    return-void

    .line 270
    :pswitch_0
    aget-object v0, p3, v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-direct {p0, p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->checkRecState(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)V

    goto :goto_0

    .line 273
    :pswitch_1
    aget-object v0, p3, v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-direct {p0, p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->startRecording(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)V

    goto :goto_0

    .line 276
    :pswitch_2
    aget-object v0, p3, v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-direct {p0, p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopFromUi(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 279
    :pswitch_3
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stop(Lmmb/android/MmbStRecMw/MmbStRecMwClient;I)V

    goto :goto_0

    .line 282
    :pswitch_4
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopAll(I)V

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private prepareRec(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)I
    .locals 10
    .param p1, "aMwInstance"    # Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .param p2, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;

    .prologue
    .line 634
    const/4 v3, 0x0

    .line 636
    .local v3, "result":I
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->checkRecState(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 637
    const-string v5, "RecState error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 643
    const/16 v5, 0x100

    .line 760
    :goto_0
    return v5

    .line 647
    :cond_0
    const v5, 0xa91a

    const/4 v6, 0x1

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getServiceID()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->setConflictStatus(IZILjava/lang/String;)I

    move-result v1

    .line 649
    .local v1, "confResult":I
    if-eqz v1, :cond_1

    .line 650
    const-string v5, "check conflict is error[%d]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 652
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mLocalToResultMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    .line 656
    :cond_1
    new-instance v0, Lmmb/android/MmbStRecMw/MmbStRecMwCapa;

    invoke-direct {v0}, Lmmb/android/MmbStRecMw/MmbStRecMwCapa;-><init>()V

    .line 660
    .local v0, "capa":Lmmb/android/MmbStRecMw/MmbStRecMwCapa;
    invoke-virtual {p1, v0}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->getCapacity(Lmmb/android/MmbStRecMw/MmbStRecMwCapa;)I

    move-result v3

    .line 665
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->checkMmbStRecMwResultType(I)V

    .line 667
    iget v5, v0, Lmmb/android/MmbStRecMw/MmbStRecMwCapa;->mAvailable_result:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    iget-wide v6, v0, Lmmb/android/MmbStRecMw/MmbStRecMwCapa;->mAvailable_size:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_3

    .line 668
    :cond_2
    const-string v5, "No free space"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 674
    const/4 v5, 0x3

    goto :goto_0

    .line 678
    :cond_3
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMetadata(Ljava/lang/String;)Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    move-result-object v2

    .line 679
    .local v2, "recMeta":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    if-nez v2, :cond_4

    .line 681
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v5

    if-lez v5, :cond_6

    .line 682
    const-string v5, "Target Content\'s Metadata couldn\'t get[crid:%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->setPresetMetaItem(Ljava/lang/String;)Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    move-result-object v2

    .line 696
    :cond_4
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setMeta(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;)V

    .line 702
    invoke-virtual {p1, v2}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->setContentsInfoMeta(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;)I

    move-result v3

    .line 707
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->checkMmbStRecMwResultType(I)V

    .line 710
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setRecState(I)V

    .line 711
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->notifyToUi(I)V

    .line 717
    invoke-virtual {p1, p2}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->setListener(Lmmb/android/MmbStRecMw/MmbStRecMwListener;)I

    move-result v3

    .line 722
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->checkMmbStRecMwResultType(I)V

    .line 728
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getServiceID()I

    move-result v5

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->prepRec(II)I

    move-result v3

    .line 734
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->checkMmbStRecMwResultType(I)V

    .line 740
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v5

    const-wide/16 v6, 0x3a98

    invoke-direct {p0, p2, v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->waitResponse(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;J)Z

    move-result v4

    .line 746
    .local v4, "ret":Z
    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->checkRecState(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 748
    :cond_5
    const-string v5, "Other Error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 749
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 754
    const/16 v5, 0x100

    goto/16 :goto_0

    .line 686
    .end local v4    # "ret":Z
    :cond_6
    const-string v5, "Target Content\'s Metadata couldn\'t get[crid:%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 693
    const/4 v5, 0x7

    goto/16 :goto_0

    .line 760
    .restart local v4    # "ret":Z
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private setConflictStatus(IZILjava/lang/String;)I
    .locals 4
    .param p1, "aType"    # I
    .param p2, "aSet"    # Z
    .param p3, "aServiceId"    # I
    .param p4, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 833
    const/4 v1, 0x0

    .line 835
    .local v1, "result":I
    if-eqz p2, :cond_1

    .line 837
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v3

    invoke-virtual {v3, p1, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConflict(IILjava/lang/String;)I

    move-result v2

    .line 842
    .local v2, "ret":I
    packed-switch v2, :pswitch_data_0

    .line 870
    :pswitch_0
    const/16 v1, 0x100

    .line 889
    .end local v2    # "ret":I
    :cond_0
    :goto_0
    return v1

    .line 845
    .restart local v2    # "ret":I
    :pswitch_1
    const/4 v1, 0x0

    .line 846
    goto :goto_0

    .line 851
    :pswitch_2
    const/4 v1, 0x2

    .line 852
    goto :goto_0

    .line 854
    :pswitch_3
    const/4 v1, 0x7

    .line 855
    goto :goto_0

    .line 857
    :pswitch_4
    const/4 v1, 0x6

    .line 858
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isUimStatus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 859
    const/4 v1, 0x5

    goto :goto_0

    .line 864
    :pswitch_5
    const/4 v1, 0x5

    .line 865
    goto :goto_0

    .line 867
    :pswitch_6
    const/4 v1, 0x4

    .line 868
    goto :goto_0

    .line 875
    .end local v2    # "ret":I
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v3

    invoke-virtual {v3, p1, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearServiceStatus(IILjava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 880
    const/16 v1, 0xa

    .line 884
    goto :goto_0

    .line 881
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :catch_1
    move-exception v0

    .line 882
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 883
    const/16 v1, 0x100

    goto :goto_0

    .line 842
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private startRecImpl(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)I
    .locals 5
    .param p1, "aMwInstance"    # Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .param p2, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;

    .prologue
    const/4 v4, 0x0

    .line 784
    new-instance v0, Lmmb/android/MmbStRecMw/MmbStRecMwPrgNo;

    invoke-direct {v0}, Lmmb/android/MmbStRecMw/MmbStRecMwPrgNo;-><init>()V

    .line 785
    .local v0, "prgNo":Lmmb/android/MmbStRecMw/MmbStRecMwPrgNo;
    const/4 v1, 0x0

    .line 788
    .local v1, "result":I
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v2

    invoke-direct {p0, v2, v4, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->changeOfState(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;IZ)V

    .line 793
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getServiceID()I

    move-result v2

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v0}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->startRec(ILjava/lang/String;Lmmb/android/MmbStRecMw/MmbStRecMwPrgNo;)I

    move-result v1

    .line 798
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->checkMmbStRecMwResultType(I)V

    .line 800
    iget v2, v0, Lmmb/android/MmbStRecMw/MmbStRecMwPrgNo;->mProgram_number:I

    if-lez v2, :cond_0

    .line 801
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v2

    iget v3, v0, Lmmb/android/MmbStRecMw/MmbStRecMwPrgNo;->mProgram_number:I

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setPrgNo(I)V

    .line 803
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v2

    invoke-direct {p0, v2, v4, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->changeOfState(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;IZ)V

    .line 809
    :cond_0
    return v4
.end method

.method private startRecording(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)V
    .locals 12
    .param p1, "aMwInst"    # Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .param p2, "aStateObj"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 473
    const/4 v4, 0x0

    .line 474
    .local v4, "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_0

    .line 475
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignStRecMw()Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    move-result-object v2

    .line 476
    .local v2, "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    if-eqz v2, :cond_2

    if-ne v2, p1, :cond_2

    .line 477
    move-object v4, p1

    .line 482
    .end local v2    # "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_0
    if-nez v4, :cond_3

    .line 483
    const-string v7, "Mw Instance is null!!"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    :cond_1
    :goto_1
    return-void

    .line 480
    .restart local v2    # "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_2
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    .end local v2    # "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_3
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->deleteTimer(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;)V

    .line 489
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;

    move-result-object v3

    .line 490
    .local v3, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getServiceID()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setServiceID(I)V

    .line 491
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setCrid(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setUserParam(I)V

    .line 493
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setCallback(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 494
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setPackageName(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getTriggerTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setTriggerTime(J)V

    .line 497
    :try_start_0
    invoke-direct {p0, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->prepareRec(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)I

    move-result v5

    .line 498
    .local v5, "result":I
    if-eqz v5, :cond_4

    .line 499
    const-string v7, "Recording Prepare is Failed [%d]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-direct {p0, v4, v7, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopOfState(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;I)V

    .line 501
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->changeAntennaLevelNotify(IZ)V

    .line 502
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInitialize()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    .line 550
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    goto/16 :goto_1

    .line 509
    :cond_4
    :try_start_1
    invoke-direct {p0, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->startRecImpl(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)I

    move-result v5

    .line 510
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getPrgNo()I

    move-result v7

    if-gtz v7, :cond_5

    .line 511
    const-string v7, "Recording Start is Failed. PrgNo[%d]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getPrgNo()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 515
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    const/16 v8, 0x100

    invoke-direct {p0, v4, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopOfState(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;I)V

    .line 517
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->changeAntennaLevelNotify(IZ)V

    .line 518
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInitialize()V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    .line 550
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    goto/16 :goto_1

    .line 549
    :cond_5
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    .line 550
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    .line 553
    .end local v5    # "result":I
    :goto_2
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->checkRecState(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 554
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    const-wide/16 v8, 0x1388

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv$MmbStRecordingTimerListenerSv;JI)V

    .line 557
    .local v6, "timer":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setTimer(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;)V

    goto/16 :goto_1

    .line 524
    .end local v6    # "timer":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 526
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 528
    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v8

    const/16 v9, 0x100

    invoke-direct {p0, v7, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopOfState(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;I)V

    .line 530
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->changeAntennaLevelNotify(IZ)V

    .line 531
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInitialize()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 549
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    .line 550
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    goto :goto_2

    .line 532
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_1
    move-exception v0

    .line 533
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 534
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 536
    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v8

    const/16 v9, 0x100

    invoke-direct {p0, v7, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopOfState(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;I)V

    .line 538
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->changeAntennaLevelNotify(IZ)V

    .line 539
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInitialize()V

    .line 541
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 549
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    .line 550
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    goto/16 :goto_2

    .line 542
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 544
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 546
    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {p0, v7, v8, v4, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->addOwnQueue(ZILmmb/android/MmbStRecMw/MmbStRecMwClient;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 549
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    .line 550
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    goto/16 :goto_2

    .line 549
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v8, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    .line 550
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v8, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    throw v7
.end method

.method private stop(Lmmb/android/MmbStRecMw/MmbStRecMwClient;I)V
    .locals 8
    .param p1, "aMwInst"    # Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .param p2, "aReason"    # I

    .prologue
    const/4 v7, 0x0

    .line 1088
    const/4 v3, 0x0

    .line 1089
    .local v3, "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v5, 0x1

    if-ge v0, v5, :cond_0

    .line 1090
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignStRecMw()Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    move-result-object v1

    .line 1091
    .local v1, "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    if-ne v1, p1, :cond_1

    .line 1092
    move-object v3, p1

    .line 1097
    .end local v1    # "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_0
    if-nez v3, :cond_2

    .line 1098
    const-string v5, "Mw Instance is null!!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1112
    :goto_1
    return-void

    .line 1095
    .restart local v1    # "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    .line 1089
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1101
    .end local v1    # "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_2
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;

    move-result-object v2

    .line 1102
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mLocalToResultMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1103
    .local v4, "result":I
    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v6

    invoke-direct {p0, v5, v6, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopOfState(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;I)V

    .line 1104
    invoke-virtual {v2, v7, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->changeAntennaLevelNotify(IZ)V

    .line 1105
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInitialize()V

    .line 1106
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    .line 1107
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    goto :goto_1
.end method

.method private stopFromUi(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 9
    .param p1, "aMwInst"    # Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 998
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->setWakeup()V

    .line 1000
    const/4 v8, 0x0

    .line 1001
    .local v8, "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignStRecMw()Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    move-result-object v1

    .line 1003
    .local v1, "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_1

    .line 1004
    move-object v8, p1

    .line 1013
    .end local v1    # "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_0
    if-nez v8, :cond_3

    .line 1014
    const-string v0, "Mw Instance is null!!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1032
    :goto_1
    return-void

    .line 1007
    .restart local v1    # "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    .line 1008
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1009
    const-string v0, "Process is canceled by User"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1001
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1017
    .end local v1    # "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_3
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;

    move-result-object v7

    .line 1018
    .local v7, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    move-object v1, v8

    .line 1019
    .restart local v1    # "inst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->checkRecState(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1020
    const/4 v1, 0x0

    .line 1022
    :cond_4
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v2

    const/4 v3, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopProcess(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;IIZ)V

    .line 1024
    invoke-virtual {v7, v4, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->changeAntennaLevelNotify(IZ)V

    .line 1025
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInitialize()V

    .line 1026
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v0, v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    .line 1027
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseStRecMw(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)V

    goto :goto_1
.end method

.method private stopOfState(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;I)V
    .locals 6
    .param p1, "aMwInstance"    # Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .param p2, "aStateObj"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
    .param p3, "aResult"    # I

    .prologue
    const/4 v5, 0x0

    .line 1256
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->setWakeup()V

    .line 1258
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mLocalToReasonMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getInnerResult()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1260
    .local v3, "reason":I
    move-object v1, p1

    .line 1261
    .local v1, "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    invoke-virtual {p2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->checkRecState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    const/4 v1, 0x0

    :cond_0
    move-object v0, p0

    move-object v2, p2

    move v4, p3

    .line 1265
    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopProcess(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;IIZ)V

    .line 1270
    return-void
.end method

.method private stopProcess(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;IIZ)V
    .locals 22
    .param p1, "aMwInstance"    # Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .param p2, "aStateObj"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
    .param p3, "aReason"    # I
    .param p4, "aResult"    # I
    .param p5, "aUser"    # Z

    .prologue
    .line 1295
    const/16 v20, 0x1

    .line 1296
    .local v20, "setConflict":Z
    const/4 v5, 0x4

    move/from16 v0, p4

    if-ne v0, v5, :cond_0

    .line 1297
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->checkRecState(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1299
    const/16 v20, 0x0

    .line 1303
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->changeOfState(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;IZ)V

    .line 1304
    const/16 v18, 0x0

    .line 1305
    .local v18, "result":I
    if-eqz p1, :cond_2

    .line 1307
    :try_start_0
    new-instance v21, Lmmb/android/MmbStRecMw/MmbStRecMwRecStatus;

    invoke-direct/range {v21 .. v21}, Lmmb/android/MmbStRecMw/MmbStRecMwRecStatus;-><init>()V

    .line 1312
    .local v21, "state":Lmmb/android/MmbStRecMw/MmbStRecMwRecStatus;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->getRecStatus(Lmmb/android/MmbStRecMw/MmbStRecMwRecStatus;)I

    move-result v18

    .line 1316
    const/4 v5, 0x2

    move-object/from16 v0, v21

    iget v6, v0, Lmmb/android/MmbStRecMw/MmbStRecMwRecStatus;->mRec_Status:I

    if-ne v5, v6, :cond_1

    if-nez v18, :cond_1

    .line 1322
    invoke-virtual/range {p1 .. p1}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->stopRec()I

    move-result v18

    .line 1328
    const v5, 0xa91a

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getServiceID()I

    move-result v7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->setConflictStatus(IZILjava/lang/String;)I

    .line 1335
    invoke-virtual/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v5

    const-wide/16 v6, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->waitResponse(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;J)Z

    move-result v19

    .line 1340
    .local v19, "ret":Z
    invoke-virtual/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getInnerResult()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1342
    invoke-virtual/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getInnerResult()I

    move-result p4

    .line 1343
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mLocalToReasonMap:Ljava/util/HashMap;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 1350
    .end local v19    # "ret":Z
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->setListener(Lmmb/android/MmbStRecMw/MmbStRecMwListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 1360
    .end local v21    # "state":Lmmb/android/MmbStRecMw/MmbStRecMwRecStatus;
    :cond_2
    :goto_0
    if-eqz v20, :cond_3

    .line 1362
    const v5, 0xa91a

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getServiceID()I

    move-result v7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->setConflictStatus(IZILjava/lang/String;)I

    .line 1366
    :cond_3
    const-wide/16 v10, 0x0

    .line 1368
    .local v10, "time":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    .line 1372
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v5, v6, v10

    if-ltz v5, :cond_4

    .line 1373
    const-string v5, "getSecureClock() = %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1374
    const/16 p3, -0x1

    .line 1377
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v5

    if-gez v5, :cond_6

    .line 1379
    const/4 v5, -0x1

    move/from16 v0, p3

    if-eq v0, v5, :cond_5

    .line 1380
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1382
    .local v8, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getHistoryModule()Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    move/from16 v9, p3

    invoke-virtual/range {v5 .. v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->saveHistory(ILjava/lang/String;Ljava/lang/String;IJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1395
    .end local v8    # "title":Ljava/lang/String;
    :cond_5
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getTriggerTime()J

    move-result-wide v14

    const/16 v16, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v12 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteStRecSchedule(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1402
    :cond_6
    :goto_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v1, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->changeOfState(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;IZ)V

    .line 1407
    return-void

    .line 1354
    .end local v10    # "time":J
    :catch_0
    move-exception v4

    .line 1356
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1369
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v10    # "time":J
    :catch_1
    move-exception v4

    .line 1370
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1390
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_2
    move-exception v4

    .line 1391
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1398
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 1399
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private waitResponse(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;J)Z
    .locals 3
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .param p3, "aWaitTime"    # J

    .prologue
    const/4 v2, 0x0

    .line 915
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->clear()V

    .line 916
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->waitFor(J)Z

    move-result v0

    .line 917
    .local v0, "ret":Z
    if-eqz v0, :cond_1

    .line 919
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    const-string v1, "Process is canceled by User"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 921
    const/4 v0, 0x0

    .line 930
    :cond_0
    :goto_0
    return v0

    .line 924
    :cond_1
    const-string v1, "time out error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private waitResponse(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;J)Z
    .locals 3
    .param p1, "aStateObj"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .param p3, "aWaitTime"    # J

    .prologue
    const/4 v2, 0x0

    .line 1467
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->clear()V

    .line 1468
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->waitFor(J)Z

    move-result v0

    .line 1469
    .local v0, "ret":Z
    if-eqz v0, :cond_1

    .line 1471
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1472
    const-string v1, "Process is canceled by User"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1473
    const/4 v0, 0x0

    .line 1482
    :cond_0
    :goto_0
    return v0

    .line 1476
    :cond_1
    const-string v1, "time out error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 219
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mFinalizeFlag:Z

    .line 221
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mFinalizeFlag:Z

    if-eqz v6, :cond_1

    .line 223
    const/4 v3, 0x0

    .line 225
    .local v3, "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;

    move-object v3, v0

    .line 227
    if-eqz v3, :cond_0

    .line 229
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;->getProcessId()I

    move-result v5

    .line 230
    .local v5, "processid":I
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;->getMwInstance()Lmmb/android/MmbStRecMw/MmbStRecMwClient;

    move-result-object v4

    .line 231
    .local v4, "mwInst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;->getArgument()[Ljava/lang/Object;

    move-result-object v1

    .line 234
    .local v1, "args":[Ljava/lang/Object;
    invoke-direct {p0, v5, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->executeMessage(ILmmb/android/MmbStRecMw/MmbStRecMwClient;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 236
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v4    # "mwInst":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    .end local v5    # "processid":I
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v6, "Take queue error"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 238
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 239
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 246
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "message":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMessageQueueSv;
    :cond_1
    return-void
.end method

.method stopAll(I)V
    .locals 9
    .param p1, "aReason"    # I

    .prologue
    .line 1167
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    if-eqz v5, :cond_6

    .line 1168
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    iget-object v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    monitor-enter v6

    .line 1169
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->mStRecMwList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1170
    .local v3, "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    const/4 v2, 0x0

    .line 1172
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->assignListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;

    move-result-object v2

    .line 1173
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->checkRecState(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    if-nez v5, :cond_1

    .line 1185
    :try_start_2
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1186
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->changeAntennaLevelNotify(IZ)V

    .line 1187
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInitialize()V

    .line 1189
    :cond_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    goto :goto_0

    .line 1192
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    .end local v3    # "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1179
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    .restart local v3    # "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 1180
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mLocalToResultMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1181
    .local v4, "result":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-direct {p0, v3, v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopOfState(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1185
    :try_start_4
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1186
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->changeAntennaLevelNotify(IZ)V

    .line 1187
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInitialize()V

    .line 1189
    :cond_2
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1182
    .end local v4    # "result":I
    :catch_0
    move-exception v0

    .line 1183
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1185
    :try_start_6
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1186
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->changeAntennaLevelNotify(IZ)V

    .line 1187
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInitialize()V

    .line 1189
    :cond_3
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v5, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    goto/16 :goto_0

    .line 1185
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1186
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->changeAntennaLevelNotify(IZ)V

    .line 1187
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInitialize()V

    .line 1189
    :cond_4
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v7, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->releaseListener(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;)V

    throw v5

    .line 1192
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
    .end local v3    # "mwInstance":Lmmb/android/MmbStRecMw/MmbStRecMwClient;
    :cond_5
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1198
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    return-void
.end method

.method stopSpecify(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1217
    .local p1, "aStateObj":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;>;"
    if-eqz p1, :cond_0

    .line 1218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    .line 1220
    .local v3, "stateObj":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->mLocalToResultMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getInnerResult()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1221
    .local v2, "result":I
    const/4 v4, 0x0

    invoke-direct {p0, v4, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingThreadSv;->stopOfState(Lmmb/android/MmbStRecMw/MmbStRecMwClient;Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInitialize()V

    goto :goto_0

    .line 1222
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 1223
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1225
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInitialize()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInitialize()V

    throw v4

    .line 1233
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "stateObj":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
    :cond_0
    return-void
.end method
