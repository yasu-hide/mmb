.class abstract Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;
.super Ljava/lang/Object;
.source "MmbStPlayerBaseSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInnerSv;
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;
.implements Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;
.implements Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;
.implements Lmmb/android/MmbStBmlMw/MmbStBmlMwCtrlListener;


# instance fields
.field private final mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

.field private recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

.field private streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;


# direct methods
.method protected constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V
    .locals 0
    .param p1, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;
    .param p2, "aStreamingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .param p3, "aRecPlayingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    .line 110
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    .line 111
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    .line 115
    return-void
.end method


# virtual methods
.method public audioDecode(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 816
    return-void
.end method

.method public audioMute(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 837
    return-void
.end method

.method public cancelScan()V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method public captionNotifyExist(IZ)V
    .locals 0
    .param p1, "aIndex"    # I
    .param p2, "aIsExist"    # Z

    .prologue
    .line 1712
    return-void
.end method

.method public captionNotifyLangNumSetEnable(IB)V
    .locals 0
    .param p1, "aIndex"    # I
    .param p2, "aLangNum"    # B

    .prologue
    .line 1594
    return-void
.end method

.method public captionNotifyNothingFixedTime(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1638
    return-void
.end method

.method public captionNotifyRecv(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1684
    return-void
.end method

.method public captionNotifyRestart(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1661
    return-void
.end method

.method public final clearNvram()V
    .locals 1

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->clearNvram()V

    .line 2523
    return-void
.end method

.method protected controlThread(Z)V
    .locals 2
    .param p1, "aStart"    # Z

    .prologue
    .line 3950
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public deleteBmlBrowser()V
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlBrowserController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->deleteBmlBrowser()V

    .line 1963
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->deleteBmlBrowser()V

    .line 1967
    return-void
.end method

.method public end()V
    .locals 0

    .prologue
    .line 526
    return-void
.end method

.method public fastForwardPlay()I
    .locals 2

    .prologue
    .line 3890
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected getActivityListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;
    .locals 2

    .prologue
    .line 254
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getActivityListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

    move-result-object v0

    .line 258
    .local v0, "activityListener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;
    return-object v0
.end method

.method protected getActivityRecListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;
    .locals 2

    .prologue
    .line 3928
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getActivityRecListener()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;

    move-result-object v0

    .line 3932
    .local v0, "activityListener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;
    return-object v0
.end method

.method public getAudioInfo()I
    .locals 1

    .prologue
    .line 861
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioLanguage()I
    .locals 1

    .prologue
    .line 1614
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioLanguageNum()I
    .locals 1

    .prologue
    .line 1185
    const/4 v0, 0x0

    return v0
.end method

.method protected getBmlState()Z
    .locals 1

    .prologue
    .line 1921
    const/4 v0, 0x0

    return v0
.end method

.method public getBmlView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
    .locals 1

    .prologue
    .line 3614
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCaptionState()Z
    .locals 1

    .prologue
    .line 1864
    const/4 v0, 0x0

    return v0
.end method

.method public getCaptionView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;
    .locals 1

    .prologue
    .line 3574
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCnValue()I
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPlayPosition()J
    .locals 2

    .prologue
    .line 3784
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    .line 180
    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    return-object v0
.end method

.method public getFileDuration()J
    .locals 2

    .prologue
    .line 3803
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public getLanguageCount(I)I
    .locals 1
    .param p1, "aType"    # I

    .prologue
    .line 975
    const/4 v0, 0x0

    return v0
.end method

.method protected getMainHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 3289
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3293
    .local v0, "mainHandler":Landroid/os/Handler;
    return-object v0
.end method

.method protected getMetadata()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getMetadata()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;

    move-result-object v0

    .line 158
    .local v0, "metadata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;
    return-object v0
.end method

.method public getParentView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;
    .locals 1

    .prologue
    .line 3534
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPauseResumeData()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;
    .locals 2

    .prologue
    .line 3310
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getPauseResumeData()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;

    move-result-object v0

    .line 3314
    .local v0, "pauseResumeData":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;
    return-object v0
.end method

.method protected getPreference()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getPreference()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    move-result-object v0

    .line 136
    .local v0, "preference":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    return-object v0
.end method

.method public getProgramInformation(I)Ljava/util/List;
    .locals 1
    .param p1, "aCondition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1163
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->recPlayingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    return-object v0
.end method

.method protected getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v0

    .line 202
    .local v0, "servicecontext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    return-object v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 659
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getStatus()I

    move-result v0

    .line 663
    .local v0, "status":I
    return v0
.end method

.method protected getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    return-object v0
.end method

.method protected getSuperimposeAutoDisplay()Z
    .locals 1

    .prologue
    .line 1902
    const/4 v0, 0x0

    return v0
.end method

.method protected getSuperimposeState()Z
    .locals 1

    .prologue
    .line 1883
    const/4 v0, 0x0

    return v0
.end method

.method public getSuperimposeView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;
    .locals 1

    .prologue
    .line 3594
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTvLink()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2399
    const/4 v0, 0x0

    .line 2400
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->getTvLink()Ljava/util/List;

    move-result-object v0

    .line 2405
    return-object v0
.end method

.method public getTvView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;
    .locals 1

    .prologue
    .line 3554
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    return-object v0
.end method

.method public initializeBmlBrowser()V
    .locals 2

    .prologue
    .line 1940
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlTouchControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    move-result-object v0

    .line 1942
    .local v0, "aTouchControl":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlBrowserController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->initializeBmlBrowser(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;)V

    .line 1943
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->initializeBmlBrowser()V

    .line 1947
    return-void
.end method

.method public isResumeInfoExist(I)Z
    .locals 2
    .param p1, "aPrgNo"    # I

    .prologue
    .line 3704
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public judgmentReservationReschedule(I)V
    .locals 0
    .param p1, "aUserParam"    # I

    .prologue
    .line 3273
    return-void
.end method

.method protected notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 0
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 3385
    return-void
.end method

.method public notifyChangeLayoutEnd()V
    .locals 0

    .prologue
    .line 3515
    return-void
.end method

.method public notifyChangeLayoutStart(I)V
    .locals 0
    .param p1, "aUserParam"    # I

    .prologue
    .line 3496
    return-void
.end method

.method public final notifyKey(II)V
    .locals 1
    .param p1, "aKeyCode"    # I
    .param p2, "aKeyEvent"    # I

    .prologue
    .line 2548
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->notifyKey(II)V

    .line 2552
    return-void
.end method

.method public notifyOnCreate(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 0
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 344
    return-void
.end method

.method public notifyOnDestroy(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 0
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 362
    return-void
.end method

.method public notifyOnLoad()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getPreference()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setPreference(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;)V

    .line 295
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getMetadataManager()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setMetadata(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;)V

    .line 296
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getInternalFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setFacade(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;)V

    .line 297
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setServiceContext(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 299
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->notifyOnLoad()V

    .line 303
    return-void
.end method

.method public notifyOnUnload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setPreference(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;)V

    .line 319
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setMetadata(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;)V

    .line 320
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setFacade(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;)V

    .line 321
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->streamingInfoInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setServiceContext(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 322
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->notifyOnUnload()V

    .line 326
    return-void
.end method

.method public onAudioInformation(I)V
    .locals 0
    .param p1, "aAudioInfo"    # I

    .prologue
    .line 1545
    return-void
.end method

.method public final onBrowserReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;

    .prologue
    .line 2791
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onBrowserReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;)V

    .line 2795
    return-void
.end method

.method public final onCallReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onCallReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;)V

    .line 2751
    return-void
.end method

.method public onChangeAntennaLevel(I)V
    .locals 0
    .param p1, "aAntennaLevel"    # I

    .prologue
    .line 1297
    return-void
.end method

.method public onChangeAudioComponent(S)V
    .locals 0
    .param p1, "aComponentTag"    # S

    .prologue
    .line 1566
    return-void
.end method

.method public final onChangeDispReply(Z)V
    .locals 0
    .param p1, "aResult"    # Z

    .prologue
    .line 3149
    return-void
.end method

.method public onChangeViewingStatus(I)V
    .locals 0
    .param p1, "aViewingStatus"    # I

    .prologue
    .line 1277
    return-void
.end method

.method public final onCheckStorageStatusReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;

    .prologue
    .line 2857
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onCheckStorageStatusReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;)V

    .line 2861
    return-void
.end method

.method public final onCloseReq()V
    .locals 1

    .prologue
    .line 2596
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlBrowserController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->onCloseReq()V

    .line 2600
    return-void
.end method

.method public onCompleteScan(II)V
    .locals 0
    .param p1, "aResult"    # I
    .param p2, "aUserParam"    # I

    .prologue
    .line 1208
    return-void
.end method

.method public onCompleteSelectCh(III)V
    .locals 0
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I

    .prologue
    .line 1256
    return-void
.end method

.method public onCompleteStartPlay(III)V
    .locals 0
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I

    .prologue
    .line 1744
    return-void
.end method

.method public onCompleteStartSt(III)V
    .locals 0
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I

    .prologue
    .line 1232
    return-void
.end method

.method public final onDispIcon(Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onDispIcon(Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;)V

    .line 3256
    return-void
.end method

.method public final onEndFepReq()V
    .locals 1

    .prologue
    .line 3230
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onEndFepReq()V

    .line 3234
    return-void
.end method

.method public onEnter()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public final onEpgTuneReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;

    .prologue
    .line 2946
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onEpgTuneReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;)V

    .line 2950
    return-void
.end method

.method public onFastForwardToEnd(I)V
    .locals 0
    .param p1, "aResult"    # I

    .prologue
    .line 1794
    return-void
.end method

.method public onFinishReleaseResource(I)V
    .locals 0
    .param p1, "aErrorCode"    # I

    .prologue
    .line 3458
    return-void
.end method

.method public final onGetGpsReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onGetGpsReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;)V

    .line 2817
    return-void
.end method

.method public final onHttpCancelReq()V
    .locals 1

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onHttpCancelReq()V

    .line 2685
    return-void
.end method

.method public final onHttpStartReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    .prologue
    .line 2660
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onHttpStartReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;)V

    .line 2664
    return-void
.end method

.method public final onIsContentsStoredReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;

    .prologue
    .line 2924
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onIsContentsStoredReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;)V

    .line 2928
    return-void
.end method

.method public final onLaunchContentReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onLaunchContentReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;)V

    .line 2839
    return-void
.end method

.method public onLeave()V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public final onMailSendReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onMailSendReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;)V

    .line 2707
    return-void
.end method

.method public onNotifyError(I)V
    .locals 0
    .param p1, "aErrorCode"    # I

    .prologue
    .line 1477
    return-void
.end method

.method public onNotifyServiceNg(I)V
    .locals 0
    .param p1, "aCause"    # I

    .prologue
    .line 1317
    return-void
.end method

.method public final onNvramReadReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onNvramReadReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;)V

    .line 2642
    return-void
