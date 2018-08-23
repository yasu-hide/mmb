.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
.super Ljava/lang/Object;
.source "MmbStStreamingInformationSv.java"


# instance fields
.field private bmlStarterFlag:Z

.field private bmlViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

.field private captionStarterFlag:Z

.field private captionViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

.field private mAntennaLevel:I

.field private mAudioComponentTag:S

.field private mAudioStatus:I

.field private mContractStatus:I

.field private mFacade:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

.field private mMetadata:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;

.field private mNgStatus:I

.field private mParentalStatus:I

.field private mPreference:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

.field mSelectChannelInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

.field private mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

.field private mStLogServiceId:I

.field private mVideoStatus:I

.field private mViewingStatus:I

.field private serviceList:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

.field private superimposeAutoDisplayFlag:Z

.field private superimposeStarterFlag:Z

.field private superimposeViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mPreference:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    .line 39
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mMetadata:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;

    .line 44
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mFacade:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    .line 49
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 54
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mSelectChannelInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    .line 59
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mAudioStatus:I

    .line 64
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mVideoStatus:I

    .line 69
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mNgStatus:I

    .line 74
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mContractStatus:I

    .line 79
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mParentalStatus:I

    .line 85
    const/16 v0, 0x10

    iput-short v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mAudioComponentTag:S

    .line 90
    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mAntennaLevel:I

    .line 95
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->bmlStarterFlag:Z

    .line 100
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->captionStarterFlag:Z

    .line 105
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->superimposeStarterFlag:Z

    .line 110
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->superimposeAutoDisplayFlag:Z

    .line 115
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->serviceList:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    .line 120
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->bmlViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .line 124
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->captionViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .line 128
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->superimposeViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    .line 132
    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mViewingStatus:I

    .line 136
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mStLogServiceId:I

    .line 155
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mSelectChannelInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    .line 160
    return-void
.end method


# virtual methods
.method protected getAntennaLevel()I
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mAntennaLevel:I

    return v0
.end method

.method protected getAudioDecodeStatus()I
    .locals 2

    .prologue
    .line 421
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mAudioStatus:I

    and-int/lit8 v0, v1, 0x1

    .line 426
    .local v0, "decodeSatus":I
    return v0
.end method

.method protected getAudioMuteStatus()I
    .locals 2

    .prologue
    .line 394
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mAudioStatus:I

    and-int/lit8 v1, v1, 0x10

    shr-int/lit8 v0, v1, 0x4

    .line 401
    .local v0, "muteSatus":I
    return v0
.end method

.method protected getAudioStatus()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mAudioStatus:I

    return v0
.end method

.method protected getAudiocomponenttag()S
    .locals 1

    .prologue
    .line 713
    iget-short v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mAudioComponentTag:S

    return v0
.end method

.method public getBmlStarterFlag()Z
    .locals 1

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->bmlStarterFlag:Z

    return v0
.end method

.method public getBmlView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->bmlViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    return-object v0
.end method

.method public getCaptionStarterFlag()Z
    .locals 1

    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->captionStarterFlag:Z

    return v0
.end method

.method public getCaptionView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->captionViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    return-object v0
.end method

.method protected getContractstatus()I
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mContractStatus:I

    return v0
.end method

.method protected getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mFacade:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    return-object v0
.end method

.method protected getMetadata()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mMetadata:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;

    return-object v0
.end method

.method protected getNgstatus()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mNgStatus:I

    return v0
.end method

.method protected getParentalstatus()I
    .locals 1

    .prologue
    .line 696
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mParentalStatus:I

    return v0
.end method

.method protected getPreference()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mPreference:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    return-object v0
.end method

.method protected getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mSelectChannelInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    return-object v0
.end method

.method protected getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    return-object v0
.end method

.method public getServiceList()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->serviceList:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    return-object v0
.end method

.method protected getStLogServiceId()I
    .locals 1

    .prologue
    .line 1141
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mStLogServiceId:I

    return v0
.end method

.method public getSuperimposeAutoDisplayFlag()Z
    .locals 1

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->superimposeAutoDisplayFlag:Z

    return v0
.end method

.method public getSuperimposeStarterFlag()Z
    .locals 1

    .prologue
    .line 873
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->superimposeStarterFlag:Z

    return v0
.end method

.method public getSuperimposeView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->superimposeViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    return-object v0
.end method

.method protected getVideoDecodeStatus()I
    .locals 2

    .prologue
    .line 491
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mVideoStatus:I

    and-int/lit8 v0, v1, 0x1

    .line 496
    .local v0, "decodeSatus":I
    return v0
.end method

.method protected getVideoMuteStatus()I
    .locals 2

    .prologue
    .line 515
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mVideoStatus:I

    and-int/lit8 v1, v1, 0x10

    shr-int/lit8 v0, v1, 0x4

    .line 521
    .local v0, "muteSatus":I
    return v0
