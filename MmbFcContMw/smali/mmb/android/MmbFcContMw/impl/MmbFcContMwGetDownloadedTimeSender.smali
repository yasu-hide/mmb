.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadedTimeSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwGetDownloadedTimeSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_GET_DOWNLOADED_TIME"


# instance fields
.field private contentsCrid:Ljava/lang/String;

.field private downloadedTime:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "aClientId"    # I
    .param p2, "aContentsCrid"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "MESSAGE_MMBFCCONTMW_GET_DOWNLOADED_TIME"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadedTimeSender;->contentsCrid:Ljava/lang/String;

    .line 35
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadedTimeSender;->downloadedTime:J

    .line 44
    iput-object p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadedTimeSender;->contentsCrid:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method protected doReceiveData(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadedTimeSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadedTimeSender;->downloadedTime:J

    .line 64
    iget-wide v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadedTimeSender;->downloadedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 65
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadedTimeSender;->downloadedTime:J

    .line 67
    :cond_0
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
    .line 58
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadedTimeSender;->contentsCrid:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadedTimeSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public getDownloadedTime()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetDownloadedTimeSender;->downloadedTime:J

    return-wide v0
.end method
