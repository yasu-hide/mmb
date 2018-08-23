.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;
.source "MmbStPlayerInScanningSv.java"


# instance fields
.field private playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V
    .locals 0
    .param p1, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;
    .param p2, "aPlayerFunc"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;
    .param p3, "aStreamingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .param p4, "aExIfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V

    .line 59
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 63
    return-void
.end method


# virtual methods
.method public cancelScan()V
    .locals 5

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->cancelScan()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "channelinformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v0

    .line 92
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setScanUserParam(I)V

    .line 95
    const v1, 0xa10a

    const v2, 0x8000

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->clearApplicationStatus(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 105
    return-void

    .line 90
    .end local v0    # "channelinformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    :catchall_0
    move-exception v1

    const/4 v0, 0x0

    .line 91
    .restart local v0    # "channelinformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    :try_start_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v0

    .line 92
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setScanUserParam(I)V

    .line 95
    const v2, 0xa10a

    const v3, 0x8000

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->clearApplicationStatus(IIZ)V

    .line 96
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    :catchall_1
    move-exception v1

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    throw v1
.end method

.method public onChangeAntennaLevel(I)V
    .locals 1
    .param p1, "aAntennaLevel"    # I

    .prologue
    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->onChangeAntennaLevelCommonWrapped(IZ)V

    .line 205
    return-void
.end method

.method public onCompleteScan(II)V
    .locals 10
    .param p1, "aResult"    # I
    .param p2, "aUserParam"    # I

    .prologue
    const/4 v7, 0x0

    .line 131
    const/4 v3, 0x1

    .line 134
    .local v3, "scanresult":Z
    const/4 v0, 0x0

    .line 135
    .local v0, "channelinformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v0

    .line 136
    const/4 v5, 0x0

    .line 137
    .local v5, "userparam":I
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getScanUserParam()I

    move-result v5

    .line 140
    if-eq p2, v5, :cond_0

    .line 141
    const-string v6, "aUserParam error"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setScanUserParam(I)V

    .line 150
    if-eqz p1, :cond_1

    .line 151
    const-string v6, "error result(%d)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    const/4 v3, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->saveServiceListFromNitInfo()V

    .line 157
    :cond_1
    const v6, 0xa10a

    const v7, 0x8000

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->clearApplicationStatus(IIZ)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    move v2, v3

    .line 163
    .local v2, "result":Z
    move v4, p2

    .line 164
    .local v4, "uparam":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv$1;

    invoke-direct {v7, p0, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;ZI)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    goto :goto_0

    .line 159
    .end local v2    # "result":Z
    .end local v4    # "uparam":I
    :catch_0
    move-exception v1

    .line 160
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catchall_0
    move-exception v6

    move v2, v3

    .line 163
    .restart local v2    # "result":Z
    move v4, p2

    .line 164
    .restart local v4    # "uparam":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv$1;

    invoke-direct {v8, p0, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;ZI)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 176
    throw v6
.end method

.method public onUpdateBit()V
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->onUpdateServiceInformation(ZI)V

    .line 253
    return-void
.end method

.method public onUpdateNit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, v0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInScanningSv;->onUpdateServiceInformation(ZI)V

    .line 229
    return-void
.end method