.end method

.method public final onNvramWriteReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;

    .prologue
    .line 2616
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onNvramWriteReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;)V

    .line 2620
    return-void
.end method

.method public final onPasswordReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onPasswordReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;)V

    .line 3126
    return-void
.end method

.method public final onPermissionReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;

    .prologue
    .line 3100
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onPermissionReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;)V

    .line 3104
    return-void
.end method

.method public final onPhoneBookReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onPhoneBookReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;)V

    .line 2729
    return-void
.end method

.method public final onPictureSaveComplete(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onPictureSaveComplete(Z)V

    .line 3037
    return-void
.end method

.method public final onPictureSaveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;

    .prologue
    .line 3010
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onPictureSaveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;)V

    .line 3014
    return-void
.end method

.method public onPlayToEnd(I)V
    .locals 0
    .param p1, "aResult"    # I

    .prologue
    .line 1769
    return-void
.end method

.method public final onRenderSizeUpdateReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;)V
    .locals 0
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwRenderSizeUpdateReqInfo;

    .prologue
    .line 3170
    return-void
.end method

.method public onRewindToTop(I)V
    .locals 0
    .param p1, "aResult"    # I

    .prologue
    .line 1819
    return-void
.end method

.method public final onScheduleReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;

    .prologue
    .line 2769
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onScheduleReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;)V

    .line 2773
    return-void
