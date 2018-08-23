.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwAcceptFdtInstanceSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_ACCEPT_FDT_INSTANCE"


# instance fields
.field private crid:Ljava/lang/String;

.field private data:[B

.field private fileName:Ljava/lang/String;

.field private first:Z

.field private returnCd:I


# direct methods
.method public constructor <init>(ILjava/lang/String;[BZ)V
    .locals 2
    .param p1, "aClientId"    # I
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aData"    # [B
    .param p4, "aFirst"    # Z

    .prologue
    const/4 v1, 0x0

    .line 50
    const-string v0, "MESSAGE_MMBFCCONTMW_ACCEPT_FDT_INSTANCE"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 29
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->crid:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->data:[B

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->first:Z

    .line 38
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->fileName:Ljava/lang/String;

    .line 41
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_GENERAL:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->returnCd:I

    .line 51
    iput-object p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->crid:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->data:[B

    .line 53
    iput-boolean p4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->first:Z

    .line 54
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
    .line 83
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->returnCd:I

    .line 84
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
    .line 59
    const-string v0, "MESSAGE_MMBFCCONTMW_ACCEPT_FDT_INSTANCE"

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->getSendFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->fileName:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->fileName:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 63
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->sendFile(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public getReturnCd()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->returnCd:I

    return v0
.end method

.method protected receiveError()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->deleteFile(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method protected writeFile(Ljava/io/FileOutputStream;)V
    .locals 2
    .param p1, "aOutput"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->crid:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 72
    iget-boolean v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->first:Z

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    .line 75
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->data:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 78
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->data:[B

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptFdtInstanceSender;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 79
    return-void
.end method
