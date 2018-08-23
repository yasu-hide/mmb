.class public Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;
.super Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;
.source "MmbFcPgInfoMwRegistClientSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_COMMON_REGIST_CLIENT"


# instance fields
.field private connectPid:I

.field private receiveSocketName:Ljava/lang/String;

.field private sendSocketName:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private valid:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "aTag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 50
    const/high16 v0, -0x80000000

    const-string v1, "MESSAGE_COMMON_REGIST_CLIENT"

    invoke-direct {p0, v0, v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;-><init>(ILjava/lang/String;)V

    .line 31
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->receiveSocketName:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->sendSocketName:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->connectPid:I

    .line 40
    const-string v0, "MmbFcPgInfoMwRegistClientSender"

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->tag:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->valid:Z

    .line 51
    iput-object p1, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->tag:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getConnectPid()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->connectPid:I

    return v0
.end method

.method public getReceiveSocketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->receiveSocketName:Ljava/lang/String;

    return-object v0
.end method

.method public getSendSocketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->sendSocketName:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->getClientId()I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->receiveSocketName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->sendSocketName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 79
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isReceive()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public isRegistCompleted()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->valid:Z

    return v0
.end method

.method protected receiveData(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x80

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->valid:Z

    .line 113
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->setClientId(I)V

    .line 115
    const/16 v1, 0x40

    invoke-virtual {p0, p1, v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "msg":Ljava/lang/String;
    iget-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->valid:Z

    if-eqz v1, :cond_0

    const-string v1, "MESSAGE_COMMON_REGIST_CLIENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->sendSocketName:Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->receiveSocketName:Ljava/lang/String;

    .line 123
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->connectPid:I

    .line 125
    :cond_0
    return-void
.end method

.method protected receiveError()V
    .locals 0

    .prologue
    .line 140
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
    .line 102
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 105
    const-string v0, "MESSAGE_COMMON_REGIST_CLIENT"

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwRegistClientSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 106
    return-void
.end method
