.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;
.super Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;
.source "MmbFcPgInfoMwReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MmbFcPgInfoMwReceiveThread"


# instance fields
.field private final REPEAT_INTERVAL:I

.field private connectPid:I

.field private isAbort:Z

.field private isStarted:Z

.field private listener:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;

.field private parent:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

.field private receiveSocketName:Ljava/lang/String;

.field private socket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;Ljava/lang/String;ILmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V
    .locals 9
    .param p1, "aListener"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;
    .param p2, "aReceiveSocketName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "aParent"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 71
    invoke-direct {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;-><init>()V

    .line 42
    iput-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->listener:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;

    .line 45
    iput-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    .line 48
    const/4 v3, -0x1

    iput v3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->connectPid:I

    .line 51
    iput-boolean v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->isStarted:Z

    .line 54
    iput-boolean v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->isAbort:Z

    .line 57
    iput-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    .line 60
    const/16 v3, 0x32

    iput v3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->REPEAT_INTERVAL:I

    .line 63
    iput-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->parent:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .line 72
    iput-object p1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->listener:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;

    .line 73
    iput-object p2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    .line 74
    iput p3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->connectPid:I

    .line 75
    iput-object p4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->parent:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .line 76
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 78
    .local v0, "address":Landroid/net/LocalSocketAddress;
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    .line 79
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "address name[%s] namespace.id[%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0}, Landroid/net/LocalSocketAddress;->getNamespace()Landroid/net/LocalSocketAddress$Namespace;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LocalSocketAddress$Namespace;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 84
    :try_start_0
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 85
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->isStarted:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :cond_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/net/UnknownHostException;
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "failed to starting socket. socketname[%s]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v1, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->i(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 82
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :catch_1
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "failed to starting socket. socketname[%s]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v1, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->i(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private readData([BLjava/io/InputStream;)V
    .locals 12
    .param p1, "aB"    # [B
    .param p2, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 215
    const/16 v6, 0x8

    new-array v5, v6, [B

    .line 216
    .local v5, "tmp":[B
    const/4 v6, 0x7

    invoke-virtual {p2, v5, v11, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 217
    .local v3, "ret":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 218
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v7, "faild to read Valid."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    if-lez v3, :cond_0

    .line 226
    invoke-virtual {p0, p2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->readInt(Ljava/io/InputStream;)I

    .line 228
    const/16 v6, 0x40

    invoke-virtual {p0, p2, v6}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "message":Ljava/lang/String;
    const-string v6, "REPLY_COMMON_ABORT"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 230
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v7, "listen Abort"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->parent:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 232
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->listener:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;

    invoke-interface {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;->abort()V

    goto :goto_0

    .line 234
    :cond_2
    const-string v6, "REPLY_MMBFCPGINFOMW_ACQUIRE_NOTICE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 235
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v7, "listen Acquire Notice"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->listener:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;

    invoke-direct {p0, p2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->setDownloadNotice(Ljava/io/InputStream;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;

    move-result-object v7

    invoke-interface {v6, v7}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;->acquireNotice(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;)V

    goto :goto_0

    .line 238
    :cond_3
    const-string v6, "REPLY_MMBFCPGINFOMW_RESERVE_B_LAYER"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 239
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v7, "listen Reserve B Layer"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->listener:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;

    invoke-direct {p0, p2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->setContentInfo(Ljava/io/InputStream;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

    move-result-object v7

    invoke-interface {v6, v7}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;->reserveBLayer(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;)V

    goto :goto_0

    .line 242
    :cond_4
    const-string v6, "REPLY_COMMON_BROADCAST_LEVEL"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 243
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v7, "listen Broadcast Level"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->listener:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;

    invoke-virtual {p0, p2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->readInt(Ljava/io/InputStream;)I

    move-result v7

    invoke-interface {v6, v7}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;->noticeBroadcastLevel(I)V

    goto :goto_0

    .line 246
    :cond_5
    const-string v6, "REPLY_MMBFCPGINFOMW_BROADCAST_TIME_CHANGED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 247
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v7, "listen Broadcast time changed"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    invoke-virtual {p0, p2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 249
    .local v0, "changedCount":I
    new-array v4, v0, [Ljava/lang/String;

    .line 250
    .local v4, "strList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 251
    const/16 v6, 0x100

    invoke-virtual {p0, p2, v6}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    .line 252
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v7, "Broadcast time changed crid[%s]"

    new-array v8, v11, [Ljava/lang/Object;

    aget-object v9, v4, v1

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    :cond_6
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->listener:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;

    invoke-interface {v6, v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;->noticeBroadcastTimeChanged([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    .end local v0    # "changedCount":I
    .end local v1    # "i":I
    .end local v4    # "strList":[Ljava/lang/String;
    :cond_7
    const-string v6, "CONNECT_CONFIRM"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 259
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v7, "%s is not defined."

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private setContentInfo(Ljava/io/InputStream;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;
    .locals 10
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 318
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

    invoke-direct {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;-><init>()V

    .line 319
    .local v1, "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;
    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "type":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    move-result-object v3

    iput-object v3, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->infoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    const/16 v3, 0x100

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->crid:Ljava/lang/String;

    .line 327
    const/16 v3, 0x184

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->title:Ljava/lang/String;

    .line 328
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->startTime:J

    .line 329
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->endTime:J

    .line 330
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "blayer crid[%s] title[%s] start[%d] end[%d]"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->crid:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->title:Ljava/lang/String;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-wide v8, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->startTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-wide v8, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->endTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    return-object v1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "unknown type[%s]."

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setDownloadNotice(Ljava/io/InputStream;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;
    .locals 14
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 271
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;-><init>()V

    .line 272
    .local v3, "notice":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;
    const/16 v7, 0x100

    invoke-virtual {p0, p1, v7}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->crid:Ljava/lang/String;

    .line 273
    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType;->maxLength()I

    move-result v7

    invoke-virtual {p0, p1, v7}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, "type":Ljava/lang/String;
    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->ACQUIRE_FAILED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;

    .line 276
    .local v4, "noticeError":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;
    :try_start_0
    invoke-static {v5}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType;

    move-result-object v7

    iput-object v7, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    const/4 v2, 0x0

    .line 285
    .local v2, "errorStr":Ljava/lang/String;
    :try_start_1
    sget-object v7, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver$1;->$SwitchMap$mmb$android$MmbFcPgInfoMw$MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType:[I

    iget-object v8, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType;

    invoke-virtual {v8}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType;->ordinal()I

    move-result v8

    aget v7, v7, v8
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    packed-switch v7, :pswitch_data_0

    move-object v3, v6

    .line 307
    .end local v2    # "errorStr":Ljava/lang/String;
    .end local v3    # "notice":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;
    :goto_0
    return-object v3

    .line 278
    .restart local v3    # "notice":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v8, "unknown type[%s]."

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v5, v9, v12

    invoke-virtual {v7, v8, v1, v9}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v3, v6

    .line 280
    goto :goto_0

    .line 288
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "errorStr":Ljava/lang/String;
    :pswitch_0
    :try_start_2
    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->maxLength()I

    move-result v7

    invoke-virtual {p0, p1, v7}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-static {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;

    move-result-object v4

    .line 290
    invoke-virtual {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->getInt()I

    move-result v7

    iput v7, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->value:I

    .line 291
    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v8, "acquire notice[%s] value[%s]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType;

    invoke-virtual {v11}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeError;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 303
    :catch_1
    move-exception v1

    .line 304
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v8, "unknown error[%s]."

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v2, v9, v12

    invoke-virtual {v7, v8, v1, v9}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v3, v6

    .line 305
    goto :goto_0

    .line 294
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_1
    :try_start_3
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->readInt(Ljava/io/InputStream;)I

    move-result v7

    iput v7, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->value:I

    .line 296
    const/16 v7, 0x10

    invoke-virtual {p0, p1, v7}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "dropStr":Ljava/lang/String;
    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v8, "acquire notice[%s] progress[%d]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType;

    invoke-virtual {v11}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->value:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abort()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 103
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "abort start. socketname[%s]"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iput-boolean v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->isAbort:Z

    .line 105
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 107
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "socket close. socketname[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->isStarted:Z

    .line 109
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    .line 117
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "abort end. socketname[%s]"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "failed to close. socketname[%s]"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v0, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    const-string v0, "MmbFcPgInfoMwReceiveThread"

    return-object v0
.end method

.method public isSocketStarted()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->isStarted:Z

    return v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 140
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "run start. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    if-nez v4, :cond_0

    .line 142
    iput-boolean v10, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->isStarted:Z

    .line 143
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->parent:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 144
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "run end. not connected. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v3, 0x0

    .line 149
    .local v3, "in":Ljava/io/InputStream;
    new-instance v1, Ljava/io/File;

    const-string v4, "/proc/%d"

    new-array v5, v11, [Ljava/lang/Object;

    iget v6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->connectPid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v1, "dir":Ljava/io/File;
    new-array v0, v11, [B

    .line 153
    .local v0, "b":[B
    :try_start_0
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 154
    :goto_1
    iget-boolean v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->isAbort:Z

    if-nez v4, :cond_4

    .line 155
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "failed to read stream. socketname[%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v2, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    if-eqz v3, :cond_1

    .line 182
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 189
    :cond_1
    :goto_2
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    if-eqz v4, :cond_2

    .line 191
    :try_start_3
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "socket close. socketname[%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 198
    :goto_3
    iput-object v12, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    .line 200
    :cond_2
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->parent:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 202
    iput-boolean v10, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->isStarted:Z

    .line 203
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "run end. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_4
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "run process killed!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->parent:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 163
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->listener:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;

    invoke-interface {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;->abort()V

    .line 170
    :cond_4
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "run abort. socketname[%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    if-eqz v3, :cond_5

    .line 182
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 189
    :cond_5
    :goto_4
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    if-eqz v4, :cond_6

    .line 191
    :try_start_6
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "socket close. socketname[%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 198
    :goto_5
    iput-object v12, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    .line 200
    :cond_6
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->parent:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 202
    iput-boolean v10, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->isStarted:Z

    .line 203
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "run end. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 167
    :cond_7
    :try_start_7
    invoke-direct {p0, v0, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->readData([BLjava/io/InputStream;)V

    .line 168
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 176
    :catch_1
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_8
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "failed to sleep."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 180
    if-eqz v3, :cond_8

    .line 182
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 189
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_8
    :goto_6
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    if-eqz v4, :cond_9

    .line 191
    :try_start_a
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "socket close. socketname[%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 198
    :goto_7
    iput-object v12, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    .line 200
    :cond_9
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->parent:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 202
    iput-boolean v10, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->isStarted:Z

    .line 203
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "run end. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 184
    :catch_2
    move-exception v2

    .line 185
    .local v2, "e":Ljava/io/IOException;
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "failed to close. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v2, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 194
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 195
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "failed to close. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v2, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5

    .line 184
    :catch_4
    move-exception v2

    .line 185
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "failed to close. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v2, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 194
    :catch_5
    move-exception v2

    .line 195
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "failed to close. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v2, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 184
    .local v2, "e":Ljava/lang/InterruptedException;
    :catch_6
    move-exception v2

    .line 185
    .local v2, "e":Ljava/io/IOException;
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "failed to close. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v2, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_6

    .line 194
    .end local v2    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 195
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "failed to close. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v2, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_7

    .line 180
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_a

    .line 182
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 189
    :cond_a
    :goto_8
    iget-object v5, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    if-eqz v5, :cond_b

    .line 191
    :try_start_c
    iget-object v5, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v6, "socket close. socketname[%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v5, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 198
    :goto_9
    iput-object v12, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->socket:Landroid/net/LocalSocket;

    .line 200
    :cond_b
    iget-object v5, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->parent:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v5}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 202
    iput-boolean v10, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->isStarted:Z

    .line 203
    iget-object v5, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v6, "run end. socketname[%s]"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 184
    :catch_8
    move-exception v2

    .line 185
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v6, "failed to close. socketname[%s]"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v2, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_8

    .line 194
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 195
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v6, "failed to close. socketname[%s]"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v2, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public declared-synchronized setListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->listener:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;

    if-eq v0, p1, :cond_0

    .line 126
    iput-object p1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwReceiver;->listener:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
