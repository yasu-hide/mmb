.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;
.source "MmbFcPgInfoMwSearchCloseSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_COMMON_SEARCH_CLOSE"


# instance fields
.field private handle:J

.field private returnCd:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "aClientId"    # I
    .param p2, "aHandle"    # J

    .prologue
    .line 40
    const-string v0, "MESSAGE_COMMON_SEARCH_CLOSE"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;->handle:J

    .line 33
    const/high16 v0, -0x80000000

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;->returnCd:I

    .line 41
    iput-wide p2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;->handle:J

    .line 42
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
    .line 59
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;->returnCd:I

    .line 60
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
    .line 54
    iget-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;->handle:J

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 55
    return-void
.end method

.method public getReturnCd()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchCloseSender;->returnCd:I

    return v0
.end method
