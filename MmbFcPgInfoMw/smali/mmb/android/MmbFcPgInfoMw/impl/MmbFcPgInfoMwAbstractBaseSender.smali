.class public abstract Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;
.super Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;
.source "MmbFcPgInfoMwAbstractBaseSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender$1;
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "aClientId"    # I
    .param p2, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;-><init>(ILjava/lang/String;)V

    .line 47
    return-void
.end method

.method private setDownloadContentInfo(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;)V
    .locals 3
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "info"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->readBoolean(Ljava/io/InputStream;)Z

    move-result v0

    .line 234
    .local v0, "ondemandvalid":Z
    if-eqz v0, :cond_0

    .line 235
    new-instance v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;

    invoke-direct {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;-><init>()V

    iput-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->onDemandService:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;

    .line 236
    iget-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->onDemandService:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->readOnDemandService(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;)V

    .line 240
    :cond_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->readBoolean(Ljava/io/InputStream;)Z

    move-result v1

    .line 241
    .local v1, "tcmvalid":Z
    if-eqz v1, :cond_1

    .line 242
    new-instance v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    invoke-direct {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;-><init>()V

    iput-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    .line 243
    iget-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->readTransmitCtrlInfo(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;)V

    .line 245
    :cond_1
    return-void
.end method

.method private setGroupInfo(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGroupInformation;)V
    .locals 1
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "info"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGroupInformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGroupInformation;->promotional:Ljava/lang/String;

    .line 270
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->setCreditItem(Ljava/io/InputStream;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;

    move-result-object v0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGroupInformation;->creditsItem:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;

    .line 271
    return-void
.end method

.method private setInfoBase(Ljava/io/InputStream;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .locals 13
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->maxLength()I

    move-result v6

    invoke-virtual {p0, p1, v6}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "type":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    move-result-object v3

    .line 166
    .local v3, "t":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    sget-object v6, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender$1;->$SwitchMap$mmb$android$MmbFcPgInfoMw$MmbFcPgInfoMw$MmbFcPgInfoMwInformationType:[I

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 180
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v7, "unknown type[%s]."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    .end local v3    # "t":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    :goto_0
    return-object v5

    .line 168
    .restart local v3    # "t":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    :pswitch_0
    new-instance v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;

    invoke-direct {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;-><init>()V

    .end local v1    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .local v2, "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    move-object v1, v2

    .line 183
    .end local v2    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .restart local v1    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :goto_1
    iput-object v3, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->infoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    invoke-virtual {p0, p1, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->readInfoBase(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)V

    move-object v5, v1

    .line 192
    goto :goto_0

    .line 171
    :pswitch_1
    :try_start_1
    new-instance v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    invoke-direct {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;-><init>()V

    .end local v1    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .restart local v2    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    move-object v1, v2

    .line 172
    .end local v2    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .restart local v1    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    goto :goto_1

    .line 174
    :pswitch_2
    new-instance v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGroupInformation;

    invoke-direct {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGroupInformation;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .restart local v2    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    move-object v1, v2

    .line 175
    .end local v2    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .restart local v1    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    goto :goto_1

    .line 185
    .end local v3    # "t":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v7, "unknown type[%s]."

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v4, v8, v11

    invoke-virtual {v6, v7, v0, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setRealTimeContentInfo(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;)V
    .locals 5
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "info"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->readBoolean(Ljava/io/InputStream;)Z

    move-result v3

    .line 206
    .local v3, "serviceValid":Z
    if-eqz v3, :cond_0

    .line 207
    new-instance v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;

    invoke-direct {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;-><init>()V

    iput-object v4, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;->serviceInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;

    .line 208
    iget-object v4, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;->serviceInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;

    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->readServiceInfo(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;)V

    .line 212
    :cond_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 213
    .local v0, "countEvent":I
    if-lez v0, :cond_1

    .line 214
    new-array v1, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;

    .line 215
    .local v1, "event":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;
    iput-object v1, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;->broadcastEvent:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;

    .line 216
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 217
    new-instance v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;

    invoke-direct {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;-><init>()V

    aput-object v4, v1, v2

    .line 218
    aget-object v4, v1, v2

    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->readBroadcastEvent(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;)V

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "event":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;
    .end local v2    # "i":I
    :cond_1
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
    .line 112
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    invoke-direct {v0}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;-><init>()V

    .line 113
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

    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->getClientId()I

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
    .line 51
    const-string v0, "MmbFcPgInfoMw"

    return-object v0
.end method

.method protected isReceive()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
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
    .line 78
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 79
    .local v0, "cid":I
    const/16 v2, 0x40

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->isMmbDebuggableD()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "!check! send cid[%d] msg[%s] - receive cid[%d] msg[%s]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->getClientId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->getClientId()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 87
    :cond_1
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->receiveError()V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_2
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->doReceiveData(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method protected receiveError()V
    .locals 0

    .prologue
    .line 104
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
    .line 62
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->getClientId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 64
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 66
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->doSendData(Ljava/io/OutputStream;)V

    .line 67
    return-void
.end method

.method protected setContentInfo(Ljava/io/InputStream;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .locals 3
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->setInfoBase(Ljava/io/InputStream;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v0

    .line 127
    .local v0, "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-object v0

    .line 131
    :cond_0
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender$1;->$SwitchMap$mmb$android$MmbFcPgInfoMw$MmbFcPgInfoMw$MmbFcPgInfoMwInformationType:[I

    iget-object v2, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->infoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v1, v0

    .line 133
    check-cast v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;

    invoke-direct {p0, p1, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->setRealTimeContentInfo(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;)V

    goto :goto_0

    :pswitch_1
    move-object v1, v0

    .line 137
    check-cast v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    invoke-direct {p0, p1, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->setDownloadContentInfo(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;)V

    goto :goto_0

    :pswitch_2
    move-object v1, v0

    .line 141
    check-cast v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGroupInformation;

    invoke-direct {p0, p1, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;->setGroupInfo(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGroupInformation;)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
