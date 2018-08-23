.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;
.source "MmbStPlayerInPausingSv.java"


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V
    .locals 0
    .param p1, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;
    .param p2, "aPlayerFunc"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;
    .param p3, "aStreamingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .param p4, "aExIfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V

    .line 57
    return-void
.end method


# virtual methods
.method public audioDecode(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->setAudioDecodeStatus(I)V

    .line 387
    return-void
.end method

.method public audioMute(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->setAudioMuteStatus(I)V

    .line 413
    return-void
.end method

.method public captionNotifyExist(IZ)V
    .locals 0
    .param p1, "aIndex"    # I
    .param p2, "aIsExist"    # Z

    .prologue
    .line 1218
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->captionNotifyExistCommonWrapped(IZ)V

    .line 1222
    return-void
.end method

.method public captionNotifyLangNumSetEnable(IB)V
    .locals 0
    .param p1, "aIndex"    # I
    .param p2, "aLangNum"    # B

    .prologue
    .line 1105
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->captionNotifyLangNumSetEnableCommonWrapped(IB)V

    .line 1109
    return-void
.end method

.method public captionNotifyNothingFixedTime(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1133
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->captionNotifyNothingFixedTimeCommonWrapped(I)V

    .line 1137
    return-void
.end method

.method public captionNotifyRecv(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1187
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->captionNotifyRecvCommonWrapped(I)V

    .line 1191
    return-void
.end method

.method public captionNotifyRestart(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1160
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->captionNotifyRestartCommonWrapped(I)V

    .line 1164
    return-void
.end method

.method public changeParental()V
    .locals 0

    .prologue
    .line 1257
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->changeParentalCommonWrapped()V

    .line 1261
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->endCommonWrapped()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 89
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :try_start_1
    const-string v1, "endCommonWrapped fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    throw v1
.end method

.method public getAudioInfo()I
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->getAudioInfoCommonWrapped()I

    move-result v0

    .line 443
    .local v0, "result":I
    return v0
.end method

.method public getAudioLanguageNum()I
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->getComponentInfoCommonWrapped()I

    move-result v0

    .line 796
    .local v0, "result":I
    return v0
.end method

.method public getCnValue()I
    .locals 1

    .prologue
    .line 1330
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->getCnValueCommonWrapped()I

    move-result v0

    .line 1334
    .local v0, "cnvalue":I
    return v0
.end method

.method public getLanguageCount(I)I
    .locals 1
    .param p1, "aType"    # I

    .prologue
    .line 512
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->getLanguageCountCommonWrapped(I)I

    move-result v0

    .line 516
    .local v0, "result":I
    return v0
.end method

.method public getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->getVideoInfoCommonWrapped()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    move-result-object v0

    .line 359
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    return-object v0
.end method

.method public judgmentReservationReschedule(I)V
    .locals 0
    .param p1, "aUserParam"    # I

    .prologue
    .line 1238
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->judgmentReservationRescheduleCommonWrapped(I)V

    .line 1242
    return-void
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 0
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 1277
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->notifyBroadcastActionCommonWrapped(Landroid/content/Intent;)V

    .line 1281
    return-void
.end method

.method public onAudioInformation(I)V
    .locals 0
    .param p1, "aAudioInfo"    # I

    .prologue
    .line 1021
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->onAudioInformationCommonWrapped(I)V

    .line 1025
    return-void
.end method

.method public onChangeAntennaLevel(I)V
    .locals 1
    .param p1, "aAntennaLevel"    # I

    .prologue
    .line 818
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->onChangeAntennaLevelCommonWrapped(IZ)V

    .line 822
    return-void
.end method

.method public onChangeAudioComponent(S)V
    .locals 0
    .param p1, "aComponentTag"    # S

    .prologue
    .line 1046
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->onChangeAudioComponentCommonWrapped(S)V

    .line 1050
    return-void
.end method

.method public onChangeViewingStatus(I)V
    .locals 2
    .param p1, "aViewingStatus"    # I

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->setServiceContractStatus(I)V

    .line 196
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->getInnerViewStatus()I

    move-result v0

    .line 199
    .local v0, "innersts":I
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->convertServiceNgStatus(I)I

    move-result p1

    .line 202
    invoke-virtual {p0, v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->onChangeViewingStatusCommonWrapped(II)V

    .line 206
    if-nez v0, :cond_0

    .line 207
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->WATCHING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 213
    :cond_0
    return-void
.end method

.method public onNotifyServiceNg(I)V
    .locals 2
    .param p1, "aCause"    # I

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->setServiceNgStatus(I)V

    .line 238
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->getInnerViewStatus()I

    move-result v0

    .line 241
    .local v0, "innersts":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->onNotifyServiceNgCommonWrapped(IIZ)V

    .line 245
    if-nez v0, :cond_0

    .line 246
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->WATCHING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 252
    :cond_0
    return-void
.end method

.method public onUpdateBit()V
    .locals 0

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->onUpdateBitCommonWrapped()V

    .line 894
    return-void
.end method

.method public onUpdateEit()V
    .locals 0

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->onUpdateEitCommonWrapped()V

    .line 918
    return-void
.end method

.method public onUpdateEmm()V
    .locals 0

    .prologue
    .line 962
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->onUpdateEmmCommonWrapped()V

    .line 966
    return-void
.end method

.method public onUpdateNit()V
    .locals 0

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->onUpdateNitCommonWrapped()V

    .line 870
    return-void
.end method

.method public onUpdatePmt()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 842
    invoke-virtual {p0, v0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->onUpdatePmtCommonWrapped(ZZ)V

    .line 846
    return-void
.end method

.method public onUpdateSdt()V
    .locals 0

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->onUpdateSdtCommonWrapped()V

    .line 942
    return-void
.end method

.method public onVideoInformation(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V
    .locals 0
    .param p1, "aPicWidth"    # I
    .param p2, "aPicHeight"    # I
    .param p3, "aAspect"    # I
    .param p4, "aViewInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;

    .prologue
    .line 992
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->onVideoInformationCommonWrapped(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V

    .line 996
    return-void
.end method

.method public pause(IIZ)V
    .locals 1
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 729
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->pauseCommonWrapped(IIZZ)V

    .line 733
    return-void
.end method

.method protected pauseInner(IIZ)V
    .locals 1
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 768
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->pauseInnerCommonWrapped(IIZZ)V

    .line 772
    return-void
.end method

.method public preTune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;I)V
    .locals 0
    .param p1, "aServiceId"    # I
    .param p2, "aMode"    # I
    .param p3, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .param p4, "aUserParam"    # I

    .prologue
    .line 121
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->preTuneCommonWrapped(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;I)V

    .line 125
    return-void
.end method

.method public setAudioLanguageValue(I)V
    .locals 0
    .param p1, "aLanguage"    # I

    .prologue
    .line 1071
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->setAudioLanguageValueCommonWrapped(I)V

    .line 1075
    return-void
.end method

.method public setBmlState(Z)V
    .locals 0
    .param p1, "aState"    # Z

    .prologue
    .line 1306
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->setBmlStateCommonWrapped(Z)V

    .line 1310
    return-void
.end method

.method public setCaptionDisplayAreaInfo(IIII)V
    .locals 1
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 631
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setCaptionDisplayAreaInfo(IIII)V

    .line 635
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->setCaptionDisplayArea(I)V

    .line 640
    return-void
.end method

.method public setCaptionSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "aCaptionSurface"    # Landroid/view/Surface;

    .prologue
    .line 599
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setCaptionSurface(Landroid/view/Surface;)V

    .line 602
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->setCaptionDisplayArea(I)V

    .line 607
    return-void
.end method

.method public setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    .locals 0
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    .line 578
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->setDisplayAreaCommonWrapped(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 582
    return-void
.end method

.method public setLanguageIndex(II)V
    .locals 0
    .param p1, "aType"    # I
    .param p2, "aLang"    # I

    .prologue
    .line 552
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->setLanguageIndexCommonWrapped(II)V

    .line 556
    return-void
.end method

.method public setState(IZ)V
    .locals 0
    .param p1, "aType"    # I
    .param p2, "aState"    # Z

    .prologue
    .line 477
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->setStateCommonWrapped(IZ)V

    .line 481
    return-void
.end method

.method public setSuperimposeDisplayAreaInfo(IIII)V
    .locals 1
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 687
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setSuperimposeDisplayAreaInfo(IIII)V

    .line 690
    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->setCaptionDisplayArea(I)V

    .line 695
    return-void
.end method

.method public setSuperimposeSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "aSuperimposeSurface"    # Landroid/view/Surface;

    .prologue
    .line 657
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setSuperimposeSurface(Landroid/view/Surface;)V

    .line 660
    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->setCaptionDisplayArea(I)V

    .line 665
    return-void
.end method

.method public tune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;Ljava/lang/String;I)V
    .locals 0
    .param p1, "aServiceId"    # I
    .param p2, "aMode"    # I
    .param p3, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .param p4, "aEntityId"    # Ljava/lang/String;
    .param p5, "aUserParam"    # I

    .prologue
    .line 163
    invoke-virtual/range {p0 .. p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->tuneCommonWrapped(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;Ljava/lang/String;I)V

    .line 168
    return-void
.end method

.method public videoDecode(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->setVideoDecodeStatus(I)V

    .line 279
    return-void
.end method

.method protected videoDecodeInner(I)V
    .locals 2
    .param p1, "aState"    # I

    .prologue
    .line 300
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public videoMute(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInPausingSv;->setVideoMuteStatus(I)V

    .line 330
    return-void
.end method
