.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelALayerSender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;
.source "MmbFcPgInfoMwCancelALayerSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCPGINFOMW_CANCEL_A_LAYER"


# instance fields
.field private returnCd:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "aClientId"    # I

    .prologue
    .line 41
    const-string v0, "MESSAGE_MMBFCPGINFOMW_CANCEL_A_LAYER"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 34
    const/high16 v0, -0x80000000

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelALayerSender;->returnCd:I

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
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelALayerSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelALayerSender;->returnCd:I

    .line 60
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
    .line 55
    return-void
.end method

.method public getReturnCd()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelALayerSender;->returnCd:I

    return v0
.end method

.method protected receiveError()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwCancelALayerSender;->returnCd:I

    .line 65
    return-void
.end method
