.class Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;
.super Ljava/lang/Object;
.source "MmbStRecordingStateSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;
    }
.end annotation


# instance fields
.field private condwait:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

.field private mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

.field private mInnerResult:I

.field private mListenerUi:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;

.field private mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

.field private mMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

.field private mPackageName:Ljava/lang/String;

.field private mProgram_number:I

.field private mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

.field private mRecTime:J

.field private mTimer:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

.field private mTriggerTime:J

.field private mUserParam:I


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;)V
    .locals 6
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aRecState"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 47
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    .line 49
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mUserParam:I

    .line 51
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mListenerUi:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;

    .line 53
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mProgram_number:I

    .line 55
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecTime:J

    .line 57
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 59
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    .line 61
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->condwait:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    .line 63
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mTimer:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    .line 65
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mInnerResult:I

    .line 67
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mPackageName:Ljava/lang/String;

    .line 69
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mTriggerTime:J

    .line 124
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 125
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    .line 126
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mUserParam:I

    .line 127
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mListenerUi:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;

    .line 128
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mProgram_number:I

    .line 129
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecTime:J

    .line 130
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 131
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    .line 132
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mTimer:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    .line 133
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mInnerResult:I

    .line 134
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mPackageName:Ljava/lang/String;

    .line 135
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mTriggerTime:J

    .line 140
    return-void
.end method


# virtual methods
.method public checkRecState(I)Z
    .locals 1
    .param p1, "aRecState"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbState:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    return-object v0
.end method

.method public getCondWait()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->condwait:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    return-object v0
.end method

.method public getCrid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbCrid:Ljava/lang/String;

    return-object v0
.end method

.method public getInnerResult()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mInnerResult:I

    return v0
.end method

.method public getMeta()Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrgNo()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mProgram_number:I

    return v0
.end method

.method public getRecState()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbState:I

    return v0
.end method

.method public getServiceID()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbServiceId:I

    return v0
.end method

.method public getState()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    return-object v0
.end method

.method public getTimer()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mTimer:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    return-object v0
.end method

.method public getTriggerTime()J
    .locals 2

    .prologue
    .line 800
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mTriggerTime:J

    return-wide v0
.end method

.method public getUserParam()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mUserParam:I

    return v0
.end method

.method public notifyToUi(I)V
    .locals 8
    .param p1, "aResult"    # I

    .prologue
    .line 1108
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mListenerUi:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;

    if-eqz v4, :cond_0

    .line 1111
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mListenerUi:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iget v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbState:I

    iget v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mUserParam:I

    iget v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mProgram_number:I

    invoke-interface {v4, v5, p1, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;->onChangeStateRec(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 1119
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1123
    .local v1, "crid":Ljava/lang/String;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iget v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbState:I

    packed-switch v4, :pswitch_data_0

    .line 1141
    :cond_1
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_3

    .line 1142
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1143
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1144
    const-string v4, "prgNo"

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mProgram_number:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1145
    if-eqz v1, :cond_2

    .line 1146
    const-string v4, "crid"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    :cond_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    .line 1154
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 1113
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "crid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1114
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1125
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "crid":Ljava/lang/String;
    :pswitch_1
    if-nez p1, :cond_4

    .line 1126
    const-string v0, "com.nttdocomo.mmb.android.mmbsv.ACTION_RECORDING_COMPLETE"

    goto :goto_1

    .line 1128
    :cond_4
    const-string v0, "com.nttdocomo.mmb.android.mmbsv.ACTION_RECORDING_FAILURE"

    .line 1129
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iget-object v1, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbCrid:Ljava/lang/String;

    .line 1131
    goto :goto_1

    .line 1133
    :pswitch_2
    if-nez p1, :cond_1

    .line 1134
    const-string v0, "com.nttdocomo.mmb.android.mmbsv.ACTION_RECORDING_RECEIVING"

    goto :goto_1

    .line 1123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public notifyToUiBeforeRec()V
    .locals 3

    .prologue
    .line 1171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1172
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.nttdocomo.mmb.android.mmbsv.ACTION_RECORDING_PREPARED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1173
    const-string v1, "serviceId"

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iget v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbServiceId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1174
    const-string v1, "crid"

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    .line 1180
    return-void
.end method

.method public setCallback(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 0
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 509
    return-void
.end method

.method public setCrid(Ljava/lang/String;)V
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iput-object p1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbCrid:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setInitialize()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1195
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->condwait:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->clear()V

    .line 1196
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mTimer:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    .line 1197
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 1198
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    .line 1199
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbCrid:Ljava/lang/String;

    .line 1200
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbServiceId:I

    .line 1201
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbState:I

    .line 1202
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mUserParam:I

    .line 1203
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mProgram_number:I

    .line 1204
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mInnerResult:I

    .line 1205
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecTime:J

    .line 1206
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mPackageName:Ljava/lang/String;

    .line 1207
    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mTriggerTime:J

    .line 1211
    return-void
.end method

.method public setInnerResult(I)V
    .locals 0
    .param p1, "aInnerResult"    # I

    .prologue
    .line 729
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mInnerResult:I

    .line 734
    return-void
.end method

.method public setListnerUi(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;)V
    .locals 0
    .param p1, "aListenerUi"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mListenerUi:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;

    .line 599
    return-void
.end method

.method public setMeta(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;)V
    .locals 0
    .param p1, "aMeta"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    .line 644
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mPackageName:Ljava/lang/String;

    .line 779
    return-void
.end method

.method public setPrgNo(I)V
    .locals 0
    .param p1, "aPrgNo"    # I

    .prologue
    .line 414
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mProgram_number:I

    .line 419
    return-void
.end method

.method public setRecState(I)V
    .locals 1
    .param p1, "aRecState"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iput p1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbState:I

    .line 244
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->updateCondWait()V

    .line 249
    return-void
.end method

.method public setRecTime(J)V
    .locals 1
    .param p1, "aRecTime"    # J

    .prologue
    .line 459
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecTime:J

    .line 464
    return-void
.end method

.method public setServiceID(I)V
    .locals 1
    .param p1, "aServiceId"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iput p1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbServiceId:I

    .line 329
    return-void
.end method

.method public setTimer(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;)V
    .locals 0
    .param p1, "aTimer"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mTimer:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    .line 689
    return-void
.end method

.method public setTriggerTime(J)V
    .locals 1
    .param p1, "aTriggerTime"    # J

    .prologue
    .line 819
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mTriggerTime:J

    .line 824
    return-void
.end method

.method public setUserParam(I)V
    .locals 0
    .param p1, "aUserParam"    # I

    .prologue
    .line 549
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mUserParam:I

    .line 554
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbStRecordingStateSv [mRecState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mUserParam:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mListenerUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mListenerUi:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProgram_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mProgram_number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMeta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mTimer:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingTimerSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInnerResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mInnerResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTriggerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mTriggerTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", condwait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->condwait:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateCondWait()V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->mRecState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->condwait:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->signal()Z

    .line 889
    :goto_0
    return-void

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv;->condwait:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingStateSv$MmbSimpleCondWait;->clear()V

    goto :goto_0
.end method
