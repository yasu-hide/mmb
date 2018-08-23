.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;
.super Ljava/lang/Object;
.source "MmbStPlayerFunctionSv.java"


# static fields
.field private static final MMBST_WAKELOCK_LOCK:Ljava/lang/Object;


# instance fields
.field private avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

.field private capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

.field private mWakelock:Landroid/os/PowerManager$WakeLock;

.field private mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

.field private recPlayInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;

.field private scanInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStScanFunctionSv;

.field private secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

.field private selChInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->MMBST_WAKELOCK_LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-direct {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .line 114
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;-><init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->selChInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;

    .line 115
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;-><init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    .line 116
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;-><init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    .line 117
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;-><init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    .line 118
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStScanFunctionSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStScanFunctionSv;-><init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->scanInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStScanFunctionSv;

    .line 119
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;-><init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->recPlayInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;

    .line 123
    return-void
.end method

.method private startDisp(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;)V
    .locals 12
    .param p1, "aAudioInformation"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;
    .param p2, "aVideoDecodeStatus"    # I
    .param p3, "aPauseResumeDataInstance"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;

    .prologue
    const/16 v11, 0x38

    const/16 v10, 0x30

    .line 1249
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->isCheckExistenceDefaultVideoComponentInPmt()Z

    move-result v7

    if-ne v6, v7, :cond_0

    .line 1251
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDecode(I)V

    .line 1255
    :cond_0
    const/16 v6, 0xff

    iget-short v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioComponentTag:S

    if-eq v6, v7, :cond_1

    .line 1258
    iget v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioDecodeStatus:I

    iget-short v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioComponentTag:S

    iget v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioMode:I

    iget-boolean v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->bluetoothStatus:Z

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->audioDecode(ISIZ)V

    .line 1263
    :cond_1
    invoke-virtual {p3, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposeStatus(I)I

    move-result v2

    .line 1266
    .local v2, "subtitlestatus":I
    invoke-virtual {p3, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposeStatus(I)I

    move-result v5

    .line 1269
    .local v5, "superimposestatus":I
    invoke-virtual {p3, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposeCanvas(I)Z

    move-result v0

    .line 1272
    .local v0, "subtitlecanvas":Z
    invoke-virtual {p3, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposeCanvas(I)Z

    move-result v3

    .line 1275
    .local v3, "superimposecanvas":Z
    invoke-virtual {p3, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposePidClear(I)Z

    move-result v1

    .line 1278
    .local v1, "subtitlepidclear":Z
    invoke-virtual {p3, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposePidClear(I)Z

    move-result v4

    .line 1282
    .local v4, "superimposepidclear":Z
    invoke-virtual {p0, v2, v10, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->pause(IIZZ)V

    .line 1284
    invoke-virtual {p0, v5, v11, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->pause(IIZZ)V

    .line 1291
    return-void
.end method

.method private startRecDisp(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;)V
    .locals 8
    .param p1, "aAudioInformation"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;
    .param p2, "aVideoDecodeStatus"    # I
    .param p3, "aPauseResumeDataInstance"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;

    .prologue
    const/16 v7, 0x30

    .line 2382
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->isCheckExistenceDefaultVideoComponentInPmt()Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2384
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDecode(I)V

    .line 2388
    :cond_0
    const/16 v3, 0xff

    iget-short v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioComponentTag:S

    if-eq v3, v4, :cond_1

    .line 2391
    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioDecodeStatus:I

    iget-short v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioComponentTag:S

    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioMode:I

    iget-boolean v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->bluetoothStatus:Z

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->audioDecode(ISIZ)V

    .line 2396
    :cond_1
    invoke-virtual {p3, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposeStatus(I)I

    move-result v2

    .line 2399
    .local v2, "subtitlestatus":I
    invoke-virtual {p3, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposeCanvas(I)Z

    move-result v0

    .line 2402
    .local v0, "subtitlecanvas":Z
    invoke-virtual {p3, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposePidClear(I)Z

    move-result v1

    .line 2406
    .local v1, "subtitlepidclear":Z
    invoke-virtual {p0, v2, v7, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->pause(IIZZ)V

    .line 2413
    return-void
.end method


# virtual methods
.method protected audioDecode(ISIZ)V
    .locals 6
    .param p1, "aState"    # I
    .param p2, "aComponentTag"    # S
    .param p3, "aAudioMode"    # I
    .param p4, "aBluetoothStatus"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1029
    and-int/lit8 v1, p1, 0x1

    .line 1030
    .local v1, "audioDecodeState":I
    and-int/lit8 v4, p1, 0x10

    shr-int/lit8 v2, v4, 0x4

    .line 1033
    .local v2, "audioMuteState":I
    and-int/lit16 v4, p1, 0x100

    shr-int/lit8 v0, v4, 0x8

    .line 1036
    .local v0, "audioBlueToothMuteState":I
    and-int/lit16 v4, p1, 0x1000

    shr-int/lit8 v3, v4, 0xc

    .line 1041
    .local v3, "audioUsbMuteState":I
    if-eq v5, v1, :cond_0

    if-eq v5, v2, :cond_0

    if-eq v5, v0, :cond_0

    if-ne v5, v3, :cond_1

    .line 1046
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->stopAudio()V

    .line 1049
    :cond_1
    const/16 v4, 0xff

    if-eq p2, v4, :cond_2

    .line 1050
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v4, v1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->audioDecode(ISIZ)V

    .line 1054
    :cond_2
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    .line 1059
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->playAudio()V

    .line 1065
    :cond_3
    return-void
.end method

.method protected cancelScan()V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->scanInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStScanFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStScanFunctionSv;->cancelScan()V

    .line 749
    return-void
.end method

.method public captionSetPlayPositionChange()I
    .locals 2

    .prologue
    .line 2461
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->captionSetPlayPositionChange()I

    move-result v0

    .line 2465
    .local v0, "lRet":I
    return v0
.end method

.method protected fastForwardPlay()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2030
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->recPlayInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->fastForwardPlay()I

    move-result v0

    .line 2031
    .local v0, "lRet":I
    if-nez v0, :cond_0

    .line 2032
    new-instance v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;

    invoke-direct {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;-><init>()V

    .line 2033
    .local v1, "playStateSet":Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;
    iput v3, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlayState:I

    .line 2034
    iput v3, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlayDirection:I

    .line 2035
    const/4 v2, 0x2

    iput v2, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlaySpeed:I

    .line 2036
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->captionSetCaptionPlayState(Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;)I

    move-result v0

    .line 2042
    .end local v1    # "playStateSet":Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;
    :cond_0
    return v0
.end method

.method protected getAudioInfo()I
    .locals 2

    .prologue
    .line 1217
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->getAudioInfo()I

    move-result v0

    .line 1223
    .local v0, "audioinfo":I
    return v0
.end method

.method protected getAudioLanguageNum()I
    .locals 2

    .prologue
    .line 1402
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getAudioLanguageNum()I

    move-result v0

    .line 1408
    .local v0, "audionum":I
    return v0
.end method

.method protected getCnValue()I
    .locals 2

    .prologue
    .line 1851
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->selChInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->getCnValue()I

    move-result v0

    .line 1855
    .local v0, "cnvalue":I
    return v0
.end method

.method protected getCopyControlInfo()Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;
    .locals 2

    .prologue
    .line 1827
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getCopyControlInfo()Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;

    move-result-object v0

    .line 1831
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;
    return-object v0
.end method

.method protected getCurrentTime()J
    .locals 3

    .prologue
    .line 2151
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->recPlayInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->getCurrentTime()J

    move-result-wide v0

    .line 2156
    .local v0, "currentTime":J
    return-wide v0
.end method

.method protected getDuration()J
    .locals 3

    .prologue
    .line 2127
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->recPlayInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->getDuration()J

    move-result-wide v0

    .line 2132
    .local v0, "totalTime":J
    return-wide v0
.end method

.method protected getLanguageCount(I)I
    .locals 2
    .param p1, "aType"    # I

    .prologue
    .line 798
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->getLanguageCount(I)I

    move-result v0

    .line 804
    .local v0, "languagecount":I
    return v0
.end method

.method protected getParentalRate()I
    .locals 2

    .prologue
    .line 1783
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getParentalRate()I

    move-result v0

    .line 1787
    .local v0, "parentalrate":I
    return v0
.end method

.method getPrimaryAudioComponentTag()I
    .locals 2

    .prologue
    .line 1134
    const/16 v0, 0xff

    .line 1136
    .local v0, "result":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getPrimaryAudioComponentTag()I

    move-result v0

    .line 1140
    return v0
.end method

.method protected getProgramInformation(IJ)Ljava/util/List;
    .locals 2
    .param p1, "aCondition"    # I
    .param p2, "aSecureClock"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1376
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getProgramInformation(IJ)Ljava/util/List;

    move-result-object v0

    .line 1383
    .local v0, "programinfolist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    return-object v0
.end method

.method protected getServiceListForScan()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .locals 2

    .prologue
    .line 1695
    const/4 v0, 0x0

    .line 1698
    .local v0, "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getServiceListForScan()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    move-result-object v0

    .line 1704
    return-object v0
.end method

.method protected getServiceListForWatching()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .locals 2

    .prologue
    .line 1725
    const/4 v0, 0x0

    .line 1728
    .local v0, "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getServiceListForWatching()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    move-result-object v0

    .line 1734
    return-object v0
.end method

.method protected getServiceListFromNitInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .locals 2

    .prologue
    .line 1755
    const/4 v0, 0x0

    .line 1758
    .local v0, "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getServiceListFromNitInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    move-result-object v0

    .line 1764
    return-object v0
.end method

.method protected getTsidOfSdt()I
    .locals 2

    .prologue
    .line 1874
    const/4 v0, 0x0

    .line 1877
    .local v0, "tsid":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getTsidOfSdt()I

    move-result v0

    .line 1882
    return v0
.end method

.method protected getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    .locals 2

    .prologue
    .line 1187
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    move-result-object v0

    .line 1193
    .local v0, "videoinfo":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    return-object v0
.end method

.method protected initialize(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;ZZI)V
    .locals 5
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    .param p2, "aCaptionSetting"    # Z
    .param p3, "aSuperSetting"    # Z
    .param p4, "aUserParam"    # I

    .prologue
    .line 471
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->deletePmtInformation()V

    .line 472
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->deleteNitInformation()V

    .line 473
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->deleteBitInformation()V

    .line 474
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->deleteSdtInformation()V

    .line 475
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->deleteEitInformation()V

    .line 479
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->initializeAv()V

    .line 482
    new-instance v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;

    invoke-direct {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;-><init>()V

    .line 483
    .local v0, "capstartdata":Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbMaxPixelNum:I

    iput v1, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;->mMaxPixcelNum:I

    .line 484
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-byte v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbNotifyNothingTime:B

    iput-byte v1, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;->mNotifyNothingTime:B

    .line 485
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->startCaption(Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;Z)V

    .line 490
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->selChInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbServiceId:I

    invoke-virtual {v1, v2, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->start(II)V

    .line 495
    return-void
.end method

.method protected initializeRecPlay(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;Z)V
    .locals 5
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;
    .param p2, "aCaptionSetting"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2238
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->deletePmtInformation()V

    .line 2242
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->initializeAv()V

    .line 2245
    new-instance v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;

    invoke-direct {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;-><init>()V

    .line 2247
    .local v0, "capstartdata":Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    if-eqz v1, :cond_0

    .line 2248
    iput v4, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;->mViewPlayMode:I

    .line 2249
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbMaxPixelNum:I

    iput v1, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;->mMaxPixcelNum:I

    .line 2250
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-byte v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbNotifyNothingTime:B

    iput-byte v1, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;->mNotifyNothingTime:B

    .line 2251
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->initializeSubtitleCaption(Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;Z)V

    .line 2258
    :cond_0
    return-void
.end method

.method protected isBitInformation()Z
    .locals 2

    .prologue
    .line 1489
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->isBitInformation()Z

    move-result v0

    .line 1495
    .local v0, "result":Z
    return v0
.end method

.method isCheckExistenceDefaultVideoComponentInPmt()Z
    .locals 2

    .prologue
    .line 1159
    const/4 v0, 0x0

    .line 1161
    .local v0, "result":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->isCheckExistenceDefaultVideoComponentInPmt()Z

    move-result v0

    .line 1165
    return v0
.end method

.method protected isEitInformation()Z
    .locals 2

    .prologue
    .line 1547
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->isEitInformation()Z

    move-result v0

    .line 1553
    .local v0, "result":Z
    return v0
.end method

.method protected isNitInformation()Z
    .locals 2

    .prologue
    .line 1460
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->isNitInformation()Z

    move-result v0

    .line 1466
    .local v0, "result":Z
    return v0
.end method

.method protected isPmtInformation()Z
    .locals 2

    .prologue
    .line 1431
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->isPmtInformation()Z

    move-result v0

    .line 1437
    .local v0, "result":Z
    return v0
.end method

.method protected isResumeInfoExist(I)Z
    .locals 2
    .param p1, "aPrgNo"    # I

    .prologue
    .line 2177
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->recPlayInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->isResumeInfoExist(I)Z

    move-result v0

    .line 2182
    .local v0, "hasResumeInfo":Z
    return v0
.end method

.method protected isSdtInformation()Z
    .locals 2

    .prologue
    .line 1518
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->isSdtInformation()Z

    move-result v0

    .line 1524
    .local v0, "result":Z
    return v0
.end method

.method onAudioInformation(I)V
    .locals 1
    .param p1, "aAudioInfo"    # I

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->onAudioInformation(I)V

    .line 1350
    return-void
.end method

.method protected onBitUpdated()V
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->onBitUpdated()V

    .line 1675
    return-void
.end method

.method protected onEitUpdated()V
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->onEitUpdated()V

    .line 1627
    return-void
.end method

.method protected onNitUpdated()V
    .locals 1

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->onNitUpdated()V

    .line 1603
    return-void
.end method

.method protected onPmtUpdated()V
    .locals 1

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->onPmtUpdated()V

    .line 1579
    return-void
.end method

.method protected onSdtUpdated()V
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->onSdtUpdated()V

    .line 1651
    return-void
.end method

.method protected onStartRecViewFinished(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;)V
    .locals 0
    .param p1, "aAudioInformation"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;
    .param p2, "aVideoDecodeStatus"    # I
    .param p3, "aPauseResumeDataInstance"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;

    .prologue
    .line 2352
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->startRecDisp(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;)V

    .line 2357
    return-void
.end method

.method protected onStartViewFinished(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;)V
    .locals 0
    .param p1, "aAudioInformation"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;
    .param p2, "aVideoDecodeStatus"    # I
    .param p3, "aPauseResumeDataInstance"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;

    .prologue
    .line 698
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->startDisp(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;)V

    .line 703
    return-void
.end method

.method onVideoInformation(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V
    .locals 1
    .param p1, "aPicWidth"    # I
    .param p2, "aPicHeight"    # I
    .param p3, "aAspect"    # I
    .param p4, "aViewInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->onVideoInformation(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V

    .line 1319
    return-void
.end method

.method protected outDeviceSetAudio(I)V
    .locals 1
    .param p1, "aAudioDevice"    # I

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->outDeviceSetAudio(I)V

    .line 1809
    return-void
.end method

.method protected pause(IIZZ)V
    .locals 1
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z
    .param p4, "aPidClear"    # Z

    .prologue
    .line 890
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->pause(IIZZ)V

    .line 895
    return-void
.end method

.method protected pausePlay()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1996
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->recPlayInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->pausePlay()I

    move-result v0

    .line 1997
    .local v0, "lRet":I
    if-nez v0, :cond_0

    .line 1998
    new-instance v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;

    invoke-direct {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;-><init>()V

    .line 1999
    .local v1, "playStateSet":Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;
    const/4 v2, 0x0

    iput v2, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlayState:I

    .line 2000
    iput v3, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlayDirection:I

    .line 2001
    iput v3, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlaySpeed:I

    .line 2002
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->captionSetCaptionPlayState(Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;)I

    move-result v0

    .line 2008
    .end local v1    # "playStateSet":Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;
    :cond_0
    return v0
.end method

.method protected prepPlay(I)I
    .locals 2
    .param p1, "aPrgNo"    # I

    .prologue
    .line 1905
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->recPlayInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->prepPlay(I)I

    move-result v0

    .line 1910
    .local v0, "lRet":I
    return v0
.end method

.method protected resume()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1962
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->recPlayInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->resume()I

    move-result v0

    .line 1963
    .local v0, "lRet":I
    if-nez v0, :cond_0

    .line 1964
    new-instance v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;

    invoke-direct {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;-><init>()V

    .line 1965
    .local v1, "playStateSet":Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;
    iput v3, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlayState:I

    .line 1966
    iput v3, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlayDirection:I

    .line 1967
    iput v3, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlaySpeed:I

    .line 1968
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->captionSetCaptionPlayState(Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;)I

    move-result v0

    .line 1974
    .end local v1    # "playStateSet":Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;
    :cond_0
    return v0
.end method

.method protected rewindPlay()I
    .locals 3

    .prologue
    .line 2064
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->recPlayInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->rewindPlay()I

    move-result v0

    .line 2065
    .local v0, "lRet":I
    if-nez v0, :cond_0

    .line 2066
    new-instance v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;

    invoke-direct {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;-><init>()V

    .line 2067
    .local v1, "playStateSet":Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;
    const/4 v2, 0x1

    iput v2, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlayState:I

    .line 2068
    const/4 v2, -0x1

    iput v2, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlayDirection:I

    .line 2069
    const/4 v2, 0x2

    iput v2, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlaySpeed:I

    .line 2070
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->captionSetCaptionPlayState(Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;)I

    move-result v0

    .line 2076
    .end local v1    # "playStateSet":Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;
    :cond_0
    return v0
.end method

.method protected scan(I)V
    .locals 1
    .param p1, "aUserParam"    # I

    .prologue
    .line 721
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->scanInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStScanFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStScanFunctionSv;->scan(I)V

    .line 726
    return-void
.end method

.method protected seekTo(J)I
    .locals 3
    .param p1, "aMsec"    # J

    .prologue
    .line 2100
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->recPlayInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->seekTo(J)I

    move-result v0

    .line 2101
    .local v0, "lRet":I
    if-nez v0, :cond_0

    .line 2102
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->captionSetPlayPositionChange()I

    move-result v0

    .line 2108
    :cond_0
    return v0
.end method

.method protected selectAudioLanguage(I)V
    .locals 2
    .param p1, "aComponentTag"    # I

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->selectAudioLanguage(S)V

    .line 1116
    return-void
.end method

.method protected selectAudioMode(I)V
    .locals 1
    .param p1, "aMode"    # I

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->selectAudioMode(I)V

    .line 1092
    return-void
.end method

.method protected setAudioManager(Landroid/media/AudioManager;)V
    .locals 1
    .param p1, "aAudioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->setAudioManager(Landroid/media/AudioManager;)V

    .line 277
    return-void
.end method

.method protected setCaptionDisplayAreaInfo(IIII)V
    .locals 1
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->setCaptionDisplayAreaInfo(IIII)V

    .line 177
    return-void
.end method

.method protected setCaptionSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "aCaptionSurface"    # Landroid/view/Surface;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->setCaptionSurface(Landroid/view/Surface;)V

    .line 148
    return-void
.end method

.method protected setConflictEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)V
    .locals 1
    .param p1, "aServiceContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .param p2, "aServiceType"    # I
    .param p3, "aCfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;

    .prologue
    .line 391
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getInternalFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    .line 394
    .local v0, "internal":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    invoke-virtual {v0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->registerCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 399
    return-void
.end method

.method protected setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    .locals 1
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    .line 852
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 857
    return-void
.end method

.method protected setEventListener(Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;)V
    .locals 6
    .param p1, "aListener"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    .prologue
    const/4 v5, 0x1

    .line 353
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->setListener(Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;)I

    move-result v0

    .line 359
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 360
    const-string v1, "error(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v1, v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v1

    .line 367
    :cond_0
    return-void
.end method

.method protected setLanguageIndex(II)V
    .locals 1
    .param p1, "aType"    # I
    .param p2, "aLang"    # I

    .prologue
    .line 828
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->setLanguageIndex(II)V

    .line 833
    return-void
.end method

.method protected setResumePlaying(Z)V
    .locals 1
    .param p1, "aResumePlaying"    # Z

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->recPlayInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->setResumePlaying(Z)V

    .line 2209
    return-void
.end method

.method protected setState(IZ)V
    .locals 1
    .param p1, "aType"    # I
    .param p2, "aState"    # Z

    .prologue
    .line 772
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->setState(IZ)V

    .line 777
    return-void
.end method

.method protected setSuperimposeDisplayAreaInfo(IIII)V
    .locals 1
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->setSuperimposeDisplayAreaInfo(IIII)V

    .line 232
    return-void
.end method

.method protected setSuperimposeSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "aSuperimposeSurface"    # Landroid/view/Surface;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->setSuperimposeSurface(Landroid/view/Surface;)V

    .line 202
    return-void
.end method

.method setVideoDisplay(I)V
    .locals 1
    .param p1, "aRotateDegrees"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->setVideoDisplay(I)V

    .line 329
    return-void
.end method

.method protected setVideoDisplayAreaInfo(IIII)V
    .locals 1
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->setVideoDisplayAreaInfo(IIII)V

    .line 307
    return-void
.end method

.method protected setVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "aVideoSurface"    # Landroid/view/Surface;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->setVideoSurface(Landroid/view/Surface;)V

    .line 257
    return-void
.end method

.method setWakeLock(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Z)V
    .locals 6
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .param p2, "aWakeLockFlag"    # Z

    .prologue
    .line 2483
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->MMBST_WAKELOCK_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 2485
    if-eqz p2, :cond_1

    .line 2486
    :try_start_0
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 2488
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "WakeLock Partial"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 2490
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2500
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2504
    return-void

    .line 2492
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2493
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2494
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->mWakelock:Landroid/os/PowerManager$WakeLock;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2497
    :catch_0
    move-exception v0

    .line 2498
    .local v0, "err":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "Exception by PowerManager"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2500
    .end local v0    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method protected startRecPlay(I)I
    .locals 4
    .param p1, "aUserParam"    # I

    .prologue
    const/4 v3, 0x1

    .line 2281
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->startSubtitleCaption()V

    .line 2283
    new-instance v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;

    invoke-direct {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;-><init>()V

    .line 2284
    .local v1, "playStateSet":Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;
    iput v3, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlayState:I

    .line 2285
    iput v3, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlayDirection:I

    .line 2286
    iput v3, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;->mPlaySpeed:I

    .line 2287
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->captionSetCaptionPlayState(Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;)I

    move-result v0

    .line 2288
    .local v0, "lRet":I
    if-nez v0, :cond_0

    .line 2289
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->recPlayInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->startPlay(I)I

    move-result v0

    .line 2296
    :cond_0
    return v0
.end method

.method protected stop()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->deletePmtInformation()V

    .line 629
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->deleteNitInformation()V

    .line 630
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->deleteBitInformation()V

    .line 631
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->deleteSdtInformation()V

    .line 632
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->deleteEitInformation()V

    .line 635
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->selChInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->stop()V

    .line 640
    return-void
.end method

.method protected stopDisp(Z)V
    .locals 3
    .param p1, "aBluetoothStatus"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 515
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDecode(I)V

    .line 517
    invoke-virtual {p0, v1, v2, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->audioDecode(ISIZ)V

    .line 520
    const/16 v0, 0x30

    invoke-virtual {p0, v2, v0, v1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->pause(IIZZ)V

    .line 522
    const/16 v0, 0x38

    invoke-virtual {p0, v2, v0, v1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->pause(IIZZ)V

    .line 527
    return-void
.end method

.method protected stopDispPart(Z)V
    .locals 3
    .param p1, "aBluetoothStatus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 548
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDecode(I)V

    .line 550
    invoke-virtual {p0, v2, v1, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->audioDecode(ISIZ)V

    .line 553
    const/16 v0, 0x30

    invoke-virtual {p0, v1, v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->pause(IIZZ)V

    .line 555
    const/16 v0, 0x38

    invoke-virtual {p0, v1, v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->pause(IIZZ)V

    .line 560
    return-void
.end method

.method protected stopLibrary()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->finalizeAv()V

    .line 581
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->endCaption()V

    .line 586
    return-void
.end method

.method protected stopLibraryForRecPlay()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->finalizeAv()V

    .line 606
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->capInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStCaptionFunctionSv;->endSubtitleCaption()V

    .line 611
    return-void
.end method

.method protected stopPlay()I
    .locals 2

    .prologue
    .line 1933
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->deletePmtInformation()V

    .line 1934
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->recPlayInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecContentPlayFunctionSv;->stopPlay()I

    move-result v0

    .line 1939
    .local v0, "lRet":I
    return v0
.end method

.method protected stopRecDispPart(Z)V
    .locals 3
    .param p1, "aBluetoothStatus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2434
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDecode(I)V

    .line 2436
    invoke-virtual {p0, v2, v1, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->audioDecode(ISIZ)V

    .line 2439
    const/16 v0, 0x30

    invoke-virtual {p0, v1, v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->pause(IIZZ)V

    .line 2444
    return-void
.end method

.method protected stopRecPlayDisp(Z)V
    .locals 3
    .param p1, "aBluetoothStatus"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2317
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDecode(I)V

    .line 2319
    invoke-virtual {p0, v1, v2, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->audioDecode(ISIZ)V

    .line 2322
    const/16 v0, 0x30

    invoke-virtual {p0, v2, v0, v1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->pause(IIZZ)V

    .line 2327
    return-void
.end method

.method protected tune(II)I
    .locals 2
    .param p1, "aServiceId"    # I
    .param p2, "aUserParam"    # I

    .prologue
    .line 662
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->deletePmtInformation()V

    .line 663
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->deleteSdtInformation()V

    .line 664
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->secInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->deleteEitInformation()V

    .line 667
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->selChInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelFunctionSv;->tune(II)I

    move-result v0

    .line 672
    .local v0, "result":I
    return v0
.end method

.method protected unsetConflictEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)V
    .locals 1
    .param p1, "aServiceContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .param p2, "aServiceType"    # I
    .param p3, "aCfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;

    .prologue
    .line 423
    if-eqz p3, :cond_0

    .line 424
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getInternalFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    .line 427
    .local v0, "internal":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    invoke-virtual {v0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->unregisterCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 433
    .end local v0    # "internal":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    :cond_0
    return-void
.end method

.method protected videoDecode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 957
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v0, v1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoDecode(IS)V

    .line 962
    return-void
.end method

.method protected videoDecode(I)V
    .locals 4
    .param p1, "aState"    # I

    .prologue
    const/4 v3, 0x1

    .line 915
    and-int/lit8 v0, p1, 0x1

    .line 916
    .local v0, "videoDecodeState":I
    and-int/lit8 v2, p1, 0x10

    shr-int/lit8 v1, v2, 0x4

    .line 921
    .local v1, "videoMuteState":I
    if-eq v3, v0, :cond_0

    if-ne v3, v1, :cond_1

    .line 924
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->closeVideoDisplay()V

    .line 927
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->videoDecode(IS)V

    .line 930
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 933
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->openVideoDisplay()V

    .line 939
    :cond_2
    return-void
.end method

.method protected videoDisplayControl(I)V
    .locals 2
    .param p1, "aState"    # I

    .prologue
    .line 982
    packed-switch p1, :pswitch_data_0

    .line 992
    const-string v0, "input param error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 999
    :goto_0
    return-void

    .line 984
    :pswitch_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->closeVideoDisplay()V

    goto :goto_0

    .line 988
    :pswitch_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->avInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioVideoFunctionSv;->openVideoDisplay()V

    goto :goto_0

    .line 982
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
