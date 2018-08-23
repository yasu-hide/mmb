.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;
.source "MmbFcPgInfoMwGetNameSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCPGINFOMW_GET_NAME"


# instance fields
.field private language:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "aClientId"    # I
    .param p2, "aTag"    # Ljava/lang/String;
    .param p3, "aLanguage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 45
    const-string v0, "MESSAGE_MMBFCPGINFOMW_GET_NAME"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 29
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;->tag:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;->language:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;->name:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;->tag:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;->language:Ljava/lang/String;

    .line 48
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
    .line 68
    const/16 v0, 0x84

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;->name:Ljava/lang/String;

    .line 69
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
    .line 61
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;->tag:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 63
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;->language:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNameSender;->name:Ljava/lang/String;

    return-object v0
.end method