.end method

.method public final onScrollReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;)V
    .locals 0
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwScrollReqInfo;

    .prologue
    .line 3191
    return-void
.end method

.method public final onStartFepReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;

    .prologue
    .line 3209
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onStartFepReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;)V

    .line 3213
    return-void
.end method

.method public final onStartFullDispReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    .prologue
    .line 2968
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onStartFullDispReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)V

    .line 2972
    return-void
.end method

.method public final onStartReply(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlBrowserController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->onStartReply(Z)Z

    .line 2580
    return-void
.end method

.method public final onStopFullDispReq()V
    .locals 1

    .prologue
    .line 2988
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onStopFullDispReq()V

    .line 2992
    return-void
.end method

.method public final onStoreCancelReserveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onStoreCancelReserveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;)V

    .line 2906
    return-void
.end method

.method public final onStoreReserveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;

    .prologue
    .line 2879
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onStoreReserveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;)V

    .line 2883
    return-void
.end method

.method public final onTvLinkEnrolReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;

    .prologue
    .line 3078
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onTvLinkEnrolReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;)V

    .line 3082
    return-void
.end method

.method public final onTvLinkStartReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;)V
    .locals 1
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;

    .prologue
    .line 3056
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->onTvLinkStartReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;)V

    .line 3060
    return-void
