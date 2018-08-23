.class Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;
.super Ljava/lang/Object;
.source "MmbStRecordingControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbRunUnexpectedScheduleProcess"
.end annotation


# instance fields
.field private mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 1
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 628
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 633
    return-void
.end method

.method private processUnexpectedSchedules(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 21
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 687
    const-wide/16 v8, 0x0

    .line 690
    .local v8, "currentTime":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mmbScheduleType = SCHEDULE_TYPE_ST_REC AND mmbTriggerTime < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 698
    .local v19, "searchstring":Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v17, "resultlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->getNewStateObj(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v20

    .line 707
    .local v20, "stateObj":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 708
    .local v18, "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    invoke-virtual/range {p1 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 709
    const-string v3, "Process is canceled by User"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "resultlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v18    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v19    # "searchstring":Ljava/lang/String;
    .end local v20    # "stateObj":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
    :cond_1
    :goto_1
    return-void

    .line 691
    :catch_0
    move-exception v2

    .line 692
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 701
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v17    # "resultlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v19    # "searchstring":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 702
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 713
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .restart local v20    # "stateObj":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
    :cond_2
    move-object/from16 v0, v18

    iget v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_0

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_0

    .line 716
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setCrid(Ljava/lang/String;)V

    .line 717
    move-object/from16 v0, v18

    iget v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setServiceID(I)V

    .line 718
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 720
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v3

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getStRecPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setPackageName(Ljava/lang/String;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 724
    .local v6, "title":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v3, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 725
    :cond_3
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    .line 728
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getHistoryModule()Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->saveHistory(ILjava/lang/String;Ljava/lang/String;IJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v10

    invoke-virtual/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCrid()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v18

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    const/4 v14, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v10 .. v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteStRecSchedule(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 744
    const/16 v3, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->notifyToUi(I)V

    .line 745
    invoke-virtual/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInitialize()V

    goto/16 :goto_0

    .line 739
    .end local v6    # "title":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 740
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 744
    const/16 v3, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->notifyToUi(I)V

    .line 745
    invoke-virtual/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInitialize()V

    goto/16 :goto_0

    .line 744
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->notifyToUi(I)V

    .line 745
    invoke-virtual/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInitialize()V

    throw v3
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 653
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    if-nez v1, :cond_0

    .line 654
    const-string v1, "Null callback"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    :goto_0
    return-void

    .line 658
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbRunUnexpectedScheduleProcess;->processUnexpectedSchedules(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 659
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
