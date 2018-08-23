.class Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;
.super Ljava/lang/Object;
.source "MmbSiMetadataListenerSv.java"

# interfaces
.implements Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv$1;
    }
.end annotation


# instance fields
.field private callback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

.field private service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

.field private stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 0
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aStateDate"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    .line 88
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 89
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 93
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public acquireNotice(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;)V
    .locals 4
    .param p1, "aNotice"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;

    .prologue
    .line 174
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType;

    if-nez v1, :cond_2

    .line 175
    :cond_0
    const-string v1, "parameter error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv$1;->$SwitchMap$mmb$android$MmbFcPgInfoMw$MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType:[I

    iget-object v2, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 189
    :pswitch_0
    iget v1, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->value:I

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->ACQUIRE_FAILED_RETRY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->getInt()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 190
    const-string v1, "acquireNotice midle error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget v1, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->value:I

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->ACQUIRE_FAILED_SCAN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->getInt()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 195
    const-string v1, "acquireNotice midle error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(IZ)V

    goto :goto_0

    .line 199
    :cond_4
    iget v1, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->value:I

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->ACQUIRE_COMPLETE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->getInt()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 200
    const-string v1, "acquireNotice midle error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_1

    .line 210
    :try_start_2
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    iget v2, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->value:I

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getLoopCount()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getMaxLoop()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setProgress(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 212
    :catch_1
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 215
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V

    goto/16 :goto_0

    .line 222
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_2
    iget v1, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->value:I

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->ACQUIRE_FAILED_RETRY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->getInt()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 223
    const-string v1, "acquireNotice midle error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(IZ)V

    goto/16 :goto_0

    .line 227
    :cond_5
    iget v1, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->value:I

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->ACQUIRE_FAILED_SCAN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->getInt()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 228
    const-string v1, "acquireNotice midle error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(IZ)V

    goto/16 :goto_0

    .line 232
    :cond_6
    iget v1, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->value:I

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->ACQUIRE_COMPLETE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->getInt()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 233
    const-string v1, "acquireNotice midle error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V

    goto/16 :goto_0

    .line 238
    :cond_7
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    return-object v0
.end method

.method public noticeBroadcastLevel(I)V
    .locals 3
    .param p1, "aLevel"    # I

    .prologue
    .line 296
    const/4 v1, 0x5

    if-gt v1, p1, :cond_0

    .line 297
    const/4 p1, 0x4

    .line 299
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getCallType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 313
    :goto_0
    return-void

    .line 301
    :pswitch_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->setNotificationALayer(IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->setNotificationBLayer(IZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public noticeBroadcastTimeChanged([Ljava/lang/String;)V
    .locals 0
    .param p1, "aCrid"    # [Ljava/lang/String;

    .prologue
    .line 334
    return-void
.end method

.method public reserveBLayer(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;)V
    .locals 8
    .param p1, "aInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 123
    :cond_0
    :try_start_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 124
    .local v2, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/16 v3, 0x40

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 125
    iget-wide v4, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->startTime:J

    const-wide/16 v6, 0x2710

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 126
    iget-object v3, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->crid:Ljava/lang/String;

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 127
    iget-object v3, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->title:Ljava/lang/String;

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    .line 128
    iget-wide v4, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->startTime:J

    iput-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 129
    iget-wide v4, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->endTime:J

    iput-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    .line 130
    const/4 v3, 0x1

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 133
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    .local v1, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->setSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 140
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 146
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v1    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    .end local v2    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    .restart local v2    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :catch_2
    move-exception v0

    .line 143
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 144
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->stateData:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method protected setCallback(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 0
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 352
    return-void
.end method