.end method

.method protected getVideoStatus()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mVideoStatus:I

    return v0
.end method

.method protected getViewingStatus()I
    .locals 1

    .prologue
    .line 1099
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mViewingStatus:I

    return v0
.end method

.method protected setAntennaLevel(I)V
    .locals 0
    .param p1, "aAntennaLevel"    # I

    .prologue
    .line 762
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mAntennaLevel:I

    .line 766
    return-void
.end method

.method protected setAudioStatus(I)V
    .locals 0
    .param p1, "aAudioStatus"    # I

    .prologue
    .line 349
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mAudioStatus:I

    .line 354
    return-void
.end method

.method protected setAudiocomponenttag(S)V
    .locals 0
    .param p1, "aAudioComponentTag"    # S

    .prologue
    .line 727
    iput-short p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mAudioComponentTag:S

    .line 731
    return-void
.end method

.method public setBmlStarterFlag(Z)V
    .locals 0
    .param p1, "aStarterFlag"    # Z

    .prologue
    .line 780
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->bmlStarterFlag:Z

    .line 784
    return-void
.end method

.method public setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V
    .locals 0
    .param p1, "aBmlViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .prologue
    .line 964
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->bmlViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .line 968
    return-void
.end method

.method public setCaptionStarterFlag(Z)V
    .locals 0
    .param p1, "aStarterFlag"    # Z

    .prologue
    .line 816
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->captionStarterFlag:Z

    .line 820
    return-void
.end method

.method public setCaptionView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;)V
    .locals 0
    .param p1, "aCaptionViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->captionViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .line 1004
    return-void
.end method

.method protected setFacade(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;)V
    .locals 0
    .param p1, "aFacade"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mFacade:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    .line 262
    return-void
.end method

.method protected setMetadata(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;)V
    .locals 0
    .param p1, "aMetadata"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mMetadata:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;

    .line 228
    return-void
.end method

.method protected setPreference(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;)V
    .locals 0
    .param p1, "aPreference"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mPreference:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    .line 194
    return-void
.end method

.method protected setSelectChannelInstance(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;)V
    .locals 0
    .param p1, "aSelectChannelInstance"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mSelectChannelInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    .line 331
    return-void
.end method

.method protected setServiceContext(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 0
    .param p1, "aServiceContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 296
    return-void
.end method

.method protected setServiceContractStatus(I)V
    .locals 4
    .param p1, "aContract"    # I

    .prologue
    .line 604
    packed-switch p1, :pswitch_data_0

    .line 620
    const-string v0, "param error(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    :goto_0
    return-void

    .line 614
    :pswitch_0
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mContractStatus:I

    goto :goto_0

    .line 604
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setServiceList(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)V
    .locals 0
    .param p1, "aServiceList"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    .prologue
    .line 928
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->serviceList:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    .line 932
    return-void
.end method

.method protected setServiceNgStatus(I)V
    .locals 4
    .param p1, "aNgStatus"    # I

    .prologue
    .line 541
    packed-switch p1, :pswitch_data_0

    .line 561
    const-string v0, "param error(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    :goto_0
    return-void

    .line 547
    :pswitch_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mNgStatus:I

    goto :goto_0

    .line 555
    :pswitch_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mNgStatus:I

    goto :goto_0

    .line 541
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected setServiceParentalStatus(Z)V
    .locals 1
    .param p1, "aParental"    # Z

    .prologue
    .line 663
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 664
    const/4 v0, 0x3

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mParentalStatus:I

    .line 678
    :goto_0
    return-void

    .line 670
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mParentalStatus:I

    goto :goto_0
.end method

.method public setStLogServiceId(I)V
    .locals 0
    .param p1, "aServiceId"    # I

    .prologue
    .line 1117
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mStLogServiceId:I

    .line 1121
    return-void
.end method

.method public setSuperimposeAutoDisplayFlag(Z)V
    .locals 0
    .param p1, "aAutomaticFlag"    # Z

    .prologue
    .line 890
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->superimposeAutoDisplayFlag:Z

    .line 894
    return-void
.end method

.method public setSuperimposeStarterFlag(Z)V
    .locals 0
    .param p1, "aStarterFlag"    # Z

    .prologue
    .line 852
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->superimposeStarterFlag:Z

    .line 856
    return-void
.end method

.method public setSuperimposeView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;)V
    .locals 0
    .param p1, "aSuperimposenViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->superimposeViewSv:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    .line 1040
    return-void
.end method

.method protected setVideoStatus(I)V
    .locals 0
    .param p1, "aVideoStatus"    # I

    .prologue
    .line 447
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mVideoStatus:I

    .line 452
    return-void
.end method

.method public setViewingStatus(I)V
    .locals 0
    .param p1, "aViewingStatus"    # I

    .prologue
    .line 1075
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mViewingStatus:I

    .line 1079
    return-void
.end method
