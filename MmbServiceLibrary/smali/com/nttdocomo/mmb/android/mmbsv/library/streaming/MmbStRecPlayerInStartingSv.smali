.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;
.source "MmbStRecPlayerInStartingSv.java"


# instance fields
.field private playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;


# direct methods
.method protected constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V
    .locals 0
    .param p1, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;
    .param p2, "aPlayerFunc"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;
    .param p3, "aStreamingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .param p4, "aExIfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;
    .param p5, "aRecPlayingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    .prologue
    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    .line 64
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 68
    return-void
.end method


# virtual methods
.method public audioDecode(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->setAudioDecodeStatus(I)V

    .line 368
    return-void
.end method

.method public audioMute(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->setAudioMuteStatus(I)V

    .line 391
    return-void
.end method

.method public getAudioLanguage()I
    .locals 2

    .prologue
    .line 527
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public onCompleteStartPlay(III)V
    .locals 19
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I

    .prologue
    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v14

    .line 126
    .local v14, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getStartViewUserParam()I

    move-result v16

    .line 129
    .local v16, "userparam":I
    move/from16 v0, p3

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 130
    const-string v17, "aUserParam Error"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    :goto_0
    return-void

    .line 135
    :cond_0
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setStartViewUserParam(I)V

    .line 138
    if-eqz p1, :cond_1

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->stopPlay()V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v17

    new-instance v18, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv$1;

    invoke-direct/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 159
    :cond_1
    const/4 v6, 0x1

    .line 161
    .local v6, "errorflag":Z
    const/16 v17, 0x100

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_3

    .line 163
    const/16 p2, 0x100

    .line 165
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->setServiceContractStatus(I)V

    .line 167
    sget-object v17, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_REJECTVIEWING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :goto_1
    if-nez v6, :cond_2

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->pausePlayInner()I

    .line 255
    sget-object v17, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_REJECTVIEWING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 257
    const/16 p2, 0x100

    .line 261
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->notifyOnCompleteStartPlay(II)V

    goto :goto_0

    .line 170
    :cond_3
    const/16 p2, 0x1

    .line 172
    :try_start_1
    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getExecuteStartCaptionFlag()Z

    move-result v8

    .line 174
    .local v8, "executeflag":Z
    if-eqz v8, :cond_4

    .line 176
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setExecuteStartCaptionFlag(Z)V

    .line 179
    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getDrawSettingSubtitle()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    move-result-object v15

    .line 183
    .local v15, "settingsubtitle":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 186
    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getCaptionStarterFlag()Z

    move-result v4

    .line 189
    .local v4, "captiondisplay":Z
    const/16 v17, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->setState(IZ)V

    .line 193
    .end local v4    # "captiondisplay":Z
    .end local v15    # "settingsubtitle":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->isPmtInformation()Z

    move-result v13

    .line 194
    .local v13, "pmtexist":Z
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v0, v13, :cond_6

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->getParetalSettingRate()I

    move-result v12

    .line 198
    .local v12, "parentalrate":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->checkParentalRate(I)Z

    move-result v5

    .line 201
    .local v5, "checkparental":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->setServiceParentalStatus(Z)V

    .line 204
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->setServiceContractStatus(I)V

    .line 206
    if-nez v5, :cond_5

    .line 207
    const/16 p2, 0x2

    .line 211
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->getInnerViewStatus()I

    move-result v9

    .line 213
    .local v9, "innersts":I
    if-nez v9, :cond_6

    .line 215
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->onChangeViewingStatusProcess(I)V

    .line 219
    .end local v5    # "checkparental":Z
    .end local v9    # "innersts":I
    .end local v12    # "parentalrate":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getCurrentTime()J

    move-result-wide v10

    .line 220
    .local v10, "lMsec":J
    invoke-virtual {v14, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setPosition(J)V

    .line 222
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->controlThread(Z)V

    .line 224
    sget-object v17, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_PLAYING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 226
    .end local v8    # "executeflag":Z
    .end local v10    # "lMsec":J
    .end local v13    # "pmtexist":Z
    :catch_0
    move-exception v7

    .line 230
    .local v7, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const/4 v6, 0x0

    .line 232
    const/16 v17, -0x12

    :try_start_2
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 236
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    .end local v7    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catchall_0
    move-exception v17

    if-nez v6, :cond_7

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->pausePlayInner()I

    .line 255
    sget-object v18, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_REJECTVIEWING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 257
    const/16 p2, 0x100

    .line 261
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->notifyOnCompleteStartPlay(II)V

    throw v17

    .line 237
    .restart local v7    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :cond_8
    const/16 v17, -0x16

    :try_start_3
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 242
    throw v7

    .line 243
    :cond_9
    const/16 v17, -0x15

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 245
    const-string v17, "St restart"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 252
    :cond_a
    if-nez v6, :cond_b

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->pausePlayInner()I

    .line 255
    sget-object v17, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_REJECTVIEWING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 257
    const/16 p2, 0x100

    .line 261
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->notifyOnCompleteStartPlay(II)V

    goto/16 :goto_0

    .line 248
    .end local v7    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v7

    .line 249
    .local v7, "exception":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 250
    :try_start_4
    new-instance v17, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v18, -0x12

    invoke-direct/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public onUpdatePmt()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->onUpdatePmtCommonWrapped(ZZ)V

    .line 91
    return-void
.end method

.method public selectAudioLanguage(I)V
    .locals 4
    .param p1, "aComponentTag"    # I

    .prologue
    .line 486
    const-string v0, "state error ComponentTag(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public selectAudioMode(I)V
    .locals 4
    .param p1, "aMode"    # I

    .prologue
    .line 465
    const-string v0, "state error : AudioMode(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public setAudioLanguageValue(I)V
    .locals 2
    .param p1, "aLanguage"    # I

    .prologue
    .line 508
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public setBmlState(Z)V
    .locals 0
    .param p1, "aState"    # Z

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->setBmlStateCommonWrapped(Z)V

    .line 443
    return-void
.end method

.method public setVideoDisplay(I)V
    .locals 2
    .param p1, "aRotateDegrees"    # I

    .prologue
    .line 410
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public stopPlay()V
    .locals 7

    .prologue
    const/16 v6, -0x12

    .line 549
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->stopLibraryForRecPlay()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->initializeDrawSettingData()V

    .line 565
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->setAudioLanguageValueCommonWrapped(I)V

    .line 568
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->deleteBmlBrowserCommonWrapped()V

    .line 570
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->stopPlay()I

    move-result v2

    .line 571
    .local v2, "lRet":I
    if-eqz v2, :cond_0

    .line 572
    const-string v3, "stopPlay error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->controlThread(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    const v3, 0x8a1c

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {p0, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->clearApplicationStatus(IIZ)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 591
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->resetRecPlayingInformationParameter()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 594
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 599
    return-void

    .line 550
    .end local v2    # "lRet":I
    :catch_0
    move-exception v0

    .line 551
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :try_start_4
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    .line 552
    .local v1, "exceptionDeteil":I
    if-ne v1, v6, :cond_1

    .line 553
    const-string v3, "stopLibraryForRecPlay fatal error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 594
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v1    # "exceptionDeteil":I
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    throw v3

    .line 554
    .restart local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .restart local v1    # "exceptionDeteil":I
    :cond_1
    const/16 v3, -0x16

    if-ne v1, v3, :cond_2

    .line 555
    :try_start_5
    const-string v3, "stopLibraryForRecPlay fatal error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 557
    :cond_2
    const-string v3, "stopLibraryForRecPlay unknow fatal error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 579
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v1    # "exceptionDeteil":I
    .restart local v2    # "lRet":I
    :catch_1
    move-exception v0

    .line 580
    .restart local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    .line 581
    .restart local v1    # "exceptionDeteil":I
    const/4 v3, -0x3

    if-ne v1, v3, :cond_3

    .line 582
    const-string v3, "setApplicationStatus parameter error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 583
    :cond_3
    if-ne v1, v6, :cond_4

    .line 584
    const-string v3, "setApplicationStatus fatal error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 586
    :cond_4
    const-string v3, "setApplicationStatus unknow fatal error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public videoDecode(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->setVideoDecodeStatus(I)V

    .line 293
    return-void
.end method

.method protected videoDecodeInner(I)V
    .locals 2
    .param p1, "aState"    # I

    .prologue
    .line 312
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    return-void
.end method

.method public videoMute(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInStartingSv;->setVideoMuteStatus(I)V

    .line 343
    return-void
.end method
