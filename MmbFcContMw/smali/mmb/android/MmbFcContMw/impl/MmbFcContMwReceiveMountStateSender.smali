.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiveMountStateSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwReceiveMountStateSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_RECEIVE_MOUNT_STATE"


# instance fields
.field private returnCd:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "aClientId"    # I

    .prologue
    .line 39
    const-string v0, "MESSAGE_MMBFCCONTMW_RECEIVE_MOUNT_STATE"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 32
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiveMountStateSender;->returnCd:I

    .line 40
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
    .line 56
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->OK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiveMountStateSender;->returnCd:I

    .line 57
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
    .line 52
    return-void
.end method

.method public getReturnCd()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiveMountStateSender;->returnCd:I

    return v0
.end method
