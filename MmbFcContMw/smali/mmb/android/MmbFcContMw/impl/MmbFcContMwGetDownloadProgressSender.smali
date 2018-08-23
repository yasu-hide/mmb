.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadProgressSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwGetDownloadProgressSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_GET_DOWNLOAD_PROGRESS"


# instance fields
.field private contentsCrid:Ljava/lang/String;

.field private status:Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "aClientId"    # I
    .param p2, "aContentsCrid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 45
    const-string v0, "MESSAGE_MMBFCCONTMW_GET_DOWNLOAD_PROGRESS"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 33
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadProgressSender;->contentsCrid:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadProgressSender;->status:Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    .line 46
    iput-object p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadProgressSender;->contentsCrid:Ljava/lang/String;

    .line 47
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
    .line 66
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadProgressSender;->setContentsType(Ljava/io/InputStream;)Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadProgressSender;->status:Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    .line 67
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
    .line 60
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadProgressSender;->contentsCrid:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadProgressSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public getStatus()Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadProgressSender;->status:Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    return-object v0
.end method
