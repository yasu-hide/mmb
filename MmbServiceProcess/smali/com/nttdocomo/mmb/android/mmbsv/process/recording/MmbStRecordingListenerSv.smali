.class Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;
.super Ljava/lang/Object;
.source "MmbStRecordingListenerSv.java"

# interfaces
.implements Lmmb/android/MmbStRecMw/MmbStRecMwListener;


# instance fields
.field private mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

.field private mPictLevel:I

.field private mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)V
    .locals 1
    .param p1, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    .line 42
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mPictLevel:I

    .line 66
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    .line 67
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->getNewStateObj(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mPictLevel:I

    .line 73
    return-void
.end method


# virtual methods
.method protected changeAntennaLevelNotify(IZ)V
    .locals 8
    .param p1, "aAntennaLevel"    # I
    .param p2, "aOnOff"    # Z

    .prologue
    .line 200
    const/4 v3, 0x0

    .line 202
    .local v3, "antennalevel":I
    if-eqz p2, :cond_0

    .line 204
    packed-switch p1, :pswitch_data_0

    .line 233
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    const v1, 0x10003

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_1
    return-void

    .line 207
    :pswitch_0
    const/4 v3, 0x0

    .line 208
    goto :goto_0

    .line 211
    :pswitch_1
    const/4 v3, 0x1

    .line 212
    goto :goto_0

    .line 215
    :pswitch_2
    const/4 v3, 0x2

    .line 216
    goto :goto_0

    .line 219
    :pswitch_3
    const/4 v3, 0x3

    .line 220
    goto :goto_0

    .line 224
    :pswitch_4
    const/4 v3, 0x4

    .line 225
    goto :goto_0

    .line 240
    :catch_0
    move-exception v7

    .line 241
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected getStateObj()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    return-object v0
.end method

.method public onChangeAntennaLevel(I)V
    .locals 5
    .param p1, "aAntennaLevel"    # I

    .prologue
    const/4 v4, 0x1

    .line 160
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->checkRecState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getTimer()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getTimer()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    move-result-object v0

    const-wide/16 v2, 0x1388

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;->cancelAndSetTimer(JI)V

    .line 170
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-le p1, v0, :cond_3

    .line 171
    :cond_1
    const-string v0, "Parameter error(%d)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_2
    :goto_0
    return-void

    .line 172
    :cond_3
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mPictLevel:I

    if-eq v0, p1, :cond_2

    .line 174
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mPictLevel:I

    .line 175
    invoke-virtual {p0, p1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->changeAntennaLevelNotify(IZ)V

    goto :goto_0
.end method

.method public onCompletePrepRec(III)V
    .locals 7
    .param p1, "aResult"    # I
    .param p2, "aRecStatus"    # I
    .param p3, "aUserParam"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 95
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    move-result-object v1

    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->lockListener:Ljava/lang/Object;

    monitor-enter v2

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    move-result-object v1

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->condListener:Z

    .line 97
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->checkRecState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 97
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v1

    if-eq v1, p3, :cond_1

    .line 107
    const-string v1, "Unmatched UserParam[%d][%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->stopRec(II)V

    goto :goto_0

    .line 118
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->checkMmbStRecMwResultType(I)V

    .line 119
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-static {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->changeMmbStRecMwReturnRecStatus(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setRecState(I)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 124
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->stopRec(II)V

    goto :goto_0

    .line 126
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_1
    move-exception v0

    .line 127
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 129
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setRecState(I)V

    .line 130
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->stopRec(II)V

    .line 133
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    goto :goto_0
.end method

.method public onCompleteRec(IIJ)V
    .locals 7
    .param p1, "aResult"    # I
    .param p2, "aRecStatus"    # I
    .param p3, "aRecTime"    # J

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 342
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->checkMmbStRecMwResultType(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 365
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setRecTime(J)V

    .line 366
    invoke-static {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingUtilitySv;->changeRecStatusReturn(I)I

    move-result v1

    .line 368
    .local v1, "result":I
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->checkRecState(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    move-result-object v2

    iget-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->lockListener:Ljava/lang/Object;

    monitor-enter v3

    .line 370
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    move-result-object v2

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->condListener:Z

    .line 371
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setInnerResult(I)V

    .line 373
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setRecState(I)V

    .line 382
    .end local v1    # "result":I
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 346
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->stopRec(II)V

    goto :goto_0

    .line 352
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_1
    move-exception v0

    .line 353
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 355
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->setRecState(I)V

    .line 356
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->stopRec(II)V

    .line 359
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    goto :goto_0

    .line 371
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v1    # "result":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingListenerSv;->mStateObj:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->getUserParam()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->stopRec(II)V

    goto :goto_0
.end method

.method public onUpdateEit()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public onUpdatePmt()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public onUpdateSdt()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method