.end method

.method public onUpdateBit()V
    .locals 0

    .prologue
    .line 1393
    return-void
.end method

.method public onUpdateEit()V
    .locals 0

    .prologue
    .line 1412
    return-void
.end method

.method public onUpdateEmm()V
    .locals 0

    .prologue
    .line 1450
    return-void
.end method

.method public onUpdateInt()V
    .locals 0

    .prologue
    .line 1374
    return-void
.end method

.method public onUpdateNit()V
    .locals 0

    .prologue
    .line 1355
    return-void
.end method

.method public onUpdatePmt()V
    .locals 0

    .prologue
    .line 1336
    return-void
.end method

.method public onUpdateSdt()V
    .locals 0

    .prologue
    .line 1431
    return-void
.end method

.method public onVideoInformation(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V
    .locals 0
    .param p1, "aPicWidth"    # I
    .param p2, "aPicHeight"    # I
    .param p3, "aAspect"    # I
    .param p4, "aViewinfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;

    .prologue
    .line 1501
    return-void
.end method

.method public pause(IIZ)V
    .locals 0
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 1059
    return-void
.end method

.method protected pauseInner(IIZ)V
    .locals 0
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 1090
    return-void
.end method

.method public pausePlay()I
    .locals 2

    .prologue
    .line 3869
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public preStart(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;I)V
    .locals 0
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    .param p2, "aUserParam"    # I

    .prologue
    .line 435
    return-void
.end method

.method public preTune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;I)V
    .locals 0
    .param p1, "aServiceId"    # I
    .param p2, "aMode"    # I
    .param p3, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .param p4, "aUserParam"    # I

    .prologue
    .line 562
    return-void
.end method

.method public prepPlay(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;)V
    .locals 2
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;

    .prologue
    .line 3640
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public final removeTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    .locals 1
    .param p1, "aLink"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->removeTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V

    .line 2470
    return-void
.end method

