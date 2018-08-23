.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;
.source "MmbFcPgInfoMwGetContentDetailSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCPGINFOMW_GET_CONTENT_DETAIL"


# instance fields
.field private crid:Ljava/lang/String;

.field private dictionaryChange:Z

.field private info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

.field private language:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "aClientId"    # I
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aDictionaryChange"    # Z
    .param p4, "aLanguage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 52
    const-string v0, "MESSAGE_MMBFCPGINFOMW_GET_CONTENT_DETAIL"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 33
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->crid:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->dictionaryChange:Z

    .line 39
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->language:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .line 53
    iput-object p2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->crid:Ljava/lang/String;

    .line 54
    iput-boolean p3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->dictionaryChange:Z

    .line 55
    iput-object p4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->language:Ljava/lang/String;

    .line 56
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
    .line 79
    const/4 v0, 0x0

    .line 82
    .local v0, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->readFile(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->deleteFile(Ljava/lang/String;)V

    .line 89
    return-void

    .line 87
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->deleteFile(Ljava/lang/String;)V

    throw v1
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
    .line 69
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->crid:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 71
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->dictionaryChange:Z

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    .line 73
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->language:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method public getInfo()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    return-object v0
.end method

.method protected readFile(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->setContentInfo(Ljava/io/InputStream;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentDetailSender;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .line 96
    return-void
.end method
