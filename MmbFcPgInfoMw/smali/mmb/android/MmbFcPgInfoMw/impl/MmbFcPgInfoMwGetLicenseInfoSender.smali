.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;
.source "MmbFcPgInfoMwGetLicenseInfoSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_COMMON_GET_LICENSE_INFO"


# instance fields
.field private crid:Ljava/lang/String;

.field private info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "aClientId"    # I
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 45
    const-string v0, "MESSAGE_COMMON_GET_LICENSE_INFO"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 33
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->crid:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    .line 46
    iput-object p2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->crid:Ljava/lang/String;

    .line 47
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
    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->readFile(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->deleteFile(Ljava/lang/String;)V

    .line 79
    return-void

    .line 77
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->deleteFile(Ljava/lang/String;)V

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
    .line 60
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->crid:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->BROADCAST_DB:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->maxLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method public getInfo()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    return-object v0
.end method

.method protected readFile(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 84
    .local v0, "count":I
    new-array v2, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 86
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;-><init>()V

    aput-object v3, v2, v1

    .line 87
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLicenseInfoSender;->readLicenseInfo(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method
