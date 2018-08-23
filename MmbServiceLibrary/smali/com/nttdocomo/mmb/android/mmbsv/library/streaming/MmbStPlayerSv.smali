.class public interface abstract Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;
.super Ljava/lang/Object;
.source "MmbStPlayerSv.java"


# virtual methods
.method public abstract audioDecode(I)V
.end method

.method public abstract audioMute(I)V
.end method

.method public abstract cancelScan()V
.end method

.method public abstract changeBmlDirection(I)V
.end method

.method public abstract changeParental()V
.end method

.method public abstract clearNvram()V
.end method

.method public abstract end()V
.end method

.method public abstract getAudioInfo()I
.end method

.method public abstract getAudioLanguage()I
.end method

.method public abstract getAudioLanguageNum()I
.end method

.method public abstract getBmlView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
.end method

.method public abstract getCaptionView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;
.end method

.method public abstract getCnValue()I
.end method

.method public abstract getCurrentPlayPosition()J
.end method

.method public abstract getFileDuration()J
.end method

.method public abstract getLanguageCount(I)I
.end method

.method public abstract getParentView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;
.end method

.method public abstract getProgramInformation(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatus()I
.end method

.method public abstract getSuperimposeView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;
.end method

.method public abstract getTvLink()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTvView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;
.end method

.method public abstract getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
.end method

.method public abstract isResumeInfoExist(I)Z
.end method

.method public abstract notifyChangeLayoutEnd()V
.end method

.method public abstract notifyChangeLayoutStart(I)V
.end method

.method public abstract notifyKey(II)V
.end method

.method public abstract pause(IIZ)V
.end method

.method public abstract prepPlay(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;)V
.end method

.method public abstract removeTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
.end method

.method public abstract responseAddTvLink(ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
.end method

.method public abstract responseCancelFilecastingReservation(Z)V
.end method

.method public abstract responseFilecastingReservation(Z)V
.end method

.method public abstract responsePassword(ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract responsePermission(II)V
.end method

.method public abstract responseStartFilecasting(Z)V
.end method

.method public abstract responseStartInputMethod(ILjava/lang/String;)V
.end method

.method public abstract responseStartTvLink(Z)V
.end method

.method public abstract responseTune(Z)V
.end method

.method public abstract resumeBmlBrowser(I)V
.end method

.method public abstract resumePlay()I
.end method

.method public abstract scan(I)V
.end method

.method public abstract seek(JI)I
.end method

.method public abstract selectAudioLanguage(I)V
.end method

.method public abstract selectAudioMode(I)V
.end method

.method public abstract setBMLFullDispRect(IIII)V
.end method

.method public abstract setBmlState(Z)V
.end method

.method public abstract setCaptionDisplayAreaInfo(IIII)V
.end method

.method public abstract setCaptionSurface(Landroid/view/Surface;)V
.end method

.method public abstract setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
.end method

.method public abstract setLanguageIndex(II)V
.end method

.method public abstract setMmbStBmlEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;)V
.end method

.method public abstract setMmbStRecPlayingEventListenerSv(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingEventListenerSv;)V
.end method

.method public abstract setMmbStStreamingEventListenerSv(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingEventListenerSv;)V
.end method

.method public abstract setRestoreMode(Z)V
.end method

.method public abstract setResumePlaying(Z)V
.end method

.method public abstract setState(IZ)V
.end method

.method public abstract setSuperimposeDisplayAreaInfo(IIII)V
.end method

.method public abstract setSuperimposeSurface(Landroid/view/Surface;)V
.end method

.method public abstract setVideoDisplayAreaInfo(IIII)V
.end method

.method public abstract setVideoSurface(Landroid/view/Surface;)V
.end method

.method public abstract start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;)V
.end method

.method public abstract start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;Ljava/lang/String;I)V
.end method

.method public abstract startPlay(I)V
.end method

.method public abstract stopPlay()V
.end method

.method public abstract suspendBmlBrowser(I)V
.end method

.method public abstract trickplay(I)I
.end method

.method public abstract tune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;Ljava/lang/String;I)V
.end method

.method public abstract videoDecode(I)V
.end method

.method public abstract videoMute(I)V
.end method
