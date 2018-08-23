.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwAcceptRepairDataSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_ACCEPT_REPAIR_DATA"


# instance fields
.field private contentsCrid:Ljava/lang/String;

.field private data:[B

.field private fileName:Ljava/lang/String;

.field private parts:Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

.field private returnCd:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;[B)V
    .locals 2
    .param p1, "aClientId"    # I
    .param p2, "aContentsCrid"    # Ljava/lang/String;
    .param p3, "aParts"    # Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .param p4, "aData"    # [B

    .prologue
    const/4 v1, 0x0

    .line 58
    const-string v0, "MESSAGE_MMBFCCONTMW_ACCEPT_REPAIR_DATA"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 35
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->contentsCrid:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->parts:Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    .line 41
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->data:[B

    .line 44
    const/high16 v0, -0x80000000

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->returnCd:I

    .line 47
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->fileName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->contentsCrid:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->parts:Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    .line 61
    iput-object p4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->data:[B

    .line 62
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
    .line 109
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->returnCd:I

    .line 110
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
    .line 75
    const-string v0, "MESSAGE_MMBFCCONTMW_ACCEPT_REPAIR_DATA"

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->getSendFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->fileName:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->fileName:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 79
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->sendFile(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public getReturnCd()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->returnCd:I

    return v0
.end method

.method protected receiveError()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->deleteFile(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method protected writeFile(Ljava/io/FileOutputStream;)V
    .locals 8
    .param p1, "aOutput"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x100

    .line 86
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->contentsCrid:Ljava/lang/String;

    invoke-virtual {p0, p1, v5, v6}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 88
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->parts:Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->contentLocation:Ljava/lang/String;

    invoke-virtual {p0, p1, v5, v6}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 91
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->parts:Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    iget-object v5, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    array-length v1, v5

    .line 92
    .local v1, "count":I
    invoke-virtual {p0, p1, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 94
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->parts:Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    iget-object v0, v5, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    .local v0, "arr$":[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 96
    .local v4, "m":Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    iget-wide v6, v4, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->offset:J

    invoke-virtual {p0, p1, v6, v7}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 98
    iget-wide v6, v4, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->size:J

    invoke-virtual {p0, p1, v6, v7}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v4    # "m":Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    :cond_0
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->data:[B

    array-length v5, v5

    invoke-virtual {p0, p1, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 104
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->data:[B

    invoke-virtual {p0, p1, v5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAcceptRepairDataSender;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 105
    return-void
.end method
