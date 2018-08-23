.class public abstract Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.super Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;
.source "MmbFcContMwAbstractBaseSender.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "aClientId"    # I
    .param p2, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;-><init>(ILjava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected abstract doReceiveData(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doSendData(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getSendFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    invoke-direct {v0}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;-><init>()V

    .line 109
    .local v0, "info":Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;
    const-string v1, "%s/%s%d.snd"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getCommonDataPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->getClientId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "MmbFcContMwClient"

    return-object v0
.end method

.method protected isReceive()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method protected readContentsInfo(Ljava/io/InputStream;Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;)V
    .locals 12
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aInfo"    # Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 137
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readInt(Ljava/io/InputStream;)I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 138
    iput-boolean v10, p2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->played:Z

    .line 145
    :goto_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, p2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->downloadedTime:J

    .line 148
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, p2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->filesize:J

    .line 150
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, p2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->repairsize:J

    .line 153
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readBoolean(Ljava/io/InputStream;)Z

    move-result v6

    iput-boolean v6, p2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->exported:Z

    .line 156
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 157
    .local v1, "length":I
    if-lez v1, :cond_0

    .line 158
    invoke-virtual {p0, p1, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->exportPath:Ljava/lang/String;

    .line 162
    :cond_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readInt(Ljava/io/InputStream;)I

    move-result v2

    .line 164
    .local v2, "resumetype":I
    :try_start_0
    invoke-static {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->valueOf(I)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    move-result-object v6

    iput-object v6, p2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->resumeType:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_1
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->setContentsType(Ljava/io/InputStream;)Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    move-result-object v6

    iput-object v6, p2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->contentsState:Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    .line 174
    new-instance v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    invoke-direct {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;-><init>()V

    iput-object v6, p2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .line 175
    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->maxLength()I

    move-result v6

    invoke-virtual {p0, p1, v6}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "type":Ljava/lang/String;
    :try_start_1
    invoke-static {v5}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    move-result-object v3

    .line 180
    .local v3, "t":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    iget-object v6, p2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iput-object v3, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->infoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    .end local v3    # "t":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    :goto_2
    iget-object v6, p2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    invoke-virtual {p0, p1, v6}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readInfoBase(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)V

    .line 189
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readBoolean(Ljava/io/InputStream;)Z

    move-result v4

    .line 190
    .local v4, "tcmvalid":Z
    if-eqz v4, :cond_1

    .line 191
    new-instance v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    invoke-direct {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;-><init>()V

    iput-object v6, p2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    .line 192
    iget-object v6, p2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    invoke-virtual {p0, p1, v6}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readTransmitCtrlInfo(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;)V

    .line 194
    :cond_1
    return-void

    .line 141
    .end local v1    # "length":I
    .end local v2    # "resumetype":I
    .end local v4    # "tcmvalid":Z
    .end local v5    # "type":Ljava/lang/String;
    :cond_2
    iput-boolean v11, p2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->played:Z

    goto :goto_0

    .line 166
    .restart local v1    # "length":I
    .restart local v2    # "resumetype":I
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v7, "unknown type[%d]."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v0, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 182
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v5    # "type":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 183
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v7, "unknown type[%s]."

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v5, v8, v11

    invoke-virtual {v6, v7, v0, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected final receiveData(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 75
    .local v0, "cid":I
    const/16 v2, 0x40

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->isMmbDebuggableD()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "!check! send cid[%d] msg[%s] - receive cid[%d] msg[%s]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->getClientId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->getClientId()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 83
    :cond_1
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->receiveError()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_2
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->doReceiveData(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method protected receiveError()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method protected final sendData(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->getClientId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 60
    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 62
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->doSendData(Ljava/io/OutputStream;)V

    .line 63
    return-void
.end method

.method protected setContentsType(Ljava/io/InputStream;)Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;
    .locals 2
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    invoke-direct {v0}, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;-><init>()V

    .line 121
    .local v0, "status":Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;->contProgress:I

    .line 122
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;->contSize:I

    .line 123
    invoke-static {}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->maxLength()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    move-result-object v1

    iput-object v1, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;->contStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 125
    return-object v0
.end method