.method public final responseAddTvLink(ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    .locals 1
    .param p1, "aResult"    # Z
    .param p2, "aLink"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->responseAddTvLink(ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V

    .line 2440
    return-void
.end method

.method public final responseCancelFilecastingReservation(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->responseCancelFilecastingReservation(Z)V

    .line 2310
    return-void
.end method

.method public final responseFilecastingReservation(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->responseFilecastingReservation(Z)V

    .line 2279
    return-void
.end method

.method public final responsePassword(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "aResult"    # I
    .param p2, "aUserName"    # Ljava/lang/String;
    .param p3, "aPassword"    # Ljava/lang/String;
    .param p4, "aBmlParameter"    # I

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->responsePassword(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2217
    return-void
.end method

.method public final responsePermission(II)V
    .locals 1
    .param p1, "aUserSelect"    # I
    .param p2, "aBmlParameter"    # I

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->responsePermission(II)V

    .line 2173
    return-void
.end method

.method public final responseStartFilecasting(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->responseStartFilecasting(Z)V

    .line 2248
    return-void
.end method

.method public final responseStartInputMethod(ILjava/lang/String;)V
    .locals 1
    .param p1, "aType"    # I
    .param p2, "aText"    # Ljava/lang/String;

    .prologue
    .line 2371
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->responseStartInputMethod(ILjava/lang/String;)V

    .line 2375
    return-void
.end method

.method public final responseStartTvLink(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->responseStartTvLink(Z)V

    .line 2500
    return-void
.end method

.method public final responseTune(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->responseTune(Z)V

    .line 2340
    return-void
.end method

.method public final resumeBmlBrowser(I)V
    .locals 1
    .param p1, "aResumeKind"    # I

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlBrowserController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->resumeBmlBrowser(I)V

    .line 2110
    return-void
.end method

.method public resumePlay()I
    .locals 2

    .prologue
    .line 3826
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public rewindPlay()I
    .locals 2

    .prologue
    .line 3911
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public scan(I)V
    .locals 0
    .param p1, "aUserParam"    # I

    .prologue
    .line 618
    return-void
.end method

.method public seek(JI)I
    .locals 2
    .param p1, "aMsec"    # J
    .param p3, "aUserParam"    # I

    .prologue
    .line 3765
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public selectAudioLanguage(I)V
    .locals 0
    .param p1, "aLang"    # I

    .prologue
    .line 906
    return-void
.end method

.method public selectAudioMode(I)V
    .locals 0
    .param p1, "aMode"    # I

    .prologue
    .line 885
    return-void
.end method

.method public setAudioLanguageValue(I)V
    .locals 0
    .param p1, "aLanguageValue"    # I

    .prologue
    .line 929
    return-void
.end method

.method protected setAudioManager(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "aAudioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 3406
    return-void
.end method

.method public setBmlState(Z)V
    .locals 0
    .param p1, "aState"    # Z

    .prologue
    .line 1846
    return-void
.end method

.method public setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V
    .locals 0
    .param p1, "aBmlViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .prologue
    .line 3333
    return-void
.end method

.method public setCaptionView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;)V
    .locals 0
    .param p1, "aMmbStCaptionViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .prologue
    .line 3351
    return-void
.end method

.method public setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    .locals 0
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    .line 1025
    return-void
.end method

.method public setLanguageIndex(II)V
    .locals 0
    .param p1, "aType"    # I
    .param p2, "aLang"    # I

    .prologue
    .line 1000
    return-void
.end method

.method public final setMmbStBmlEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;)V
    .locals 1
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlBrowserController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->setMmbStBmlEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;)V

    .line 2130
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlObjectController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->setMmbStBmlEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;)V

    .line 2132
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlFullScreenControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setMmbStBmlEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;)V

    .line 2136
    return-void
.end method

.method public setMmbStRecPlayingEventListenerSv(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;)V
    .locals 0
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;

    .prologue
    .line 3849
    return-void
.end method

.method public setMmbStStreamingEventListenerSv(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;)V
    .locals 0
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;

    .prologue
    .line 706
    return-void
.end method

.method protected setPausingInformation(IIZZ)V
    .locals 0
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z
    .param p4, "aPidClear"    # Z

    .prologue
    .line 1124
    return-void
.end method

.method public setRestoreMode(Z)V
    .locals 0
    .param p1, "aRestoreMode"    # Z

    .prologue
    .line 3477
    return-void
.end method

.method public setResumePlaying(Z)V
    .locals 2
    .param p1, "aResumeflag"    # Z

    .prologue
    .line 3722
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public setState(IZ)V
    .locals 0
    .param p1, "aType"    # I
    .param p2, "aState"    # Z

    .prologue
    .line 953
    return-void
.end method

.method public setSuperImposeCaptionLanguage(II)V
    .locals 0
    .param p1, "aType"    # I
    .param p2, "aSuperImposeLanguage1"    # I

    .prologue
    .line 3436
    return-void
.end method

.method public setSuperimposeView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;)V
    .locals 0
    .param p1, "aSuperimposeViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    .prologue
    .line 3369
    return-void
.end method

.method public setVideoDisplay(I)V
    .locals 0
    .param p1, "aRotateDegrees"    # I

    .prologue
    .line 1521
    return-void
.end method

.method public start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;)V
    .locals 0
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;

    .prologue
    .line 506
    return-void
.end method

.method public start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;Ljava/lang/String;I)V
    .locals 0
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    .param p2, "aEntityId"    # Ljava/lang/String;
    .param p3, "aUserParam"    # I

    .prologue
    .line 477
    return-void
.end method

.method public startBmlBrowser(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;)V
    .locals 1
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlBrowserController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->startBmlBrowser(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;)V

    .line 1997
    return-void
.end method

.method public startBmlBrowserForRec(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;)V
    .locals 1
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlBrowserController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->startBmlBrowserForRec(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;)V

    .line 2027
    return-void
.end method

.method public startPlay(I)V
    .locals 2
    .param p1, "aUserParam"    # I

    .prologue
    .line 3665
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public stopBmlBrowser()V
    .locals 1

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlFullScreenControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->stopBmlBrowser()V

    .line 2047
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlBrowserController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->stopBmlBrowser()V

    .line 2052
    return-void
.end method

.method public stopPlay()V
    .locals 2

    .prologue
    .line 3685
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public final suspendBmlBrowser(I)V
    .locals 1
    .param p1, "aVramClear"    # I

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->getBmlBrowserController()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->suspendBmlBrowser(I)V

    .line 2083
    return-void
.end method

.method protected transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V
    .locals 1
    .param p1, "aState"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->transit(Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public trickplay(I)I
    .locals 2
    .param p1, "aKind"    # I

    .prologue
    .line 3740
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public tune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;Ljava/lang/String;I)V
    .locals 0
    .param p1, "aServiceId"    # I
    .param p2, "aMode"    # I
    .param p3, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .param p4, "aEntityId"    # Ljava/lang/String;
    .param p5, "aUserParam"    # I

    .prologue
    .line 597
    return-void
.end method

.method public videoDecode(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 728
    return-void
.end method

.method protected videoDecodeInner(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 747
    return-void
.end method

.method public videoMute(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 770
    return-void
.end method
