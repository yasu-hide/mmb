.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;
.source "MmbFcPgInfoMwGetTermSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCPGINFOMW_GET_TERMID"


# instance fields
.field private tag:Ljava/lang/String;

.field private termId:[Ljava/lang/String;

.field private type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;


# direct methods
.method public constructor <init>(ILmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;Ljava/lang/String;)V
    .locals 2
    .param p1, "aClientId"    # I
    .param p2, "aType"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;
    .param p3, "aTag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 48
    const-string v0, "MESSAGE_MMBFCPGINFOMW_GET_TERMID"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 32
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->tag:Ljava/lang/String;

    .line 35
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_UNDEFINED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 38
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->termId:[Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->tag:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 51
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
    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->readFile(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->deleteFile(Ljava/lang/String;)V

    .line 81
    return-void

    .line 79
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->deleteFile(Ljava/lang/String;)V

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
    .line 64
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->maxLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->tag:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public getTermId()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->termId:[Ljava/lang/String;

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
    .line 85
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 86
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->termId:[Ljava/lang/String;

    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 88
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->termId:[Ljava/lang/String;

    const/16 v3, 0x100

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetTermSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method
