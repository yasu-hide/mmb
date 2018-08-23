.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;
.super Ljava/lang/Object;
.source "MmbStPauseResumeSettingDataSv.java"


# instance fields
.field private mSubtitleCanvas:Z

.field private mSubtitlePidClear:Z

.field private mSubtitlestatus:I

.field private mSuperimposeCanvas:Z

.field private mSuperimposePidClear:Z

.field private mSuperimposestatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSubtitlestatus:I

    .line 33
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSubtitleCanvas:Z

    .line 34
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSubtitlePidClear:Z

    .line 35
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSuperimposestatus:I

    .line 36
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSuperimposeCanvas:Z

    .line 37
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSuperimposePidClear:Z

    return-void
.end method


# virtual methods
.method protected getSubtitleSuperimposeCanvas(I)Z
    .locals 3
    .param p1, "aType"    # I

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "canvas":Z
    sparse-switch p1, :sswitch_data_0

    .line 153
    const-string v1, "getSubtitleSuperimposeCanvas error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :goto_0
    return v0

    .line 147
    :sswitch_0
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSubtitleCanvas:Z

    .line 148
    goto :goto_0

    .line 150
    :sswitch_1
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSuperimposeCanvas:Z

    .line 151
    goto :goto_0

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x38 -> :sswitch_1
    .end sparse-switch
.end method

.method protected getSubtitleSuperimposePidClear(I)Z
    .locals 3
    .param p1, "aType"    # I

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "clear":Z
    sparse-switch p1, :sswitch_data_0

    .line 189
    const-string v1, "getSubtitleSuperimposePidClear error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :goto_0
    return v0

    .line 183
    :sswitch_0
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSubtitlePidClear:Z

    .line 184
    goto :goto_0

    .line 186
    :sswitch_1
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSuperimposePidClear:Z

    .line 187
    goto :goto_0

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x38 -> :sswitch_1
    .end sparse-switch
.end method

.method protected getSubtitleSuperimposeStatus(I)I
    .locals 3
    .param p1, "aType"    # I

    .prologue
    .line 107
    const/16 v0, 0xff

    .line 109
    .local v0, "status":I
    sparse-switch p1, :sswitch_data_0

    .line 117
    const-string v1, "getSubtitleSuperimposeStatus error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :goto_0
    return v0

    .line 111
    :sswitch_0
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSubtitlestatus:I

    .line 112
    goto :goto_0

    .line 114
    :sswitch_1
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSuperimposestatus:I

    .line 115
    goto :goto_0

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x38 -> :sswitch_1
    .end sparse-switch
.end method

.method protected setSubtitleStatus(IIZZ)V
    .locals 2
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z
    .param p4, "aPidClear"    # Z

    .prologue
    .line 70
    sparse-switch p2, :sswitch_data_0

    .line 82
    const-string v0, "setSubtitleStatus error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :goto_0
    return-void

    .line 72
    :sswitch_0
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSubtitlestatus:I

    .line 73
    iput-boolean p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSubtitleCanvas:Z

    .line 74
    iput-boolean p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSubtitlePidClear:Z

    goto :goto_0

    .line 77
    :sswitch_1
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSuperimposestatus:I

    .line 78
    iput-boolean p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSuperimposeCanvas:Z

    .line 79
    iput-boolean p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSuperimposePidClear:Z

    goto :goto_0

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x38 -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbStPauseResumeSettingDataSv [mSubtitlestatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSubtitlestatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubtitleCanvas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSubtitleCanvas:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubtitlePidClear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSubtitlePidClear:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSuperimposestatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSuperimposestatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSuperimposeCanvas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSuperimposeCanvas:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSuperimposePidClear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->mSuperimposePidClear:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
