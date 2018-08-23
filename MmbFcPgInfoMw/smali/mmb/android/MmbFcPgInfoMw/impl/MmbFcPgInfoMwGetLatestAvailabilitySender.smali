.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLatestAvailabilitySender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;
.source "MmbFcPgInfoMwGetLatestAvailabilitySender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCPGINFOMW_GET_LATEST_AVAILABILITY"


# instance fields
.field private returnCd:J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "aClientId"    # I

    .prologue
    .line 39
    const-string v0, "MESSAGE_MMBFCPGINFOMW_GET_LATEST_AVAILABILITY"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLatestAvailabilitySender;->returnCd:J

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
    .line 57
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLatestAvailabilitySender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLatestAvailabilitySender;->returnCd:J

    .line 58
    return-void
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
    .line 53
    return-void
.end method

.method public getResult()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetLatestAvailabilitySender;->returnCd:J

    return-wide v0
.end method
