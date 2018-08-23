.class public Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;
.super Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;
.source "MmbStRecCmMwSetSdMountStateSender.java"


# instance fields
.field private final MESSAGE_SD_MOUNT_STATE:I

.field private clientId:I

.field private mountState:I

.field private processId:I


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .param p1, "aMountState"    # I
    .param p2, "aClientId"    # I
    .param p3, "aPid"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->mountState:I

    .line 39
    const v0, 0x10005

    iput v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->MESSAGE_SD_MOUNT_STATE:I

    .line 55
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwSetSdMountStateSender() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput p1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->mountState:I

    .line 58
    iput p2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->clientId:I

    .line 59
    iput p3, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->processId:I

    .line 61
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwSetSdMountStateSender() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected finishSendData()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method protected readFile(Ljava/io/FileInputStream;)V
    .locals 0
    .param p1, "aInput"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 108
    return-void
.end method

.method protected receiveData()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 84
    return-void
.end method

.method protected sendData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "sendData() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->processId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->clientId:I

    if-gez v0, :cond_1

    .line 72
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "false by id client : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->clientId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", processId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->processId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v1, "false by id"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 76
    :cond_1
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "sendData() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method protected sendMessage(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "sendMessage() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const v0, 0x10005

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 95
    iget v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->processId:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 96
    iget v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->clientId:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 97
    iget v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->mountState:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 99
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetSdMountStateSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "sendMessage() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method protected writeFile(Ljava/io/FileOutputStream;)V
    .locals 0
    .param p1, "aOutput"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 116
    return-void
.end method
