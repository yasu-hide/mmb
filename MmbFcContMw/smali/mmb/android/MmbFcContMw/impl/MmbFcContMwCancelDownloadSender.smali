.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelDownloadSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwCancelDownloadSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_CANCEL_DOWNLOAD"


# instance fields
.field private contentsCrid:Ljava/lang/String;

.field private returnCd:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "aClientId"    # I
    .param p2, "aContentsCrid"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "MESSAGE_MMBFCCONTMW_CANCEL_DOWNLOAD"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelDownloadSender;->contentsCrid:Ljava/lang/String;

    .line 34
    const/high16 v0, -0x80000000

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelDownloadSender;->returnCd:I

    .line 43
    iput-object p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelDownloadSender;->contentsCrid:Ljava/lang/String;

    .line 44
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
    .line 62
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelDownloadSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelDownloadSender;->returnCd:I

    .line 63
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
    .line 57
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelDownloadSender;->contentsCrid:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelDownloadSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 58
    return-void
.end method

.method public getReturnCd()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCancelDownloadSender;->returnCd:I

    return v0
.end method
