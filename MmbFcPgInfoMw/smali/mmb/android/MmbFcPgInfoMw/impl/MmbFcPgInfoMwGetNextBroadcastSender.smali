.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;
.source "MmbFcPgInfoMwGetNextBroadcastSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCPGINFOMW_GET_NEXT_BROADCAST"


# instance fields
.field private crid:Ljava/lang/String;

.field private info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "aClientId"    # I
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 43
    const-string v0, "MESSAGE_MMBFCPGINFOMW_GET_NEXT_BROADCAST"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 32
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;->crid:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;

    .line 44
    iput-object p2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;->crid:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method protected doReceiveData(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 64
    .local v0, "count":I
    new-array v2, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;

    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 67
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;

    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;-><init>()V

    aput-object v3, v2, v1

    .line 68
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;->startTime:J

    .line 69
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;->endTime:J

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
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
    .line 58
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;->crid:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public getInfo()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetNextBroadcastSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;

    return-object v0
.end method
