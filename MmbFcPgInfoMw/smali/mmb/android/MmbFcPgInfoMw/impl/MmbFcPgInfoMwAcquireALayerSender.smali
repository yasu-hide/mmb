.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;
.source "MmbFcPgInfoMwAcquireALayerSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCPGINFOMW_ACQUIRE_A_LAYER"


# instance fields
.field private alayerEnv:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;

.field private returnCd:I

.field private sendFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(I[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;)V
    .locals 2
    .param p1, "aClientId"    # I
    .param p2, "aAlayerEnv"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;

    .prologue
    const/4 v1, 0x0

    .line 50
    const-string v0, "MESSAGE_MMBFCPGINFOMW_ACQUIRE_A_LAYER"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 36
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->alayerEnv:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;

    .line 39
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->sendFileName:Ljava/lang/String;

    .line 42
    const/high16 v0, -0x80000000

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->returnCd:I

    .line 51
    invoke-virtual {p2}, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->alayerEnv:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;

    .line 52
    return-void
.end method


# virtual methods
.method protected doReceiveData(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->returnCd:I

    .line 95
    iget v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->returnCd:I

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->returnCd:I

    .line 98
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->sendFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->deleteFile(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method protected doSendData(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->getSendFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->sendFileName:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->sendFileName:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 68
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->sendFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->sendFile(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public getReturnCd()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->returnCd:I

    return v0
.end method

.method protected receiveError()V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->returnCd:I

    .line 104
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->sendFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->deleteFile(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method protected writeFile(Ljava/io/FileOutputStream;)V
    .locals 6
    .param p1, "aOutput"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->alayerEnv:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;

    array-length v4, v4

    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 74
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->alayerEnv:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 76
    .local v1, "element":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;
    iget v4, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;->serviceId:I

    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 79
    iget v4, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;->port:I

    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 82
    iget v4, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;->tsi_primary:I

    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 85
    iget v4, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;->tsi_secondary:I

    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 88
    iget-object v4, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;->ipaddress:Ljava/lang/String;

    const/16 v5, 0x30

    invoke-virtual {p0, p1, v4, v5}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAcquireALayerSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "element":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;
    :cond_0
    return-void
.end method
