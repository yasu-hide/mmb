.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
.super Ljava/lang/Object;
.source "MmbStRecPlayingInformationSv.java"


# instance fields
.field private bmlStarterFlag:Z

.field private bmlViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

.field private captionStarterFlag:Z

.field private captionViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

.field private drawSettingSubtitle:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

.field private executeStartCaptionFlag:Z

.field private isBmlDraw:Z

.field private mAudioComponentTag:S

.field private mAudioStatus:I

.field private mContractStatus:I

.field private mParentalStatus:I

.field private mPosition:J

.field private mVideoStatus:I

.field private startViewUserParam:I


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mAudioStatus:I

    .line 36
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mVideoStatus:I

    .line 41
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mContractStatus:I

    .line 46
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mParentalStatus:I

    .line 52
    const/16 v0, 0x10

    iput-short v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mAudioComponentTag:S

    .line 57
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->bmlStarterFlag:Z

    .line 62
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->captionStarterFlag:Z

    .line 67
    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->bmlViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .line 71
    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->captionViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .line 78
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->isBmlDraw:Z

    .line 83
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->startViewUserParam:I

    .line 88
    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->drawSettingSubtitle:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .line 93
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->executeStartCaptionFlag:Z

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mPosition:J

    .line 120
    return-void
.end method


# virtual methods
.method protected getAudioBlueToothStatus()I
    .locals 2

    .prologue
    .line 211
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mAudioStatus:I

    and-int/lit16 v1, v1, 0x100

    shr-int/lit8 v0, v1, 0x8

    .line 218
    .local v0, "blueToothSatus":I
    return v0
.end method

.method protected getAudioDecodeStatus()I
    .locals 2

    .prologue
    .line 238
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mAudioStatus:I

    and-int/lit8 v0, v1, 0x1

    .line 243
    .local v0, "decodeSatus":I
    return v0
.end method

.method protected getAudioMuteStatus()I
    .locals 2

    .prologue
    .line 184
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mAudioStatus:I

    and-int/lit8 v1, v1, 0x10

    shr-int/lit8 v0, v1, 0x4

    .line 191
    .local v0, "muteSatus":I
    return v0
.end method

.method protected getAudioStatus()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mAudioStatus:I

    return v0
.end method

.method protected getAudiocomponenttag()S
    .locals 1

    .prologue
    .line 486
    iget-short v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mAudioComponentTag:S

    return v0
.end method

.method public getBmlDraw()Z
    .locals 1

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->isBmlDraw:Z

    return v0
.end method

.method public getBmlStarterFlag()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->bmlStarterFlag:Z

    return v0
.end method

.method public getBmlView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->bmlViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    return-object v0
.end method

.method public getCaptionStarterFlag()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->captionStarterFlag:Z

    return v0
.end method

.method public getCaptionView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->captionViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    return-object v0
.end method

.method protected getContractstatus()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mContractStatus:I

    return v0
.end method

.method protected getDrawSettingSubtitle()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->drawSettingSubtitle:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    return-object v0
.end method

.method public getExecuteStartCaptionFlag()Z
    .locals 1

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->executeStartCaptionFlag:Z

    return v0
.end method

.method protected getParentalstatus()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mParentalStatus:I

    return v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 845
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mPosition:J

    return-wide v0
.end method

.method protected getStartViewUserParam()I
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->startViewUserParam:I

    return v0
.end method

.method protected getVideoDecodeStatus()I
    .locals 2

    .prologue
    .line 308
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mVideoStatus:I

    and-int/lit8 v0, v1, 0x1

    .line 313
    .local v0, "decodeSatus":I
    return v0
.end method

.method protected getVideoMuteStatus()I
    .locals 2

    .prologue
    .line 332
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mVideoStatus:I

    and-int/lit8 v1, v1, 0x10

    shr-int/lit8 v0, v1, 0x4

    .line 338
    .local v0, "muteSatus":I
    return v0
.end method

.method protected getVideoStatus()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mVideoStatus:I

    return v0
.end method

.method protected setAudioStatus(I)V
    .locals 0
    .param p1, "aAudioStatus"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mAudioStatus:I

    .line 144
    return-void
.end method

.method protected setAudiocomponenttag(S)V
    .locals 0
    .param p1, "aAudioComponentTag"    # S

    .prologue
    .line 501
    iput-short p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mAudioComponentTag:S

    .line 505
    return-void
.end method

.method public setBmlDraw(Z)V
    .locals 0
    .param p1, "aIsBmlDraw"    # Z

    .prologue
    .line 667
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->isBmlDraw:Z

    .line 671
    return-void
.end method

.method public setBmlStarterFlag(Z)V
    .locals 0
    .param p1, "aStarterFlag"    # Z

    .prologue
    .line 520
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->bmlStarterFlag:Z

    .line 524
    return-void
.end method

.method public setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V
    .locals 0
    .param p1, "aBmlViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->bmlViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .line 599
    return-void
.end method

.method public setCaptionStarterFlag(Z)V
    .locals 0
    .param p1, "aStarterFlag"    # Z

    .prologue
    .line 558
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->captionStarterFlag:Z

    .line 562
    return-void
.end method

.method public setCaptionView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;)V
    .locals 0
    .param p1, "aCaptionViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->captionViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .line 635
    return-void
.end method

.method protected setDrawSettings(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    .locals 2
    .param p1, "aDrawSettings"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    .line 740
    if-nez p1, :cond_1

    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->drawSettingSubtitle:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbType:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 749
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->drawSettingSubtitle:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    goto :goto_0
.end method

.method public setExecuteStartCaptionFlag(Z)V
    .locals 0
    .param p1, "aExecutestartcaptionflag"    # Z

    .prologue
    .line 786
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->executeStartCaptionFlag:Z

    .line 790
    return-void
.end method

.method public setPosition(J)V
    .locals 1
    .param p1, "aPosition"    # J

    .prologue
    .line 823
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mPosition:J

    .line 828
    return-void
.end method

.method protected setServiceContractStatus(I)V
    .locals 4
    .param p1, "aContract"    # I

    .prologue
    .line 358
    sparse-switch p1, :sswitch_data_0

    .line 368
    const-string v0, "param error(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    :goto_0
    return-void

    .line 362
    :sswitch_0
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mContractStatus:I

    goto :goto_0

    .line 358
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setServiceParentalStatus(I)V
    .locals 0
    .param p1, "aParental"    # I

    .prologue
    .line 445
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mParentalStatus:I

    .line 450
    return-void
.end method

.method protected setServiceParentalStatus(Z)V
    .locals 1
    .param p1, "aParental"    # Z

    .prologue
    const/4 v0, 0x1

    .line 411
    if-ne v0, p1, :cond_0

    .line 412
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mParentalStatus:I

    .line 426
    :goto_0
    return-void

    .line 418
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mParentalStatus:I

    goto :goto_0
.end method

.method protected setStartViewUserParam(I)V
    .locals 0
    .param p1, "aUserParam"    # I

    .prologue
    .line 721
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->startViewUserParam:I

    .line 725
    return-void
.end method

.method protected setVideoStatus(I)V
    .locals 0
    .param p1, "aVideoStatus"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->mVideoStatus:I

    .line 269
    return-void
.end method
