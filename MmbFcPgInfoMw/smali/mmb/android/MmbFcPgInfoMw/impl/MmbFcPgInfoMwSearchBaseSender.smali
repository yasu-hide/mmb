.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;
.source "MmbFcPgInfoMwSearchBaseSender.java"


# instance fields
.field protected sendFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "aClientId"    # I
    .param p2, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;->sendFileName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method protected doReceiveData(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    :try_start_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;->readFile(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;->sendFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;->deleteFile(Ljava/lang/String;)V

    .line 55
    return-void

    .line 53
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;->sendFileName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;->deleteFile(Ljava/lang/String;)V

    throw v0
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
    .line 40
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;->getSendFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;->sendFileName:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;->sendFileName:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 44
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;->sendFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;->sendFile(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected receiveError()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;->sendFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;->deleteFile(Ljava/lang/String;)V

    .line 60
    return-void
.end method
