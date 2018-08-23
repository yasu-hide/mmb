.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwAcceptAllRepairDataSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_ACCEPT_ALL_REPAIR_DATA"


# instance fields
.field private contentsCrid:Ljava/lang/String;

.field private contentsLocation:Ljava/lang/String;

.field private data:[B

.field private fileName:Ljava/lang/String;

.field private offset:J

.field private returnCd:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;J[B)V
    .locals 4
    .param p1, "aClientId"    # I
    .param p2, "aContentsCrid"    # Ljava/lang/String;
    .param p3, "aLocation"    # Ljava/lang/String;
    .param p4, "aOffset"    # J
    .param p6, "aData"    # [B

    .prologue
    const/4 v2, 0x0

    .line 58
    const-string v0, "MESSAGE_MMBFCCONTMW_ACCEPT_ALL_REPAIR_DATA"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 32
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->contentsCrid:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->contentsLocation:Ljava/lang/String;

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->offset:J

    .line 41
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->data:[B

    .line 44
    const/high16 v0, -0x80000000

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->returnCd:I

    .line 47
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->fileName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->contentsCrid:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->contentsLocation:Ljava/lang/String;

    .line 61
    iput-wide p4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->offset:J

    .line 62
    iput-object p6, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->data:[B

    .line 63
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
    .line 100
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->returnCd:I

    .line 101
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
    .line 76
    const-string v0, "MESSAGE_MMBFCCONTMW_ACCEPT_ALL_REPAIR_DATA"

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->getSendFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->fileName:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->fileName:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 80
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->sendFile(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public getReturnCd()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->returnCd:I

    return v0
.end method

.method protected receiveError()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->deleteFile(Ljava/lang/String;)V

    .line 106
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
    const/16 v1, 0x100

    .line 87
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->contentsCrid:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 89
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->contentsLocation:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 91
    iget-wide v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->offset:J

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 93
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->data:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 95
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->data:[B

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptAllRepairDataSender;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 96
    return-void
.end method
