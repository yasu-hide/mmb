.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;
.source "MmbStPlayerInWatchingSv.java"


# instance fields
.field private playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V
    .locals 1
    .param p1, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;
    .param p2, "aPlayerFunc"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;
    .param p3, "aStreamingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .param p4, "aExIfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 66
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 70
    return-void
.end method

.method private resumeCaption(I)V
    .locals 5
    .param p1, "aType"    # I

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->getPauseResumeData()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;

    move-result-object v1

    .line 862
    .local v1, "capstate":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposeStatus(I)I

    move-result v3

    .line 863
    .local v3, "status":I
    const/4 v4, 0x1

    if-ne v4, v3, :cond_0

    .line 865
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposeCanvas(I)Z

    move-result v0

    .line 866
    .local v0, "canvas":Z
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposePidClear(I)Z

    move-result v2

    .line 867
    .local v2, "pid":Z
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v4, v3, p1, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->pause(IIZZ)V

    .line 873
    .end local v0    # "canvas":Z
    .end local v2    # "pid":Z
    :cond_0
    return-void
.end method


# virtual methods
.method public audioDecode(I)V
    .locals 2
    .param p1, "aState"    # I

    .prologue
    const/4 v1, 0x1

    .line 422
    invoke-virtual {p0, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->changeDefine(II)I

    move-result v0

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->videoAudioStatusChange(IIIZ)V

    .line 429
    return-void
.end method

.method public audioMute(I)V
    .locals 3
    .param p1, "aState"    # I

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x1

    .line 447
    invoke-virtual {p0, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->changeDefine(II)I

    move-result v0

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->videoAudioStatusChange(IIIZ)V

    .line 454
    return-void
.end method

.method public captionNotifyExist(IZ)V
    .locals 0
    .param p1, "aIndex"    # I
    .param p2, "aIsExist"    # Z

    .prologue
    .line 1461
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->captionNotifyExistCommonWrapped(IZ)V

    .line 1465
    return-void
.end method

.method public captionNotifyLangNumSetEnable(IB)V
    .locals 0
    .param p1, "aIndex"    # I
    .param p2, "aLangNum"    # B

    .prologue
    .line 1345
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->captionNotifyLangNumSetEnableCommonWrapped(IB)V

    .line 1349
    return-void
.end method

.method public captionNotifyNothingFixedTime(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1373
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->captionNotifyNothingFixedTimeCommonWrapped(I)V

    .line 1377
    return-void
.end method

.method public captionNotifyRecv(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1429
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->captionNotifyRecvCommonWrapped(I)V

    .line 1433
    return-void
.end method

.method public captionNotifyRestart(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1401
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->captionNotifyRestartCommonWrapped(I)V

    .line 1405
    return-void
.end method

.method public changeParental()V
    .locals 0

    .prologue
    .line 1523
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->changeParentalCommonWrapped()V

    .line 1527
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->endCommonWrapped()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 102
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :try_start_1
    const-string v1, "endCommonWrapped fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    throw v1
.end method

.method public getAudioInfo()I
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->getAudioInfoCommonWrapped()I

    move-result v0

    .line 598
    .local v0, "result":I
    return v0
.end method

.method public getAudioLanguage()I
    .locals 1

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->getAudioLanguageCommonWrapped()I

    move-result v0

    .line 541
    .local v0, "languagevalue":I
    return v0
.end method

.method public getAudioLanguageNum()I
    .locals 1

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->getComponentInfoCommonWrapped()I

    move-result v0

    .line 1051
    .local v0, "result":I
    return v0
.end method

.method public getCnValue()I
    .locals 1

    .prologue
    .line 1607
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->getCnValueCommonWrapped()I

    move-result v0

    .line 1611
    .local v0, "cnvalue":I
    return v0
.end method

.method public getLanguageCount(I)I
    .locals 1
    .param p1, "aType"    # I

    .prologue
    .line 655
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->getLanguageCountCommonWrapped(I)I

    move-result v0

    .line 659
    .local v0, "result":I
    return v0
.end method

.method public getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->getVideoInfoCommonWrapped()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    move-result-object v0

    .line 396
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    return-object v0
.end method

.method public judgmentReservationReschedule(I)V
    .locals 0
    .param p1, "aUserParam"    # I

    .prologue
    .line 1504
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->judgmentReservationRescheduleCommonWrapped(I)V

    .line 1508
    return-void
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 0
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 1542
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->notifyBroadcastActionCommonWrapped(Landroid/content/Intent;)V

    .line 1546
    return-void
.end method

.method public onAudioInformation(I)V
    .locals 0
    .param p1, "aAudioInfo"    # I

    .prologue
    .line 1286
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->onAudioInformationCommonWrapped(I)V

    .line 1290
    return-void
.end method

.method public onChangeAntennaLevel(I)V
    .locals 1
    .param p1, "aAntennaLevel"    # I

    .prologue
    .line 1074
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->onChangeAntennaLevelCommonWrapped(IZ)V

    .line 1078
    return-void
.end method

.method public onChangeAudioComponent(S)V
    .locals 0
    .param p1, "aComponentTag"    # S

    .prologue
    .line 1312
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->onChangeAudioComponentCommonWrapped(S)V

    .line 1316
    return-void
.end method

.method public onChangeViewingStatus(I)V
    .locals 4
    .param p1, "aViewingStatus"    # I

    .prologue
    const/4 v3, 0x1

    .line 210
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->setServiceContractStatus(I)V

    .line 213
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->getInnerViewStatus()I

    move-result v1

    .line 216
    .local v1, "innersts":I
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->convertServiceNgStatus(I)I

    move-result p1

    .line 220
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->onChangeViewingStatusCommonWrapped(II)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    if-ne v3, v1, :cond_0

    .line 230
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 237
    :cond_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 226
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catchall_0
    move-exception v2

    if-ne v3, v1, :cond_1

    .line 230
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    :cond_1
    throw v2
.end method

.method public onNotifyServiceNg(I)V
    .locals 2
    .param p1, "aCause"    # I

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->setServiceNgStatus(I)V

    .line 264
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->getInnerViewStatus()I

    move-result v0

    .line 267
    .local v0, "innersts":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->onNotifyServiceNgCommonWrapped(IIZ)V

    .line 270
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 271
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 276
    :cond_0
    return-void
.end method

.method public onUpdateBit()V
    .locals 0

    .prologue
    .line 1150
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->onUpdateBitCommonWrapped()V

    .line 1154
    return-void
.end method

.method public onUpdateEit()V
    .locals 0

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->onUpdateEitCommonWrapped()V

    .line 1179
    return-void
.end method

.method public onUpdateEmm()V
    .locals 0

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->onUpdateEmmCommonWrapped()V

    .line 1229
    return-void
.end method

.method public onUpdateNit()V
    .locals 0

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->onUpdateNitCommonWrapped()V

    .line 1129
    return-void
.end method

.method public onUpdatePmt()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1100
    invoke-virtual {p0, v0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->onUpdatePmtCommonWrapped(ZZ)V

    .line 1104
    return-void
.end method

.method public onUpdateSdt()V
    .locals 0

    .prologue
    .line 1200
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->onUpdateSdtCommonWrapped()V

    .line 1204
    return-void
.end method

.method public onVideoInformation(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V
    .locals 0
    .param p1, "aPicWidth"    # I
    .param p2, "aPicHeight"    # I
    .param p3, "aAspect"    # I
    .param p4, "aViewInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;

    .prologue
    .line 1256
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->onVideoInformationCommonWrapped(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V

    .line 1260
    return-void
.end method

.method public pause(IIZ)V
    .locals 1
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 984
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->pauseCommonWrapped(IIZZ)V

    .line 988
    return-void
.end method

.method protected pauseInner(IIZ)V
    .locals 1
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 1021
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->pauseInnerCommonWrapped(IIZZ)V

    .line 1025
    return-void
.end method

.method public preTune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;I)V
    .locals 0
    .param p1, "aServiceId"    # I
    .param p2, "aMode"    # I
    .param p3, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .param p4, "aUserParam"    # I

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->preTuneCommonWrapped(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;I)V

    .line 138
    return-void
.end method

.method public selectAudioLanguage(I)V
    .locals 2
    .param p1, "aLang"    # I

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 509
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getAudiocomponenttag()S

    move-result v1

    if-eq p1, v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->selectAudioLanguage(I)V

    .line 516
    :cond_0
    return-void
.end method

.method public selectAudioMode(I)V
    .locals 1
    .param p1, "aMode"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->selectAudioMode(I)V

    .line 484
    return-void
.end method

.method public setAudioLanguageValue(I)V
    .locals 0
    .param p1, "aLanguage"    # I

    .prologue
    .line 564
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->setAudioLanguageValueCommonWrapped(I)V

    .line 568
    return-void
.end method

.method public setBmlState(Z)V
    .locals 3
    .param p1, "aState"    # Z

    .prologue
    .line 1570
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->setBmlStateCommonWrapped(Z)V

    .line 1573
    if-nez p1, :cond_0

    .line 1575
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->stopBmlBrowserCommonWrapped()V

    .line 1587
    :goto_0
    return-void

    .line 1578
    :cond_0
    const/4 v0, 0x0

    .line 1579
    .local v0, "channelinformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v0

    .line 1581
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getBmlDraw()Z

    move-result v1

    .line 1582
    .local v1, "isdraw":Z
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->startBmlBrowserCommonWrapped(ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V

    goto :goto_0
.end method

.method public setCaptionDisplayAreaInfo(IIII)V
    .locals 1
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    const/16 v0, 0x30

    .line 771
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setCaptionDisplayAreaInfo(IIII)V

    .line 775
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->setCaptionDisplayArea(I)V

    .line 778
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->resumeCaption(I)V

    .line 783
    return-void
.end method

.method public setCaptionSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "aCaptionSurface"    # Landroid/view/Surface;

    .prologue
    const/16 v0, 0x30

    .line 736
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setCaptionSurface(Landroid/view/Surface;)V

    .line 739
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->setCaptionDisplayArea(I)V

    .line 742
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->resumeCaption(I)V

    .line 747
    return-void
.end method

.method public setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    .locals 0
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    .line 715
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->setDisplayAreaCommonWrapped(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 719
    return-void
.end method

.method public setLanguageIndex(II)V
    .locals 0
    .param p1, "aType"    # I
    .param p2, "aLang"    # I

    .prologue
    .line 688
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->setLanguageIndexCommonWrapped(II)V

    .line 692
    return-void
.end method

.method public setState(IZ)V
    .locals 0
    .param p1, "aType"    # I
    .param p2, "aState"    # Z

    .prologue
    .line 626
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->setStateCommonWrapped(IZ)V

    .line 630
    return-void
.end method

.method public setSuperimposeDisplayAreaInfo(IIII)V
    .locals 1
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    const/16 v0, 0x38

    .line 833
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setSuperimposeDisplayAreaInfo(IIII)V

    .line 836
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->setCaptionDisplayArea(I)V

    .line 839
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->resumeCaption(I)V

    .line 844
    return-void
.end method

.method public setSuperimposeSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "aSuperimposeSurface"    # Landroid/view/Surface;

    .prologue
    const/16 v0, 0x38

    .line 800
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setSuperimposeSurface(Landroid/view/Surface;)V

    .line 803
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->setCaptionDisplayArea(I)V

    .line 806
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->resumeCaption(I)V

    .line 811
    return-void
.end method

.method public setVideoDisplay(I)V
    .locals 1
    .param p1, "aRotateDegrees"    # I

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setVideoDisplay(I)V

    .line 1488
    return-void
.end method

.method public setVideoDisplayAreaInfo(IIII)V
    .locals 3
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 935
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setVideoDisplayAreaInfo(IIII)V

    .line 938
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->getVideoStatus()I

    move-result v0

    .line 939
    .local v0, "videoDecodetSatus":I
    and-int/lit8 v0, v0, 0x1

    .line 941
    if-nez v0, :cond_0

    .line 943
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDisplayControl(I)V

    .line 944
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDisplayControl(I)V

    .line 950
    :cond_0
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "aVideoSurface"    # Landroid/view/Surface;

    .prologue
    .line 891
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setVideoSurface(Landroid/view/Surface;)V

    .line 893
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->getVideoStatus()I

    move-result v0

    .line 894
    .local v0, "videoDecodetSatus":I
    and-int/lit8 v0, v0, 0x1

    .line 896
    if-nez v0, :cond_0

    .line 897
    if-eqz p1, :cond_1

    .line 898
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDisplayControl(I)V

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDisplayControl(I)V

    goto :goto_0
.end method

.method public tune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;Ljava/lang/String;I)V
    .locals 0
    .param p1, "aServiceId"    # I
    .param p2, "aMode"    # I
    .param p3, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .param p4, "aEntityId"    # Ljava/lang/String;
    .param p5, "aUserParam"    # I

    .prologue
    .line 177
    invoke-virtual/range {p0 .. p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->tuneCommonWrapped(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method public videoDecode(I)V
    .locals 3
    .param p1, "aState"    # I

    .prologue
    const/4 v2, 0x1

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->changeDefine(II)I

    move-result v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->videoAudioStatusChange(IIIZ)V

    .line 308
    return-void
.end method

.method protected videoDecodeInner(I)V
    .locals 3
    .param p1, "aState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 331
    invoke-virtual {p0, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->changeDefine(II)I

    move-result v0

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->videoAudioStatusChange(IIIZ)V

    .line 337
    return-void
.end method

.method public videoMute(I)V
    .locals 4
    .param p1, "aState"    # I

    .prologue
    const/16 v3, 0x10

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->changeDefine(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInWatchingSv;->videoAudioStatusChange(IIIZ)V

    .line 367
    return-void
.end method
