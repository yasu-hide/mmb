.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;
.super Ljava/lang/Object;
.source "MmbFcExecutionEventListenerSv.java"

# interfaces
.implements Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv$1;
    }
.end annotation


# instance fields
.field private mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 1
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 67
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 68
    return-void
.end method

.method private getExportEndingState(Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd$MmbFcIndivdMwEndValue;)I
    .locals 3
    .param p1, "aEndingValue"    # Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd$MmbFcIndivdMwEndValue;

    .prologue
    .line 409
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv$1;->$SwitchMap$mmb$android$MmbFcIndivdMw$MmbFcIndivdMwNoticeEnd$MmbFcIndivdMwEndValue:[I

    invoke-virtual {p1}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd$MmbFcIndivdMwEndValue;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 454
    const/4 v0, -0x1

    .line 459
    .local v0, "state":I
    :goto_0
    return v0

    .line 411
    .end local v0    # "state":I
    :pswitch_0
    const/4 v0, 0x0

    .line 412
    .restart local v0    # "state":I
    goto :goto_0

    .line 414
    .end local v0    # "state":I
    :pswitch_1
    const/16 v0, -0x17

    .line 415
    .restart local v0    # "state":I
    goto :goto_0

    .line 417
    .end local v0    # "state":I
    :pswitch_2
    const/16 v0, -0x18

    .line 418
    .restart local v0    # "state":I
    goto :goto_0

    .line 420
    .end local v0    # "state":I
    :pswitch_3
    const/16 v0, -0x20

    .line 421
    .restart local v0    # "state":I
    goto :goto_0

    .line 423
    .end local v0    # "state":I
    :pswitch_4
    const/16 v0, -0x21

    .line 424
    .restart local v0    # "state":I
    goto :goto_0

    .line 426
    .end local v0    # "state":I
    :pswitch_5
    const/16 v0, -0x19

    .line 427
    .restart local v0    # "state":I
    goto :goto_0

    .line 429
    .end local v0    # "state":I
    :pswitch_6
    const/16 v0, -0x1a

    .line 430
    .restart local v0    # "state":I
    goto :goto_0

    .line 432
    .end local v0    # "state":I
    :pswitch_7
    const/4 v0, -0x2

    .line 433
    .restart local v0    # "state":I
    goto :goto_0

    .line 435
    .end local v0    # "state":I
    :pswitch_8
    const/16 v0, -0x25

    .line 436
    .restart local v0    # "state":I
    goto :goto_0

    .line 438
    .end local v0    # "state":I
    :pswitch_9
    const/16 v0, -0x22

    .line 439
    .restart local v0    # "state":I
    goto :goto_0

    .line 441
    .end local v0    # "state":I
    :pswitch_a
    const/16 v0, -0x23

    .line 442
    .restart local v0    # "state":I
    goto :goto_0

    .line 444
    .end local v0    # "state":I
    :pswitch_b
    const/4 v0, -0x3

    .line 445
    .restart local v0    # "state":I
    goto :goto_0

    .line 447
    .end local v0    # "state":I
    :pswitch_c
    const/16 v0, -0x26

    .line 448
    .restart local v0    # "state":I
    goto :goto_0

    .line 450
    .end local v0    # "state":I
    :pswitch_d
    const/16 v0, -0x27

    .line 451
    .restart local v0    # "state":I
    goto :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private getExportingContent()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 478
    const/4 v3, 0x0

    .line 480
    .local v3, "result":Ljava/lang/String;
    new-array v5, v7, [I

    const/4 v6, 0x5

    aput v6, v5, v8

    .line 482
    .local v5, "stateList":[I
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v0

    .line 484
    .local v0, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    const/4 v2, 0x0

    .line 486
    .local v2, "processingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getProcessingList([I)Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 494
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 496
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "result":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "result":Ljava/lang/String;
    :cond_0
    move-object v4, v3

    .line 501
    .end local v3    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 487
    .end local v4    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v6, "%s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v3

    .line 492
    .end local v3    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private onExportCancelled(Ljava/lang/String;Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel;)V
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aNotice"    # Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel;

    .prologue
    .line 219
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeDownloadContentState(Ljava/lang/String;)I

    .line 221
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv$1;->$SwitchMap$mmb$android$MmbFcIndivdMw$MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue:[I

    iget-object v3, p2, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel;->mmbCancelValue:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

    invoke-virtual {v3}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 227
    const/4 v1, -0x1

    .line 229
    .local v1, "state":I
    :goto_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mExecutionStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;

    if-eqz v2, :cond_0

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mExecutionStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;->onExecutionStateChange(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_1
    return-void

    .line 223
    .end local v1    # "state":I
    :pswitch_0
    const/16 v1, -0xb

    .line 224
    .restart local v1    # "state":I
    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onExportEnded(Ljava/lang/String;Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;)V
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aNotice"    # Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;

    .prologue
    .line 266
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeDownloadContentState(Ljava/lang/String;)I

    .line 268
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mExecutionStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p2, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;->mmbEndValue:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd$MmbFcIndivdMwEndValue;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->getExportEndingState(Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd$MmbFcIndivdMwEndValue;)I

    move-result v1

    .line 272
    .local v1, "endingState":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mExecutionStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;

    iget-object v3, p2, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;->mmbFilePath:Ljava/lang/String;

    invoke-interface {v2, p1, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;->onExecutionStateChange(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1    # "endingState":I
    :cond_0
    :goto_0
    return-void

    .line 274
    .restart local v1    # "endingState":I
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onExportProgress(Ljava/lang/String;Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeProgress;)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aNotice"    # Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeProgress;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mExecutionStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;

    if-eqz v1, :cond_0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mExecutionStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;

    iget v2, p2, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeProgress;->mmbProgressValue:I

    invoke-interface {v1, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;->onExecutionProgressChange(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onIndividualExportCancelled(Ljava/lang/String;Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aNotice"    # Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel;

    .prologue
    .line 336
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceIndividualController()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    move-result-object v1

    .line 339
    .local v1, "indivCtrl":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;

    move-result-object v3

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;->EXPORTING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    invoke-virtual {v3, p1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->removeState(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;

    move-result-object v2

    .line 341
    .local v2, "indivStateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    if-eqz v2, :cond_0

    .line 343
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv$1;->$SwitchMap$mmb$android$MmbFcIndivdMw$MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue:[I

    iget-object v4, p2, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel;->mmbCancelValue:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

    invoke-virtual {v4}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 349
    const/4 v0, -0x1

    .line 352
    .local v0, "cancelState":I
    :goto_0
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getEventManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    move-result-object v3

    iget v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;->mmbCallerPid:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;->notifyIndividualStateChange(ILjava/lang/String;ILjava/lang/String;)V

    .line 358
    .end local v0    # "cancelState":I
    :cond_0
    return-void

    .line 345
    :pswitch_0
    const/16 v0, -0xb

    .line 346
    .restart local v0    # "cancelState":I
    goto :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onIndividualExportEnded(Ljava/lang/String;Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aNotice"    # Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;

    .prologue
    .line 302
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceIndividualController()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    move-result-object v1

    .line 305
    .local v1, "indivCtrl":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;

    move-result-object v3

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;->EXPORTING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    invoke-virtual {v3, p1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->removeState(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;

    move-result-object v2

    .line 307
    .local v2, "indivStateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    if-eqz v2, :cond_0

    .line 308
    iget-object v3, p2, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;->mmbEndValue:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd$MmbFcIndivdMwEndValue;

    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->getExportEndingState(Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd$MmbFcIndivdMwEndValue;)I

    move-result v0

    .line 310
    .local v0, "endingState":I
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getEventManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    move-result-object v3

    iget v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;->mmbCallerPid:I

    iget-object v5, p2, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;->mmbFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;->notifyIndividualStateChange(ILjava/lang/String;ILjava/lang/String;)V

    .line 316
    .end local v0    # "endingState":I
    :cond_0
    return-void
.end method

.method private onIndividualExportProgress(Ljava/lang/String;Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeProgress;)V
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aNotice"    # Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeProgress;

    .prologue
    .line 377
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceIndividualController()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    move-result-object v0

    .line 380
    .local v0, "indivCtrl":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->getInfo(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;

    move-result-object v1

    .line 381
    .local v1, "indivStateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;->EXPORTING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    if-ne v2, v3, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getEventManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    move-result-object v2

    iget v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;->mmbCallerPid:I

    iget v4, p2, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeProgress;->mmbProgressValue:I

    invoke-virtual {v2, v3, p1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;->notifyIndividualProgressChange(ILjava/lang/String;I)V

    .line 389
    :cond_0
    return-void
.end method

.method private setCallbackResult(Ljava/lang/String;I)V
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aResult"    # I

    .prologue
    .line 520
    if-eqz p1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getCancelExportCallbackMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 524
    .local v0, "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 531
    .end local v0    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :cond_0
    return-void
.end method


# virtual methods
.method public exportNotice(Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;)V
    .locals 9
    .param p1, "aNotice"    # Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;

    .prologue
    const/4 v8, 0x1

    .line 89
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->getExportingContent()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "crid":Ljava/lang/String;
    iget-object v3, p1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;->mmbCrid:Ljava/lang/String;

    .line 94
    .local v3, "indivCrid":Ljava/lang/String;
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv$1;->$SwitchMap$mmb$android$MmbFcIndivdMw$MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType:[I

    iget-object v5, p1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;->mmbType:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

    invoke-virtual {v5}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 145
    const-string v4, "Unknow export notice:[%d]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;->mmbType:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

    invoke-virtual {v7}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;->getInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    .end local v1    # "crid":Ljava/lang/String;
    .end local v3    # "indivCrid":Ljava/lang/String;
    .end local p1    # "aNotice":Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local v1    # "crid":Ljava/lang/String;
    .restart local v3    # "indivCrid":Ljava/lang/String;
    .restart local p1    # "aNotice":Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;
    :pswitch_0
    instance-of v4, p1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeProgress;

    if-eqz v4, :cond_0

    .line 99
    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    move-object v0, p1

    check-cast v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeProgress;

    move-object v4, v0

    invoke-direct {p0, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->onExportProgress(Ljava/lang/String;Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeProgress;)V

    .line 103
    :cond_1
    if-eqz v3, :cond_0

    .line 104
    check-cast p1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeProgress;

    .end local p1    # "aNotice":Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;
    invoke-direct {p0, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->onIndividualExportProgress(Ljava/lang/String;Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeProgress;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 148
    .end local v1    # "crid":Ljava/lang/String;
    .end local v3    # "indivCrid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    .line 150
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    goto :goto_0

    .line 110
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v1    # "crid":Ljava/lang/String;
    .restart local v3    # "indivCrid":Ljava/lang/String;
    .restart local p1    # "aNotice":Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;
    :pswitch_1
    :try_start_1
    instance-of v4, p1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_0

    .line 113
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    move-object v0, p1

    check-cast v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel;

    move-object v4, v0

    invoke-direct {p0, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->onExportCancelled(Ljava/lang/String;Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel;)V

    .line 117
    :cond_2
    if-eqz v3, :cond_3

    .line 118
    move-object v0, p1

    check-cast v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel;

    move-object v4, v0

    invoke-direct {p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->onIndividualExportCancelled(Ljava/lang/String;Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :cond_3
    :try_start_3
    check-cast p1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel;

    .end local p1    # "aNotice":Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;
    iget-object v4, p1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel;->mmbCancelValue:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

    invoke-virtual {v4}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;->getInt()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->setCallbackResult(Ljava/lang/String;I)V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 151
    .end local v1    # "crid":Ljava/lang/String;
    .end local v3    # "indivCrid":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 121
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "crid":Ljava/lang/String;
    .restart local v3    # "indivCrid":Ljava/lang/String;
    .restart local p1    # "aNotice":Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;
    :catchall_0
    move-exception v4

    :try_start_4
    check-cast p1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel;

    .end local p1    # "aNotice":Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;
    iget-object v5, p1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel;->mmbCancelValue:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

    invoke-virtual {v5}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;->getInt()I

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->setCallbackResult(Ljava/lang/String;I)V

    throw v4

    .line 128
    .restart local p1    # "aNotice":Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;
    :pswitch_2
    instance-of v4, p1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v4, :cond_0

    .line 131
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 132
    move-object v0, p1

    check-cast v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;

    move-object v4, v0

    invoke-direct {p0, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->onExportEnded(Ljava/lang/String;Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;)V

    .line 135
    :cond_4
    if-eqz v3, :cond_5

    .line 136
    move-object v0, p1

    check-cast v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;

    move-object v4, v0

    invoke-direct {p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->onIndividualExportEnded(Ljava/lang/String;Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 139
    :cond_5
    :try_start_6
    check-cast p1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;

    .end local p1    # "aNotice":Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;
    iget-object v4, p1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;->mmbEndValue:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd$MmbFcIndivdMwEndValue;

    invoke-virtual {v4}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd$MmbFcIndivdMwEndValue;->getInt()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->setCallbackResult(Ljava/lang/String;I)V

    goto/16 :goto_0

    .restart local p1    # "aNotice":Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;
    :catchall_1
    move-exception v4

    check-cast p1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;

    .end local p1    # "aNotice":Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;
    iget-object v5, p1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;->mmbEndValue:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd$MmbFcIndivdMwEndValue;

    invoke-virtual {v5}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd$MmbFcIndivdMwEndValue;->getInt()I

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;->setCallbackResult(Ljava/lang/String;I)V

    throw v4
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
