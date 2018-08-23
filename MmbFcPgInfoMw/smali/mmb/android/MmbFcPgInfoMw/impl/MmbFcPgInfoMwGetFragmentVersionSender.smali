.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;
.source "MmbFcPgInfoMwGetFragmentVersionSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCPGINFOMW_GET_FRAGMENTVERSION"


# instance fields
.field private maxrange:J

.field private minrange:J

.field private result:J

.field private type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;


# direct methods
.method public constructor <init>(ILmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;JJ)V
    .locals 5
    .param p1, "aClientId"    # I
    .param p2, "aType"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    .param p3, "aMinRange"    # J
    .param p5, "aMaxRange"    # J

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 24
    const-string v0, "MESSAGE_MMBFCPGINFOMW_GET_FRAGMENTVERSION"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 15
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->INFORMATION_TYPE_UNDEFINED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    .line 17
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->minrange:J

    .line 19
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->maxrange:J

    .line 21
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->result:J

    .line 25
    iput-object p2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    .line 26
    iput-wide p3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->minrange:J

    .line 27
    iput-wide p5, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->maxrange:J

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
    .line 45
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->result:J

    .line 46
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
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->maxLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 39
    iget-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->minrange:J

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 40
    iget-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->maxrange:J

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 41
    return-void
.end method

.method public getResult()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetFragmentVersionSender;->result:J

    return-wide v0
.end method
