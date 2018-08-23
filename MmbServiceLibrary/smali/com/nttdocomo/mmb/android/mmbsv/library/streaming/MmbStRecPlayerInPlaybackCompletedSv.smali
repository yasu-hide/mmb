.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;
.source "MmbStRecPlayerInPlaybackCompletedSv.java"


# instance fields
.field private mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

.field private playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;


# direct methods
.method protected constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V
    .locals 0
    .param p1, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;
    .param p2, "aPlayerFunc"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;
    .param p3, "aStreamingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .param p4, "aExIfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;
    .param p5, "recPlayingInfoInstance"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    .prologue
    .line 63
    invoke-direct/range {p0 .. p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    .line 67
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 68
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    .line 72
    return-void
.end method


# virtual methods
.method public onUpdatePmt()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 219
    invoke-virtual {p0, v0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->onUpdatePmtCommonWrapped(ZZ)V

    .line 224
    return-void
.end method

.method public pausePlay()I
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_SUSPENDING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public resumePlay()I
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v1

    .line 126
    .local v1, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getVideoStatus()I

    move-result v2

    .line 127
    .local v2, "videoDecodetSatus":I
    and-int/lit8 v2, v2, 0x1

    .line 128
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->isPmtInformation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDecode()V

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->resume()I

    move-result v0

    .line 135
    .local v0, "lRet":I
    if-nez v0, :cond_1

    .line 136
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->captionSetPlayPositionChange()I

    move-result v0

    .line 139
    :cond_1
    if-nez v0, :cond_2

    .line 140
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->controlThread(Z)V

    .line 142
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_PLAYING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 147
    :cond_2
    return v0
.end method

.method public rewindPlay()I
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->rewindPlay()I

    move-result v0

    .line 192
    .local v0, "lRet":I
    if-nez v0, :cond_0

    .line 193
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->controlThread(Z)V

    .line 195
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_REWINDING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 201
    :cond_0
    return v0
.end method

.method public seek(JI)I
    .locals 3
    .param p1, "aMsec"    # J
    .param p3, "aUserParam"    # I

    .prologue
    .line 97
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_SUSPENDING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 99
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->seek(JI)I

    move-result v0

    .line 104
    .local v0, "lRet":I
    return v0
.end method

.method public setCaptionSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "aCaptionSurface"    # Landroid/view/Surface;

    .prologue
    .line 277
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setCaptionSurface(Landroid/view/Surface;)V

    .line 280
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->setCaptionDisplayArea(I)V

    .line 285
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "aVideoSurface"    # Landroid/view/Surface;

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setVideoSurface(Landroid/view/Surface;)V

    .line 244
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->getVideoStatus()I

    move-result v0

    .line 245
    .local v0, "videoDecodetSatus":I
    and-int/lit8 v0, v0, 0x1

    .line 247
    if-nez v0, :cond_0

    .line 248
    if-eqz p1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDisplayControl(I)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlaybackCompletedSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDisplayControl(I)V

    goto :goto_0
.end method
