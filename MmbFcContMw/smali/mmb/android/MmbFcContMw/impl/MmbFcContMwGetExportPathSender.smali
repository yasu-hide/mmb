.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetExportPathSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwGetExportPathSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_COMMON_GET_EXPORT_PATH"


# instance fields
.field private crid:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "aClientId"    # I
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 26
    const-string v0, "MESSAGE_COMMON_GET_EXPORT_PATH"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 14
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetExportPathSender;->crid:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetExportPathSender;->path:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetExportPathSender;->crid:Ljava/lang/String;

    .line 28
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
    .line 42
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetExportPathSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 43
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 44
    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetExportPathSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetExportPathSender;->path:Ljava/lang/String;

    .line 46
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
    .line 37
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetExportPathSender;->crid:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetExportPathSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 38
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetExportPathSender;->path:Ljava/lang/String;

    return-object v0
.end method
