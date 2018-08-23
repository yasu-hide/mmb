.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;
.source "MmbStPlayerInInitializedSv.java"


# instance fields
.field private playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;


# direct methods
.method protected constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V
    .locals 0
    .param p1, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;
    .param p2, "aPlayerFunc"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;
    .param p3, "aStreamingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .param p4, "aExIfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V

    .line 54
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 58
    return-void
.end method


# virtual methods
.method public audioDecode(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->setAudioDecodeStatus(I)V

    .line 502
    return-void
.end method

.method public audioMute(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->setAudioMuteStatus(I)V

    .line 527
    return-void
.end method

.method public captionNotifyExist(IZ)V
    .locals 0
    .param p1, "aIndex"    # I
    .param p2, "aIsExist"    # Z

    .prologue
    .line 1167
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->captionNotifyExistCommonWrapped(IZ)V

    .line 1171
    return-void
.end method

.method public captionNotifyLangNumSetEnable(IB)V
    .locals 0
    .param p1, "aIndex"    # I
    .param p2, "aLangNum"    # B

    .prologue
    .line 1062
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->captionNotifyLangNumSetEnableCommonWrapped(IB)V

    .line 1066
    return-void
.end method

.method public captionNotifyNothingFixedTime(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1088
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->captionNotifyNothingFixedTimeCommonWrapped(I)V

    .line 1092
    return-void
.end method

.method public captionNotifyRecv(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1138
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->captionNotifyRecvCommonWrapped(I)V

    .line 1142
    return-void
.end method

.method public captionNotifyRestart(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1113
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->captionNotifyRestartCommonWrapped(I)V

    .line 1117
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->endCommonWrapped()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

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

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    throw v1
.end method

.method public getAudioInfo()I
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getAudioInfoCommonWrapped()I

    move-result v0

    .line 555
    .local v0, "result":I
    return v0
.end method

.method public getAudioLanguageNum()I
    .locals 1

    .prologue
    .line 767
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getComponentInfoCommonWrapped()I

    move-result v0

    .line 771
    .local v0, "result":I
    return v0
.end method

.method public getCnValue()I
    .locals 1

    .prologue
    .line 1264
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getCnValueCommonWrapped()I

    move-result v0

    .line 1268
    .local v0, "cnvalue":I
    return v0
.end method

.method public getLanguageCount(I)I
    .locals 1
    .param p1, "aType"    # I

    .prologue
    .line 611
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getLanguageCountCommonWrapped(I)I

    move-result v0

    .line 615
    .local v0, "result":I
    return v0
.end method

.method public getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    .locals 1

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getVideoInfoCommonWrapped()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    move-result-object v0

    .line 474
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    return-object v0
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 0
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 1210
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->notifyBroadcastActionCommonWrapped(Landroid/content/Intent;)V

    .line 1214
    return-void
.end method

.method public onAudioInformation(I)V
    .locals 0
    .param p1, "aAudioInfo"    # I

    .prologue
    .line 984
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->onAudioInformationCommonWrapped(I)V

    .line 988
    return-void
.end method

.method public onChangeAntennaLevel(I)V
    .locals 1
    .param p1, "aAntennaLevel"    # I

    .prologue
    .line 791
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->onChangeAntennaLevelCommonWrapped(IZ)V

    .line 795
    return-void
.end method

.method public onChangeAudioComponent(S)V
    .locals 0
    .param p1, "aComponentTag"    # S

    .prologue
    .line 1007
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->onChangeAudioComponentCommonWrapped(S)V

    .line 1011
    return-void
.end method

.method public onCompleteStartSt(III)V
    .locals 20
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I

    .prologue
    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v10

    .line 187
    .local v10, "selectchannelinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v13

    .line 189
    .local v13, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getStartViewUserParam()I

    move-result v16

    .line 192
    .local v16, "userparam":I
    move/from16 v0, p3

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 193
    const-string v17, "aUserParam Error"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    :goto_0
    return-void

    .line 197
    :cond_0
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setStartViewUserParam(I)V

    .line 199
    const/4 v4, 0x1

    .line 202
    .local v4, "errorflag":Z
    const/16 v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 205
    const/16 p2, 0x8

    .line 207
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->setServiceContractStatus(I)V

    .line 209
    sget-object v17, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :goto_1
    if-nez v4, :cond_2

    .line 302
    const/16 v17, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getTuneType()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 304
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->callReservationConclusion(I)V

    .line 308
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getInnerViewStatus()I

    move-result v17

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->checkViewStatus(I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 311
    sget-object v17, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->WATCHING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 317
    :goto_2
    const/16 p2, 0x8

    .line 320
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->convertServiceNgStatus(I)I

    move-result v9

    .line 321
    .local v9, "result":I
    move/from16 v15, p3

    .line 322
    .local v15, "uparam":I
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v17

    new-instance v18, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;II)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    invoke-virtual {v13, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    goto :goto_0

    .line 212
    .end local v9    # "result":I
    .end local v15    # "uparam":I
    :cond_3
    const/16 v17, 0x1

    :try_start_1
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getTuneType()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 214
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->callReservationTimer(I)V

    .line 218
    :cond_4
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getExecuteStartCaptionFlag()Z

    move-result v6

    .line 220
    .local v6, "executeflag":Z
    if-eqz v6, :cond_5

    .line 222
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setExecuteStartCaptionFlag(Z)V

    .line 225
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getDrawSettingSubtitle()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    move-result-object v11

    .line 227
    .local v11, "settingsubtitle":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getDrawSettingSuperimpose()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    move-result-object v12

    .line 231
    .local v12, "settingsuperimpose":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getCaptionStarterFlag()Z

    move-result v2

    .line 240
    .local v2, "captiondisplay":Z
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getSuperimposeStarterFlag()Z

    move-result v14

    .line 244
    .local v14, "superimposedisplay":Z
    const/16 v17, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->setState(IZ)V

    .line 245
    const/16 v17, 0x38

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->setState(IZ)V

    .line 249
    .end local v2    # "captiondisplay":Z
    .end local v11    # "settingsubtitle":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    .end local v12    # "settingsuperimpose":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    .end local v14    # "superimposedisplay":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getParetalSettingRate()I

    move-result v8

    .line 251
    .local v8, "parentalrate":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->checkParentalRate(I)Z

    move-result v3

    .line 253
    .local v3, "checkparental":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->setServiceParentalStatus(Z)V

    .line 256
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->setServiceContractStatus(I)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getInnerViewStatus()I

    move-result v7

    .line 262
    .local v7, "innersts":I
    if-nez v7, :cond_8

    .line 264
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->onChangeViewingStatusProcess(I)V

    .line 266
    sget-object v17, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->WATCHING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 272
    .end local v3    # "checkparental":Z
    .end local v6    # "executeflag":Z
    .end local v7    # "innersts":I
    .end local v8    # "parentalrate":I
    :catch_0
    move-exception v5

    .line 276
    .local v5, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const/4 v4, 0x0

    .line 278
    const/16 v17, -0x12

    :try_start_2
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 282
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    .end local v5    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catchall_0
    move-exception v17

    if-nez v4, :cond_7

    .line 302
    const/16 v18, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getTuneType()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 304
    const/16 v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->callReservationConclusion(I)V

    .line 308
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getInnerViewStatus()I

    move-result v18

    if-nez v18, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->checkViewStatus(I)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 311
    sget-object v18, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->WATCHING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 317
    :goto_3
    const/16 p2, 0x8

    .line 320
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->convertServiceNgStatus(I)I

    move-result v9

    .line 321
    .restart local v9    # "result":I
    move/from16 v15, p3

    .line 322
    .restart local v15    # "uparam":I
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v18

    new-instance v19, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;II)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    invoke-virtual {v13, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    .line 334
    throw v17

    .line 269
    .end local v9    # "result":I
    .end local v15    # "uparam":I
    .restart local v3    # "checkparental":Z
    .restart local v6    # "executeflag":Z
    .restart local v7    # "innersts":I
    .restart local v8    # "parentalrate":I
    :cond_8
    :try_start_3
    sget-object v17, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 295
    .end local v3    # "checkparental":Z
    .end local v6    # "executeflag":Z
    .end local v7    # "innersts":I
    .end local v8    # "parentalrate":I
    :catch_1
    move-exception v5

    .line 296
    .local v5, "exception":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 298
    :try_start_4
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 300
    if-nez v4, :cond_a

    .line 302
    const/16 v17, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getTuneType()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 304
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->callReservationConclusion(I)V

    .line 308
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getInnerViewStatus()I

    move-result v17

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->checkViewStatus(I)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 311
    sget-object v17, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->WATCHING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 317
    :goto_4
    const/16 p2, 0x8

    .line 320
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->convertServiceNgStatus(I)I

    move-result v9

    .line 321
    .restart local v9    # "result":I
    move/from16 v15, p3

    .line 322
    .restart local v15    # "uparam":I
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v17

    new-instance v18, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;II)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    invoke-virtual {v13, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    goto/16 :goto_0

    .line 314
    .end local v5    # "exception":Ljava/lang/Exception;
    .end local v9    # "result":I
    .end local v15    # "uparam":I
    :cond_b
    sget-object v17, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    goto/16 :goto_2

    .line 283
    .local v5, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :cond_c
    const/16 v17, -0x16

    :try_start_5
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 288
    throw v5

    .line 289
    :cond_d
    const/16 v17, -0x15

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 291
    const-string v17, "St restart"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 300
    :cond_e
    if-nez v4, :cond_10

    .line 302
    const/16 v17, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getTuneType()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 304
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->callReservationConclusion(I)V

    .line 308
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getInnerViewStatus()I

    move-result v17

    if-nez v17, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->checkViewStatus(I)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 311
    sget-object v17, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->WATCHING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 317
    :goto_5
    const/16 p2, 0x8

    .line 320
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->convertServiceNgStatus(I)I

    move-result v9

    .line 321
    .restart local v9    # "result":I
    move/from16 v15, p3

    .line 322
    .restart local v15    # "uparam":I
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v17

    new-instance v18, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;II)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    invoke-virtual {v13, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    goto/16 :goto_0

    .line 314
    .end local v9    # "result":I
    .end local v15    # "uparam":I
    :cond_11
    sget-object v17, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    goto :goto_5

    .local v5, "exception":Ljava/lang/Exception;
    :cond_12
    sget-object v17, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    goto/16 :goto_4

    .end local v5    # "exception":Ljava/lang/Exception;
    :cond_13
    sget-object v18, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    goto/16 :goto_3
.end method

.method public onNotifyServiceNg(I)V
    .locals 2
    .param p1, "aCause"    # I

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->setServiceNgStatus(I)V

    .line 362
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->onNotifyServiceNgCommonWrapped(IIZ)V

    .line 367
    return-void
.end method

.method public onUpdateBit()V
    .locals 0

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->onUpdateBitCommonWrapped()V

    .line 865
    return-void
.end method

.method public onUpdateEit()V
    .locals 0

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->onUpdateEitCommonWrapped()V

    .line 888
    return-void
.end method

.method public onUpdateEmm()V
    .locals 0

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->onUpdateEmmCommonWrapped()V

    .line 934
    return-void
.end method

.method public onUpdateNit()V
    .locals 0

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->onUpdateNitCommonWrapped()V

    .line 842
    return-void
.end method

.method public onUpdatePmt()V
    .locals 2

    .prologue
    .line 815
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->onUpdatePmtCommonWrapped(ZZ)V

    .line 819
    return-void
.end method

.method public onUpdateSdt()V
    .locals 0

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->onUpdateSdtCommonWrapped()V

    .line 911
    return-void
.end method

.method public onVideoInformation(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V
    .locals 0
    .param p1, "aPicWidth"    # I
    .param p2, "aPicHeight"    # I
    .param p3, "aAspect"    # I
    .param p4, "aViewInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;

    .prologue
    .line 957
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->onVideoInformationCommonWrapped(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V

    .line 961
    return-void
.end method

.method public pause(IIZ)V
    .locals 1
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 705
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->pauseCommonWrapped(IIZZ)V

    .line 709
    return-void
.end method

.method protected pauseInner(IIZ)V
    .locals 1
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 742
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->pauseInnerCommonWrapped(IIZZ)V

    .line 746
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
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->preTuneCommonWrapped(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;I)V

    .line 125
    return-void
.end method

.method public setAudioLanguageValue(I)V
    .locals 0
    .param p1, "aLanguage"    # I

    .prologue
    .line 1032
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->setAudioLanguageValueCommonWrapped(I)V

    .line 1036
    return-void
.end method

.method public setBmlState(Z)V
    .locals 0
    .param p1, "aState"    # Z

    .prologue
    .line 1240
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->setBmlStateCommonWrapped(Z)V

    .line 1244
    return-void
.end method

.method public setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    .locals 0
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    .line 669
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->setDisplayAreaCommonWrapped(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 673
    return-void
.end method

.method public setLanguageIndex(II)V
    .locals 0
    .param p1, "aType"    # I
    .param p2, "aLang"    # I

    .prologue
    .line 643
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->setLanguageIndexCommonWrapped(II)V

    .line 647
    return-void
.end method

.method public setState(IZ)V
    .locals 0
    .param p1, "aType"    # I
    .param p2, "aState"    # Z

    .prologue
    .line 581
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->setStateCommonWrapped(IZ)V

    .line 585
    return-void
.end method

.method public setVideoDisplay(I)V
    .locals 1
    .param p1, "aRotateDegrees"    # I

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setVideoDisplay(I)V

    .line 1194
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
    .line 157
    invoke-virtual/range {p0 .. p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->tuneCommonWrapped(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;Ljava/lang/String;I)V

    .line 162
    return-void
.end method

.method public videoDecode(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->setVideoDecodeStatus(I)V

    .line 394
    return-void
.end method

.method protected videoDecodeInner(I)V
    .locals 2
    .param p1, "aState"    # I

    .prologue
    .line 416
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    return-void
.end method

.method public videoMute(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 443
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInInitializedSv;->setVideoMuteStatus(I)V

    .line 447
    return-void
.end method
