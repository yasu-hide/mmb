.class public Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;
.super Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;
.source "MmbFcPgInfoMwRemoveClientSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_COMMON_REMOVE_CLIENT"


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "aClientId"    # I
    .param p2, "aTag"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, "MESSAGE_COMMON_REMOVE_CLIENT"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;-><init>(ILjava/lang/String;)V

    .line 31
    const-string v0, "MmbFcPgInfoMwRemoveClientSender"

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;->tag:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;->tag:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;->tag:Ljava/lang/String;

    return-object v0
.end method

.method protected isReceive()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method protected receiveData(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    return-void
.end method

.method protected receiveError()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;->getClientId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 49
    const-string v0, "MESSAGE_COMMON_REMOVE_CLIENT"

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRemoveClientSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 50
    return-void
.end method
