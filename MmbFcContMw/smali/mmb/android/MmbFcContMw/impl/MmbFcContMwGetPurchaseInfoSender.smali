.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwGetPurchaseInfoSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_COMMON_GET_PURCHASE_INFO"


# instance fields
.field private crid:Ljava/lang/String;

.field private dictionaryChange:Z

.field private info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

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
    const-string v0, "MESSAGE_COMMON_GET_PURCHASE_INFO"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 33
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->crid:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->dictionaryChange:Z

    .line 39
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->language:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

    .line 53
    iput-object p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->crid:Ljava/lang/String;

    .line 54
    iput-boolean p3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->dictionaryChange:Z

    .line 55
    iput-object p4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->language:Ljava/lang/String;

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
    .line 84
    const/4 v0, 0x0

    .line 87
    .local v0, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->readFile(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {p0, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->deleteFile(Ljava/lang/String;)V

    .line 94
    return-void

    .line 92
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->deleteFile(Ljava/lang/String;)V

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
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->crid:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 71
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->SAVED_DB:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->maxLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 76
    iget-boolean v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->dictionaryChange:Z

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    .line 78
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->language:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public getInfo()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

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
    .line 98
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 99
    .local v0, "count":I
    new-array v2, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

    .line 101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 102
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;-><init>()V

    aput-object v3, v2, v1

    .line 103
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetPurchaseInfoSender;->readPurchaseInfo(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method
