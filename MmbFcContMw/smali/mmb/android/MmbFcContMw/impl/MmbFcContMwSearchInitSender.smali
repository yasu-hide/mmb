.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwSearchInitSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_COMMON_SEARCH_INIT"


# instance fields
.field private handle:J

.field private returnCd:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "aClientId"    # I

    .prologue
    .line 41
    const-string v0, "MESSAGE_COMMON_SEARCH_INIT"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;->handle:J

    .line 34
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;->returnCd:I

    .line 42
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
    .line 66
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;->returnCd:I

    .line 67
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;->handle:J

    .line 68
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
    .line 62
    return-void
.end method

.method public getHandle()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;->handle:J

    return-wide v0
.end method

.method public getReturnCd()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInitSender;->returnCd:I

    return v0
.end method
