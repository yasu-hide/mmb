.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;
.source "MmbFcPgInfoMwUpdateDictionarySender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCPGINFOMW_UPDATE_DICTIONARY"


# instance fields
.field private path:Ljava/lang/String;

.field private returnCd:I

.field private type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;


# direct methods
.method public constructor <init>(ILmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;Ljava/lang/String;)V
    .locals 2
    .param p1, "aClientId"    # I
    .param p2, "aType"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;
    .param p3, "aPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 49
    const-string v0, "MESSAGE_MMBFCPGINFOMW_UPDATE_DICTIONARY"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 33
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 36
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->path:Ljava/lang/String;

    .line 39
    const/high16 v0, -0x80000000

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->returnCd:I

    .line 50
    iput-object p2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 51
    iput-object p3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->path:Ljava/lang/String;

    .line 52
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
    .line 73
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->returnCd:I

    .line 74
    iget v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->returnCd:I

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->returnCd:I

    .line 77
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
    .line 65
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->maxLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 68
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->path:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public getReturnCd()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwUpdateDictionarySender;->returnCd:I

    return v0
.end method
