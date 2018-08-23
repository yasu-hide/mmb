.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;
.super Ljava/lang/Object;
.source "MmbStAudioVideoFunctionSv.java"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private audioParameterData:I

.field private mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

.field private rotaryValue:I

.field private videoParameterData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

.field private videoRectInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

.field private videoSurface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;)V
    .locals 2
    .param p1, "aMwInstance"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .line 83
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .line 84
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoSurface:Landroid/view/Surface;

    .line 85
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoParameterData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->rotaryValue:I

    .line 87
    const/4 v0, 0x4

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->audioParameterData:I

    .line 88
    new-instance v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

    invoke-direct {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoRectInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

    .line 89
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->audioManager:Landroid/media/AudioManager;

    .line 93
    return-void
.end method

.method private judgedErrorment(II)V
    .locals 5
    .param p1, "aResult"    # I
    .param p2, "aFunction"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 924
    const/16 v0, -0x2004

    if-ne p1, v0, :cond_1

    .line 925
    const-string v0, "Status Error has been occured and continue forward sequences(%d)"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    :cond_0
    return-void

    .line 931
    :cond_1
    if-eqz p1, :cond_0

    .line 932
    const-string v0, "error(%d)"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v0, v3, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(III)V

    throw v0
.end method

.method private judgedParameterErrorment(II)V
    .locals 4
    .param p1, "aResult"    # I
    .param p2, "aFunction"    # I

    .prologue
    .line 967
    sparse-switch p1, :sswitch_data_0

    .line 981
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->judgedErrorment(II)V

    .line 988
    :sswitch_0
    return-void

    .line 975
    :sswitch_1
    const-string v0, "error(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 977
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, 0x3

    const/16 v2, -0x3e8

    invoke-direct {v0, v1, v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(III)V

    throw v0

    .line 967
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2003 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected audioDecode(ISIZ)V
    .locals 2
    .param p1, "aState"    # I
    .param p2, "aComponentTag"    # S
    .param p3, "aMode"    # I
    .param p4, "aBluetoothStatus"    # Z

    .prologue
    .line 257
    if-nez p1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p2, p3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->audioDecStart(SI)I

    move-result v0

    .line 280
    .local v0, "result":I
    :goto_0
    if-eqz p4, :cond_0

    .line 281
    if-nez p1, :cond_0

    .line 282
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->outDeviceSetAudio(I)V

    .line 287
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->judgedParameterErrorment(II)V

    .line 292
    return-void

    .line 268
    .end local v0    # "result":I
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->deleteAudioParameterData()V

    .line 274
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->audioDecStop()I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method protected closeVideoDisplay()V
    .locals 2

    .prologue
    .line 656
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->videoDisplayClose()I

    move-result v0

    .line 662
    .local v0, "result":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->judgedParameterErrorment(II)V

    .line 667
    return-void
.end method

.method protected deleteAudioParameterData()V
    .locals 1

    .prologue
    .line 832
    const/4 v0, 0x4

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->audioParameterData:I

    .line 836
    return-void
.end method

.method protected deleteRotate()V
    .locals 1

    .prologue
    .line 853
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->rotaryValue:I

    .line 857
    return-void
.end method

.method protected deleteVideoParameterData()V
    .locals 1

    .prologue
    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoParameterData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    .line 815
    return-void
.end method

.method protected finalizeAv()V
    .locals 2

    .prologue
    .line 555
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->aVEnd()I

    move-result v0

    .line 561
    .local v0, "result":I
    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->judgedErrorment(II)V

    .line 566
    return-void
.end method

.method protected getAudioInfo()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->audioParameterData:I

    return v0
.end method

.method protected getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    .locals 2

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 400
    .local v0, "videoparameter":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoParameterData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    if-eqz v1, :cond_0

    .line 402
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    .end local v0    # "videoparameter":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;-><init>()V

    .line 403
    .restart local v0    # "videoparameter":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoParameterData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    iget v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;->mmbWidth:I

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;->mmbWidth:I

    .line 404
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoParameterData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    iget v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;->mmbHeight:I

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;->mmbHeight:I

    .line 405
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoParameterData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    iget v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;->mmbAspect:I

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;->mmbAspect:I

    .line 406
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoParameterData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;->mmbStereoView:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;->mmbStereoView:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;

    .line 411
    :cond_0
    return-object v0
.end method

.method protected initializeAv()V
    .locals 2

    .prologue
    .line 518
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->aVInitialize()I

    move-result v0

    .line 524
    .local v0, "result":I
    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->judgedErrorment(II)V

    .line 529
    return-void
.end method

.method protected onAudioInformation(I)V
    .locals 0
    .param p1, "aAudioInfo"    # I

    .prologue
    .line 488
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->audioParameterData:I

    .line 492
    return-void
.end method

.method protected onVideoInformation(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V
    .locals 1
    .param p1, "aPicWidth"    # I
    .param p2, "aPicHeight"    # I
    .param p3, "aAspect"    # I
    .param p4, "aViewInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;

    .prologue
    .line 433
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoParameterData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    .line 434
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoParameterData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    iput p1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;->mmbWidth:I

    .line 435
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoParameterData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    iput p2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;->mmbHeight:I

    .line 436
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoParameterData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    iput p3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;->mmbAspect:I

    .line 437
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoParameterData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    iput-object p4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;->mmbStereoView:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;

    .line 441
    return-void
.end method

.method protected openVideoDisplay()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 586
    const/4 v3, 0x0

    .line 587
    .local v3, "videosurface":Landroid/view/Surface;
    new-instance v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

    invoke-direct {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;-><init>()V

    .line 590
    .local v1, "clippingarea":Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoSurface:Landroid/view/Surface;

    .line 591
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoRectInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

    iget v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->x:I

    iput v4, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->x:I

    .line 592
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoRectInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

    iget v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->y:I

    iput v4, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->y:I

    .line 593
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoRectInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

    iget v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->w:I

    iput v4, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->w:I

    .line 594
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoRectInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

    iget v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->h:I

    iput v4, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->h:I

    .line 596
    if-nez v3, :cond_0

    .line 597
    const-string v4, "video surface null"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    :goto_0
    return-void

    .line 604
    :cond_0
    iget v4, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->w:I

    if-lez v4, :cond_1

    iget v4, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->h:I

    if-gtz v4, :cond_2

    .line 605
    :cond_1
    const-string v4, "video rectinfo w(%d),h(%d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->w:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 612
    :cond_2
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->rotaryValue:I

    .line 619
    .local v0, "arotatedegrees":I
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v4, v3, v1, v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->videoDisplayOpen(Landroid/view/Surface;Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;I)I

    move-result v2

    .line 625
    .local v2, "result":I
    invoke-direct {p0, v2, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->judgedParameterErrorment(II)V

    goto :goto_0
.end method

.method protected outDeviceSetAudio(I)V
    .locals 4
    .param p1, "aAudioDevice"    # I

    .prologue
    const/4 v3, 0x0

    .line 881
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->audioOutDevSet(I)I

    move-result v0

    .line 887
    .local v0, "result":I
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->judgedErrorment(II)V

    .line 889
    if-nez p1, :cond_0

    .line 891
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 897
    :cond_0
    return-void
.end method

.method protected playAudio()V
    .locals 2

    .prologue
    .line 693
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->audioPlay()I

    move-result v0

    .line 699
    .local v0, "result":I
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->judgedErrorment(II)V

    .line 704
    return-void
.end method

.method protected selectAudioLanguage(S)V
    .locals 2
    .param p1, "aLang"    # S

    .prologue
    .line 363
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->audioESChange(S)I

    move-result v0

    .line 369
    .local v0, "result":I
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->judgedErrorment(II)V

    .line 374
    return-void
.end method

.method protected selectAudioMode(I)V
    .locals 2
    .param p1, "aMode"    # I

    .prologue
    .line 323
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->audioMainSubChange(I)I

    move-result v0

    .line 329
    .local v0, "result":I
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->judgedErrorment(II)V

    .line 334
    return-void
.end method

.method protected setAudioManager(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "aAudioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->audioManager:Landroid/media/AudioManager;

    .line 139
    return-void
.end method

.method protected setVideoDisplay(I)V
    .locals 4
    .param p1, "aRotateDegrees"    # I

    .prologue
    .line 762
    new-instance v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

    invoke-direct {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;-><init>()V

    .line 763
    .local v0, "clippingarea":Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;
    const/4 v2, 0x0

    .line 766
    .local v2, "videosurface":Landroid/view/Surface;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoSurface:Landroid/view/Surface;

    .line 767
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoRectInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

    iget v3, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->x:I

    iput v3, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->x:I

    .line 768
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoRectInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

    iget v3, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->y:I

    iput v3, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->y:I

    .line 769
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoRectInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

    iget v3, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->w:I

    iput v3, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->w:I

    .line 770
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoRectInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

    iget v3, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->h:I

    iput v3, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->h:I

    .line 771
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->rotaryValue:I

    .line 774
    if-eqz v2, :cond_0

    .line 782
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v3, v2, v0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->videoDisplaySetup(Landroid/view/Surface;Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;I)I

    move-result v1

    .line 788
    .local v1, "result":I
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->judgedParameterErrorment(II)V

    .line 794
    .end local v1    # "result":I
    :cond_0
    return-void
.end method

.method protected setVideoDisplayAreaInfo(IIII)V
    .locals 1
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoRectInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

    iput p1, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->x:I

    .line 164
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoRectInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

    iput p2, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->y:I

    .line 165
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoRectInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

    iput p4, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->w:I

    .line 166
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoRectInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;

    iput p3, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;->h:I

    .line 171
    return-void
.end method

.method protected setVideoSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "aVideoSurface"    # Landroid/view/Surface;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoSurface:Landroid/view/Surface;

    .line 118
    return-void
.end method

.method protected stopAudio()V
    .locals 2

    .prologue
    .line 730
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->audioStop()I

    move-result v0

    .line 736
    .local v0, "result":I
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->judgedErrorment(II)V

    .line 741
    return-void
.end method

.method protected videoDecode(IS)V
    .locals 2
    .param p1, "aState"    # I
    .param p2, "aComponentTag"    # S

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->videoDecStart(S)I

    move-result v0

    .line 224
    .local v0, "result":I
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->judgedParameterErrorment(II)V

    .line 229
    return-void

    .line 211
    .end local v0    # "result":I
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->deleteVideoParameterData()V

    .line 217
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->videoDecStop()I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0
.end method
