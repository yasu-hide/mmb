.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;
.source "MmbFcPgInfoMwGetServiceListSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCPGINFOMW_GET_SERVICE_LIST"


# instance fields
.field private info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "aClientId"    # I

    .prologue
    .line 39
    const-string v0, "MESSAGE_MMBFCPGINFOMW_GET_SERVICE_LIST"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;

    .line 40
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
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->readFile(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->deleteFile(Ljava/lang/String;)V

    .line 65
    return-void

    .line 63
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->deleteFile(Ljava/lang/String;)V

    throw v1
.end method

.method protected doSendData(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method public getInfo()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;

    return-object v0
.end method

.method protected readFile(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 70
    .local v0, "count":I
    new-array v4, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;

    iput-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;

    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "countLogo":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 73
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;

    new-instance v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;

    invoke-direct {v5}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;-><init>()V

    aput-object v5, v4, v2

    .line 74
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;

    aget-object v4, v4, v2

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->readInt(Ljava/io/InputStream;)I

    move-result v5

    iput v5, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;->serviceId:I

    .line 75
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;

    aget-object v4, v4, v2

    const/16 v5, 0x184

    invoke-virtual {p0, p1, v5}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;->serviceName:Ljava/lang/String;

    .line 76
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 77
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;

    aget-object v4, v4, v2

    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;->serviceLogo:[Ljava/lang/String;

    .line 78
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 79
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;

    aget-object v4, v4, v2

    iget-object v4, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;->serviceLogo:[Ljava/lang/String;

    const/16 v5, 0x100

    invoke-virtual {p0, p1, v5}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetServiceListSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 72
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v3    # "j":I
    :cond_1
    return-void
.end method
