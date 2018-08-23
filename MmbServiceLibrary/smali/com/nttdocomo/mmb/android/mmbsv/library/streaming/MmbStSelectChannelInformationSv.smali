.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
.super Ljava/lang/Object;
.source "MmbStSelectChannelInformationSv.java"


# instance fields
.field private drawSettingSubtitle:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

.field private drawSettingSuperimpose:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

.field private executeStartCaptionFlag:Z

.field private executionSelectStart:Z

.field private isBmlDraw:Z

.field public mmbReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

.field private reservationUserParam:I

.field private scanUserParam:I

.field private selectChannelUserParam:I

.field private serviceId:I

.field private startViewUserParam:I

.field private superimposeNotifyNothingTime:I

.field private tuneType:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->serviceId:I

    .line 41
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->tuneType:I

    .line 52
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->executionSelectStart:Z

    .line 57
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->selectChannelUserParam:I

    .line 62
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->scanUserParam:I

    .line 67
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->startViewUserParam:I

    .line 72
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->reservationUserParam:I

    .line 77
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->drawSettingSubtitle:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .line 82
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->drawSettingSuperimpose:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .line 87
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->executeStartCaptionFlag:Z

    .line 92
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->superimposeNotifyNothingTime:I

    .line 97
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->isBmlDraw:Z

    return-void
.end method


# virtual methods
.method public getBmlDraw()Z
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->isBmlDraw:Z

    return v0
.end method

.method protected getDrawSettingSubtitle()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->drawSettingSubtitle:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    return-object v0
.end method

.method protected getDrawSettingSuperimpose()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->drawSettingSuperimpose:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    return-object v0
.end method

.method protected getExceSelectStart()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->executionSelectStart:Z

    return v0
.end method

.method public getExecuteStartCaptionFlag()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->executeStartCaptionFlag:Z

    return v0
.end method

.method public getReservationUserParam()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->reservationUserParam:I

    return v0
.end method

.method protected getScanUserParam()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->scanUserParam:I

    return v0
.end method

.method public getScheduleIntentData()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->mmbReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    return-object v0
.end method

.method protected getSelectChannelUserParam()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->selectChannelUserParam:I

    return v0
.end method

.method protected getServiceId()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->serviceId:I

    return v0
.end method

.method protected getStartViewUserParam()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->startViewUserParam:I

    return v0
.end method

.method public getSuperimposeNotifyNothingTime()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->superimposeNotifyNothingTime:I

    return v0
.end method

.method protected getTuneType()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->tuneType:I

    return v0
.end method

.method public setBmlDraw(Z)V
    .locals 0
    .param p1, "aIsBmlDraw"    # Z

    .prologue
    .line 536
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->isBmlDraw:Z

    .line 540
    return-void
.end method

.method protected setDrawSettings(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    .locals 2
    .param p1, "aDrawSettings"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    const/4 v0, 0x0

    .line 397
    if-nez p1, :cond_1

    .line 398
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->drawSettingSubtitle:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .line 399
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->drawSettingSuperimpose:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbType:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    .line 407
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->drawSettingSubtitle:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    goto :goto_0

    .line 408
    :cond_2
    iget v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->mmbType:I

    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    .line 409
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->drawSettingSuperimpose:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    goto :goto_0
.end method

.method protected setExceSelectStart(Z)V
    .locals 0
    .param p1, "aExecutionSelectStart"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->executionSelectStart:Z

    .line 241
    return-void
.end method

.method public setExecuteStartCaptionFlag(Z)V
    .locals 0
    .param p1, "aExecutestartcaptionflag"    # Z

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->executeStartCaptionFlag:Z

    .line 468
    return-void
.end method

.method public setReservationUserParam(I)V
    .locals 0
    .param p1, "aUserParam"    # I

    .prologue
    .line 361
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->reservationUserParam:I

    .line 365
    return-void
.end method

.method protected setScanUserParam(I)V
    .locals 0
    .param p1, "aUserParam"    # I

    .prologue
    .line 308
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->scanUserParam:I

    .line 312
    return-void
.end method

.method public setScheduleIntentData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V
    .locals 0
    .param p1, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->mmbReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    .line 169
    return-void
.end method

.method protected setSelectChannelUserParam(I)V
    .locals 0
    .param p1, "aUserParam"    # I

    .prologue
    .line 273
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->selectChannelUserParam:I

    .line 277
    return-void
.end method

.method protected setServiceId(I)V
    .locals 0
    .param p1, "aServiceId"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->serviceId:I

    .line 133
    return-void
.end method

.method protected setStartViewUserParam(I)V
    .locals 0
    .param p1, "aUserParam"    # I

    .prologue
    .line 343
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->startViewUserParam:I

    .line 347
    return-void
.end method

.method public setSuperimposeNotifyNothingTime(I)V
    .locals 0
    .param p1, "aNothingTime"    # I

    .prologue
    .line 500
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->superimposeNotifyNothingTime:I

    .line 504
    return-void
.end method

.method protected setTuneType(I)V
    .locals 0
    .param p1, "aMode"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->tuneType:I

    .line 205
    return-void
.end method
