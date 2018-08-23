.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;
.source "MmbStPlayerInTuningRecoverySv.java"


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
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V

    .line 65
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 69
    return-void
.end method


# virtual methods
.method public audioDecode(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setAudioDecodeStatus(I)V

    .line 533
    return-void
.end method

.method public audioMute(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 554
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setAudioMuteStatus(I)V

    .line 559
    return-void
.end method

.method public captionNotifyExist(IZ)V
    .locals 0
    .param p1, "aIndex"    # I
    .param p2, "aIsExist"    # Z

    .prologue
    .line 1386
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->captionNotifyExistCommonWrapped(IZ)V

    .line 1390
    return-void
.end method

.method public captionNotifyLangNumSetEnable(IB)V
    .locals 0
    .param p1, "aIndex"    # I
    .param p2, "aLangNum"    # B

    .prologue
    .line 1270
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->captionNotifyLangNumSetEnableCommonWrapped(IB)V

    .line 1274
    return-void
.end method

.method public captionNotifyNothingFixedTime(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1298
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->captionNotifyNothingFixedTimeCommonWrapped(I)V

    .line 1302
    return-void
.end method

.method public captionNotifyRecv(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1354
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->captionNotifyRecvCommonWrapped(I)V

    .line 1358
    return-void
.end method

.method public captionNotifyRestart(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1326
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->captionNotifyRestartCommonWrapped(I)V

    .line 1330
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->endCommonWrapped()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

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

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    throw v1
.end method

.method public getAudioInfo()I
    .locals 2

    .prologue
    .line 585
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getAudioInfo()I

    move-result v0

    .line 589
    .local v0, "result":I
    return v0
.end method

.method public getAudioLanguageNum()I
    .locals 1

    .prologue
    .line 947
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getComponentInfoCommonWrapped()I

    move-result v0

    .line 951
    .local v0, "result":I
    return v0
.end method

.method public getCnValue()I
    .locals 1

    .prologue
    .line 1480
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->getCnValueCommonWrapped()I

    move-result v0

    .line 1484
    .local v0, "cnvalue":I
    return v0
.end method

.method public getLanguageCount(I)I
    .locals 1
    .param p1, "aType"    # I

    .prologue
    .line 660
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->getLanguageCountCommonWrapped(I)I

    move-result v0

    .line 664
    .local v0, "result":I
    return v0
.end method

.method public getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    .locals 2

    .prologue
    .line 501
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    move-result-object v0

    .line 505
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    return-object v0
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 0
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 1428
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->notifyBroadcastActionCommonWrapped(Landroid/content/Intent;)V

    .line 1432
    return-void
.end method

.method public onAudioInformation(I)V
    .locals 0
    .param p1, "aAudioInfo"    # I

    .prologue
    .line 1185
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->onAudioInformationCommonWrapped(I)V

    .line 1189
    return-void
.end method

.method public onChangeAntennaLevel(I)V
    .locals 1
    .param p1, "aAntennaLevel"    # I

    .prologue
    .line 974
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->onChangeAntennaLevelCommonWrapped(IZ)V

    .line 978
    return-void
.end method

.method public onChangeAudioComponent(S)V
    .locals 0
    .param p1, "aComponentTag"    # S

    .prologue
    .line 1211
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->onChangeAudioComponentCommonWrapped(S)V

    .line 1215
    return-void
.end method

.method public onCompleteStartSt(III)V
    .locals 22
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I

    .prologue
    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v15

    .line 210
    .local v15, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    iget-object v12, v15, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mSelectChannelInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    .line 214
    .local v12, "selectchannelinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getSelectChannelUserParam()I

    move-result v18

    .line 217
    .local v18, "userparam":I
    move/from16 v0, p3

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 218
    const-string v19, "aUserParam error"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    :goto_0
    return-void

    .line 223
    :cond_0
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setSelectChannelUserParam(I)V

    .line 225
    const/4 v5, 0x1

    .line 229
    .local v5, "errorflag":Z
    const/16 v19, -0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 232
    const/16 p2, 0x8

    .line 234
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setServiceContractStatus(I)V

    .line 236
    sget-object v19, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :goto_1
    if-nez v5, :cond_1

    .line 330
    const/16 v19, 0x0

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getTuneType()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->asyncCallReservationConclusion(ZI)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->getInnerViewStatus()I

    move-result v19

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->checkViewStatus(I)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 336
    sget-object v19, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->WATCHING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 343
    :goto_2
    const/16 p2, 0x8

    .line 345
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->convertServiceNgStatus(I)I

    move-result v11

    .line 346
    .local v11, "result":I
    move/from16 v17, p3

    .line 347
    .local v17, "uparam":I
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->getMainHandler()Landroid/os/Handler;

    move-result-object v19

    new-instance v20, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v11, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;II)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    invoke-virtual {v15, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    goto :goto_0

    .line 239
    .end local v11    # "result":I
    .end local v17    # "uparam":I
    :cond_2
    const/16 v19, 0x8

    move/from16 v0, p2

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 240
    const/16 v19, 0x3

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setServiceNgStatus(I)V

    .line 243
    :cond_3
    const/16 v19, 0x1

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getTuneType()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 245
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->callReservationTimer(I)V

    .line 249
    :cond_4
    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getExecuteStartCaptionFlag()Z

    move-result v7

    .line 251
    .local v7, "executeflag":Z
    if-eqz v7, :cond_5

    .line 253
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setExecuteStartCaptionFlag(Z)V

    .line 256
    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getDrawSettingSubtitle()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    move-result-object v13

    .line 258
    .local v13, "settingsubtitle":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getDrawSettingSuperimpose()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    move-result-object v14

    .line 262
    .local v14, "settingsuperimpose":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 268
    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getCaptionStarterFlag()Z

    move-result v3

    .line 271
    .local v3, "captiondisplay":Z
    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getSuperimposeStarterFlag()Z

    move-result v16

    .line 274
    .local v16, "superimposedisplay":Z
    const/16 v19, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setState(IZ)V

    .line 275
    const/16 v19, 0x38

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setState(IZ)V

    .line 279
    .end local v3    # "captiondisplay":Z
    .end local v13    # "settingsubtitle":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    .end local v14    # "settingsuperimpose":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    .end local v16    # "superimposedisplay":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->getParetalSettingRate()I

    move-result v10

    .line 281
    .local v10, "parentalrate":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->checkParentalRate(I)Z

    move-result v4

    .line 283
    .local v4, "checkparental":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setServiceParentalStatus(Z)V

    .line 286
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setServiceContractStatus(I)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->getInnerViewStatus()I

    move-result v9

    .line 292
    .local v9, "innersts":I
    if-nez v9, :cond_7

    .line 294
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->onChangeViewingStatusProcess(I)V

    .line 296
    sget-object v19, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->WATCHING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 302
    .end local v4    # "checkparental":Z
    .end local v7    # "executeflag":Z
    .end local v9    # "innersts":I
    .end local v10    # "parentalrate":I
    :catch_0
    move-exception v6

    .line 307
    .local v6, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const/4 v5, 0x0

    .line 309
    :try_start_2
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v8

    .line 310
    .local v8, "innererror":I
    const/16 v19, -0x12

    move/from16 v0, v19

    if-ne v0, v8, :cond_a

    .line 314
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    .end local v6    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v8    # "innererror":I
    :catchall_0
    move-exception v19

    if-nez v5, :cond_6

    .line 330
    const/16 v20, 0x0

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getTuneType()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->asyncCallReservationConclusion(ZI)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->getInnerViewStatus()I

    move-result v20

    if-nez v20, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->checkViewStatus(I)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 336
    sget-object v20, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->WATCHING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 343
    :goto_3
    const/16 p2, 0x8

    .line 345
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->convertServiceNgStatus(I)I

    move-result v11

    .line 346
    .restart local v11    # "result":I
    move/from16 v17, p3

    .line 347
    .restart local v17    # "uparam":I
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->getMainHandler()Landroid/os/Handler;

    move-result-object v20

    new-instance v21, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v11, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;II)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    invoke-virtual {v15, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    .line 359
    throw v19

    .line 299
    .end local v11    # "result":I
    .end local v17    # "uparam":I
    .restart local v4    # "checkparental":Z
    .restart local v7    # "executeflag":Z
    .restart local v9    # "innersts":I
    .restart local v10    # "parentalrate":I
    :cond_7
    :try_start_3
    sget-object v19, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 323
    .end local v4    # "checkparental":Z
    .end local v7    # "executeflag":Z
    .end local v9    # "innersts":I
    .end local v10    # "parentalrate":I
    :catch_1
    move-exception v6

    .line 324
    .local v6, "exception":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 326
    :try_start_4
    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 328
    if-nez v5, :cond_8

    .line 330
    const/16 v19, 0x0

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getTuneType()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->asyncCallReservationConclusion(ZI)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->getInnerViewStatus()I

    move-result v19

    if-nez v19, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->checkViewStatus(I)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 336
    sget-object v19, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->WATCHING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 343
    :goto_4
    const/16 p2, 0x8

    .line 345
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->convertServiceNgStatus(I)I

    move-result v11

    .line 346
    .restart local v11    # "result":I
    move/from16 v17, p3

    .line 347
    .restart local v17    # "uparam":I
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->getMainHandler()Landroid/os/Handler;

    move-result-object v19

    new-instance v20, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v11, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;II)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    invoke-virtual {v15, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    goto/16 :goto_0

    .line 339
    .end local v6    # "exception":Ljava/lang/Exception;
    .end local v11    # "result":I
    .end local v17    # "uparam":I
    :cond_9
    sget-object v19, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    goto/16 :goto_2

    .line 315
    .local v6, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .restart local v8    # "innererror":I
    :cond_a
    const/16 v19, -0x16

    move/from16 v0, v19

    if-ne v0, v8, :cond_b

    .line 319
    :try_start_5
    throw v6

    .line 320
    :cond_b
    const/16 v19, -0x15

    move/from16 v0, v19

    if-ne v0, v8, :cond_c

    .line 321
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 328
    :cond_c
    if-nez v5, :cond_d

    .line 330
    const/16 v19, 0x0

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getTuneType()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->asyncCallReservationConclusion(ZI)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->getInnerViewStatus()I

    move-result v19

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->checkViewStatus(I)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 336
    sget-object v19, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->WATCHING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 343
    :goto_5
    const/16 p2, 0x8

    .line 345
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->convertServiceNgStatus(I)I

    move-result v11

    .line 346
    .restart local v11    # "result":I
    move/from16 v17, p3

    .line 347
    .restart local v17    # "uparam":I
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->getMainHandler()Landroid/os/Handler;

    move-result-object v19

    new-instance v20, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v11, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;II)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    invoke-virtual {v15, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    goto/16 :goto_0

    .line 339
    .end local v11    # "result":I
    .end local v17    # "uparam":I
    :cond_e
    sget-object v19, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    goto :goto_5

    .end local v8    # "innererror":I
    .local v6, "exception":Ljava/lang/Exception;
    :cond_f
    sget-object v19, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    goto/16 :goto_4

    .end local v6    # "exception":Ljava/lang/Exception;
    :cond_10
    sget-object v20, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    goto/16 :goto_3
.end method

.method public onNotifyServiceNg(I)V
    .locals 2
    .param p1, "aCause"    # I

    .prologue
    .line 388
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setServiceNgStatus(I)V

    .line 391
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->onNotifyServiceNgCommonWrapped(IIZ)V

    .line 396
    return-void
.end method

.method public onUpdateBit()V
    .locals 0

    .prologue
    .line 1049
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->onUpdateBitCommonWrapped()V

    .line 1053
    return-void
.end method

.method public onUpdateEit()V
    .locals 0

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->onUpdateEitCommonWrapped()V

    .line 1078
    return-void
.end method

.method public onUpdateEmm()V
    .locals 0

    .prologue
    .line 1124
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->onUpdateEmmCommonWrapped()V

    .line 1128
    return-void
.end method

.method public onUpdateNit()V
    .locals 0

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->onUpdateNitCommonWrapped()V

    .line 1028
    return-void
.end method

.method public onUpdatePmt()V
    .locals 2

    .prologue
    .line 999
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->onUpdatePmtCommonWrapped(ZZ)V

    .line 1003
    return-void
.end method

.method public onUpdateSdt()V
    .locals 0

    .prologue
    .line 1099
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->onUpdateSdtCommonWrapped()V

    .line 1103
    return-void
.end method

.method public onVideoInformation(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V
    .locals 0
    .param p1, "aPicWidth"    # I
    .param p2, "aPicHeight"    # I
    .param p3, "aAspect"    # I
    .param p4, "aViewInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;

    .prologue
    .line 1155
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->onVideoInformationCommonWrapped(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V

    .line 1159
    return-void
.end method

.method public pause(IIZ)V
    .locals 1
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 885
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->pauseCommonWrapped(IIZZ)V

    .line 889
    return-void
.end method

.method protected pauseInner(IIZ)V
    .locals 1
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 922
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->pauseInnerCommonWrapped(IIZZ)V

    .line 926
    return-void
.end method

.method public preTune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;I)V
    .locals 0
    .param p1, "aServiceId"    # I
    .param p2, "aMode"    # I
    .param p3, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .param p4, "aUserParam"    # I

    .prologue
    .line 135
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->preTuneCommonWrapped(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;I)V

    .line 139
    return-void
.end method

.method public setAudioLanguageValue(I)V
    .locals 0
    .param p1, "aLanguage"    # I

    .prologue
    .line 1236
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setAudioLanguageValueCommonWrapped(I)V

    .line 1240
    return-void
.end method

.method public setBmlState(Z)V
    .locals 0
    .param p1, "aState"    # Z

    .prologue
    .line 1456
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setBmlStateCommonWrapped(Z)V

    .line 1460
    return-void
.end method

.method public setCaptionDisplayAreaInfo(IIII)V
    .locals 1
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 787
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setCaptionDisplayAreaInfo(IIII)V

    .line 791
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setCaptionDisplayArea(I)V

    .line 796
    return-void
.end method

.method public setCaptionSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "aCaptionSurface"    # Landroid/view/Surface;

    .prologue
    .line 755
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setCaptionSurface(Landroid/view/Surface;)V

    .line 758
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setCaptionDisplayArea(I)V

    .line 763
    return-void
.end method

.method public setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    .locals 0
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    .line 734
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setDisplayAreaCommonWrapped(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 738
    return-void
.end method

.method public setLanguageIndex(II)V
    .locals 0
    .param p1, "aType"    # I
    .param p2, "aLang"    # I

    .prologue
    .line 700
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setLanguageIndexCommonWrapped(II)V

    .line 704
    return-void
.end method

.method public setState(IZ)V
    .locals 0
    .param p1, "aType"    # I
    .param p2, "aState"    # Z

    .prologue
    .line 624
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setStateCommonWrapped(IZ)V

    .line 628
    return-void
.end method

.method public setSuperimposeDisplayAreaInfo(IIII)V
    .locals 1
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 843
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setSuperimposeDisplayAreaInfo(IIII)V

    .line 846
    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setCaptionDisplayArea(I)V

    .line 851
    return-void
.end method

.method public setSuperimposeSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "aSuperimposeSurface"    # Landroid/view/Surface;

    .prologue
    .line 813
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setSuperimposeSurface(Landroid/view/Surface;)V

    .line 816
    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setCaptionDisplayArea(I)V

    .line 821
    return-void
.end method

.method public setVideoDisplay(I)V
    .locals 1
    .param p1, "aRotateDegrees"    # I

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setVideoDisplay(I)V

    .line 1413
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
    .line 178
    invoke-virtual/range {p0 .. p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->tuneCommonWrapped(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method public videoDecode(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setVideoDecodeStatus(I)V

    .line 423
    return-void
.end method

.method protected videoDecodeInner(I)V
    .locals 2
    .param p1, "aState"    # I

    .prologue
    .line 444
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    return-void
.end method

.method public videoMute(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 470
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInTuningRecoverySv;->setVideoMuteStatus(I)V

    .line 474
    return-void
.end method
