.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwGetContentDetailSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_GET_SAVED_CONTENTS_DETAIL"


# instance fields
.field private crid:Ljava/lang/String;

.field private detail:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

.field private dictionaryChange:Z

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

    .line 53
    const-string v0, "MESSAGE_MMBFCCONTMW_GET_SAVED_CONTENTS_DETAIL"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 33
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->crid:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->dictionaryChange:Z

    .line 39
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->language:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->detail:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    .line 54
    iput-object p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->crid:Ljava/lang/String;

    .line 55
    iput-boolean p3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->dictionaryChange:Z

    .line 56
    iput-object p4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->language:Ljava/lang/String;

    .line 57
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
    .line 80
    const/4 v0, 0x0

    .line 83
    .local v0, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->readFile(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {p0, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->deleteFile(Ljava/lang/String;)V

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->deleteFile(Ljava/lang/String;)V

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
    .line 70
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->crid:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 72
    iget-boolean v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->dictionaryChange:Z

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    .line 74
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->language:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 75
    return-void
.end method

.method public getContentsDetail()Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->detail:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

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
    .line 96
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    invoke-direct {v0}, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->detail:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    .line 97
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->detail:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentDetailSender;->readContentsInfo(Ljava/io/InputStream;Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;)V

    .line 98
    return-void
.end method
