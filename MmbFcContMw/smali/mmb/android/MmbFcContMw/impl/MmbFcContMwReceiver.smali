.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;
.super Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;
.source "MmbFcContMwReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MmbFcContMwReceiveThread"


# instance fields
.field private final REPEAT_INTERVAL:I

.field private connectPid:I

.field private isAbort:Z

.field private isStarted:Z

.field private listener:Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;

.field private parent:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

.field private receiveSocketName:Ljava/lang/String;

.field private socket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;Ljava/lang/String;ILmmb/android/MmbFcContMw/MmbFcContMwClient;)V
    .locals 9
    .param p1, "aListener"    # Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;
    .param p2, "aReceiveSocketName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "aParent"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 77
    invoke-direct {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;-><init>()V

    .line 48
    iput-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->listener:Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;

    .line 51
    iput-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    .line 54
    const/4 v3, -0x1

    iput v3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->connectPid:I

    .line 57
    iput-boolean v7, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->isStarted:Z

    .line 60
    iput-boolean v7, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->isAbort:Z

    .line 63
    iput-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    .line 66
    const/16 v3, 0x32

    iput v3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->REPEAT_INTERVAL:I

    .line 69
    iput-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->parent:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 78
    iput-object p1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->listener:Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;

    .line 79
    iput-object p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    .line 80
    iput p3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->connectPid:I

    .line 81
    iput-object p4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->parent:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 82
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 84
    .local v0, "address":Landroid/net/LocalSocketAddress;
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    .line 85
    iget-object v3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

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

    .line 88
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 90
    :try_start_0
    iget-object v3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 91
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->isStarted:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :cond_0
    return-void

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/net/UnknownHostException;
    iget-object v3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "failed to starting socket. socketname[%s]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v1, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->i(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 88
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "failed to starting socket. socketname[%s]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v1, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->i(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private readData([BLjava/io/InputStream;)V
    .locals 8
    .param p1, "aB"    # [B
    .param p2, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 221
    const/16 v4, 0x8

    new-array v3, v4, [B

    .line 222
    .local v3, "tmp":[B
    const/4 v4, 0x7

    invoke-virtual {p2, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 223
    .local v2, "ret":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 224
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "faild to read Valid."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    if-lez v2, :cond_0

    .line 232
    invoke-virtual {p0, p2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->readInt(Ljava/io/InputStream;)I

    .line 234
    const/16 v4, 0x40

    invoke-virtual {p0, p2, v4}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "message":Ljava/lang/String;
    const-string v4, "REPLY_COMMON_ABORT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 237
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "listen Abort"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->parent:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 239
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->listener:Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;

    invoke-interface {v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;->abort()V

    goto :goto_0

    .line 241
    :cond_2
    const-string v4, "REPLY_MMBFCCONTMW_DOWNLOAD_NOTICE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 242
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "listen Download Notice"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-direct {p0, p2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->readDownload(Ljava/io/InputStream;)Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;

    move-result-object v0

    .line 244
    .local v0, "info":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;
    if-nez v0, :cond_3

    .line 245
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "faild to read Download elapse information."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 248
    :cond_3
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->listener:Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;

    invoke-interface {v4, v0}, Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;->noticeDownload(Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;)V

    goto :goto_0

    .line 250
    .end local v0    # "info":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;
    :cond_4
    const-string v4, "REPLY_MMBFCCONTMW_REPAIR_NOTICE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 251
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "listen Repair Notice"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->listener:Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;

    invoke-direct {p0, p2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->readRepair(Ljava/io/InputStream;)Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;

    move-result-object v5

    invoke-interface {v4, v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;->noticeRepair(Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;)V

    goto :goto_0

    .line 255
    :cond_5
    const-string v4, "REPLY_COMMON_BROADCAST_LEVEL"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 256
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "listen Broadcast Level"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->listener:Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;

    invoke-virtual {p0, p2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->readInt(Ljava/io/InputStream;)I

    move-result v5

    invoke-interface {v4, v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;->noticeBroadcastLevel(I)V

    goto/16 :goto_0

    .line 259
    :cond_6
    const-string v4, "REPLY_MMBFCCONTMW_ENTRY_FDT_NOTICE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 260
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "listen Entry FDT Notice"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->listener:Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;

    invoke-direct {p0, p2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->readEntryFDTInstance(Ljava/io/InputStream;)Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;

    move-result-object v5

    invoke-interface {v4, v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;->noticeEntryFdtInstance(Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;)V

    goto/16 :goto_0

    .line 263
    :cond_7
    const-string v4, "CONNECT_CONFIRM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 266
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "%s is not defined."

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private readDownload(Ljava/io/InputStream;)Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;
    .locals 17
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    const/16 v12, 0x100

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "crid":Ljava/lang/String;
    invoke-static {}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->maxLength()I

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v11

    .line 305
    .local v11, "type":Ljava/lang/String;
    invoke-static {}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->maxLength()I

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v9

    .line 309
    .local v9, "reasonStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v11}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 316
    .local v10, "t":Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;
    const/4 v4, 0x0

    .line 318
    .local v4, "notice":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;
    sget-object v12, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver$1;->$SwitchMap$mmb$android$MmbFcContMw$MmbFcContMwClient$MmbFcContMwDownloadNoticeType:[I

    invoke-virtual {v10}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 354
    const/4 v4, 0x0

    .line 360
    .end local v4    # "notice":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;
    .end local v10    # "t":Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;
    :goto_0
    return-object v4

    .line 311
    :catch_0
    move-exception v3

    .line 312
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v13, "unknown type[%s]."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    invoke-virtual {v12, v13, v3, v14}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 313
    const/4 v4, 0x0

    goto :goto_0

    .line 320
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "notice":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;
    .restart local v10    # "t":Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;
    :pswitch_0
    new-instance v7, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeStart;

    invoke-direct {v7}, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeStart;-><init>()V

    .line 322
    .local v7, "noticeStart":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeStart;
    :try_start_1
    invoke-static {v9}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 328
    .local v8, "reason":Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;
    invoke-virtual {v8}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v12

    iput v12, v7, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeStart;->value:I

    .line 329
    move-object v4, v7

    .line 330
    move-object/from16 v0, p0

    iget-object v12, v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v13, "download crid[%s] type[%s] reason[%s]"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v10}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual {v8}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    .end local v7    # "noticeStart":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeStart;
    .end local v8    # "reason":Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;
    :goto_1
    iput-object v2, v4, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;->crid:Ljava/lang/String;

    .line 358
    invoke-virtual {v10}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->getInt()I

    move-result v12

    iput v12, v4, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;->type:I

    goto :goto_0

    .line 324
    .restart local v7    # "noticeStart":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeStart;
    :catch_1
    move-exception v3

    .line 325
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v13, "unknown reason[%s]."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    invoke-virtual {v12, v13, v3, v14}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 326
    const/4 v4, 0x0

    goto :goto_0

    .line 334
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "noticeStart":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeStart;
    :pswitch_1
    new-instance v6, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeProgress;

    invoke-direct {v6}, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeProgress;-><init>()V

    .line 335
    .local v6, "noticeProgress":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeProgress;
    const/16 v12, 0x10

    invoke-static {v9, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, v6, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeProgress;->progress:I

    .line 336
    move-object v4, v6

    .line 337
    move-object/from16 v0, p0

    iget-object v12, v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v13, "download crid[%s] type[%s] progress[%d]"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v10}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v6, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeProgress;->progress:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 341
    .end local v6    # "noticeProgress":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeProgress;
    :pswitch_2
    new-instance v5, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;

    invoke-direct {v5}, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;-><init>()V

    .line 343
    .local v5, "noticeEnd":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;
    :try_start_2
    invoke-static {v9}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    .line 349
    .restart local v8    # "reason":Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;
    invoke-virtual {v8}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v12

    iput v12, v5, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    .line 350
    move-object v4, v5

    .line 351
    move-object/from16 v0, p0

    iget-object v12, v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v13, "download crid[%s] type[%s] reason[%s]"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v10}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual {v8}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 345
    .end local v8    # "reason":Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;
    :catch_2
    move-exception v3

    .line 346
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v13, "unknown reason[%s]."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    invoke-virtual {v12, v13, v3, v14}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 347
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readEntryFDTInstance(Ljava/io/InputStream;)Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;
    .locals 10
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 372
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;

    invoke-direct {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;-><init>()V

    .line 374
    .local v1, "notice":Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;
    const/16 v3, 0x100

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;->crid:Ljava/lang/String;

    .line 375
    invoke-static {}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;

    move-result-object v3

    invoke-virtual {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;->getInt()I

    move-result v3

    iput v3, v1, Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;->result:I

    .line 378
    iget-object v3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "entry FDT instance crid[%s] result[%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v1, Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;->crid:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return-object v1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "unknown type[%s]."

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v8

    invoke-virtual {v3, v4, v0, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private readRepair(Ljava/io/InputStream;)Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;
    .locals 10
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 279
    new-instance v1, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;

    invoke-direct {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;-><init>()V

    .line 281
    .local v1, "notice":Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;
    const/16 v3, 0x100

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->crid:Ljava/lang/String;

    .line 282
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v1, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->progress:I

    .line 283
    invoke-static {}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    move-result-object v3

    invoke-virtual {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->getInt()I

    move-result v3

    iput v3, v1, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->result:I

    .line 286
    iget-object v3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "repair crid[%s] result[%s] progress[%d]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v1, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->crid:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    iget v7, v1, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->progress:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-object v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "unknown type[%s]."

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v8

    invoke-virtual {v3, v4, v0, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 109
    iget-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "abort start. socketname[%s]"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iput-boolean v7, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->isAbort:Z

    .line 111
    iget-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "socket close. socketname[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->isStarted:Z

    .line 115
    iget-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    .line 123
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "abort end. socketname[%s]"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "failed to close. socketname[%s]"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v0, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    const-string v0, "MmbFcContMwReceiveThread"

    return-object v0
.end method

.method public isSocketStarted()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->isStarted:Z

    return v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 146
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "run start. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    if-nez v4, :cond_0

    .line 148
    iput-boolean v10, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->isStarted:Z

    .line 149
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->parent:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 150
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "run end. not connected. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v3, 0x0

    .line 155
    .local v3, "in":Ljava/io/InputStream;
    new-instance v1, Ljava/io/File;

    const-string v4, "/proc/%d"

    new-array v5, v11, [Ljava/lang/Object;

    iget v6, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->connectPid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "dir":Ljava/io/File;
    new-array v0, v11, [B

    .line 159
    .local v0, "b":[B
    :try_start_0
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 160
    :goto_1
    iget-boolean v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->isAbort:Z

    if-nez v4, :cond_4

    .line 161
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 162
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 163
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "failed to read stream. socketname[%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v2, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    if-eqz v3, :cond_1

    .line 188
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 195
    :cond_1
    :goto_2
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    if-eqz v4, :cond_2

    .line 197
    :try_start_3
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "socket close. socketname[%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 204
    :goto_3
    iput-object v12, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    .line 206
    :cond_2
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->parent:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 208
    iput-boolean v10, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->isStarted:Z

    .line 209
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "run end. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_4
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "run process killed!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->parent:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 169
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->listener:Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;

    invoke-interface {v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;->abort()V

    .line 176
    :cond_4
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "run abort. socketname[%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    if-eqz v3, :cond_5

    .line 188
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 195
    :cond_5
    :goto_4
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    if-eqz v4, :cond_6

    .line 197
    :try_start_6
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "socket close. socketname[%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 204
    :goto_5
    iput-object v12, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    .line 206
    :cond_6
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->parent:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 208
    iput-boolean v10, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->isStarted:Z

    .line 209
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "run end. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 173
    :cond_7
    :try_start_7
    invoke-direct {p0, v0, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->readData([BLjava/io/InputStream;)V

    .line 174
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 182
    :catch_1
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_8
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "failed to sleep."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 186
    if-eqz v3, :cond_8

    .line 188
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 195
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_8
    :goto_6
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    if-eqz v4, :cond_9

    .line 197
    :try_start_a
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "socket close. socketname[%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 204
    :goto_7
    iput-object v12, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    .line 206
    :cond_9
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->parent:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 208
    iput-boolean v10, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->isStarted:Z

    .line 209
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "run end. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 190
    :catch_2
    move-exception v2

    .line 191
    .local v2, "e":Ljava/io/IOException;
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "failed to close. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v2, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 201
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "failed to close. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v2, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5

    .line 190
    :catch_4
    move-exception v2

    .line 191
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "failed to close. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v2, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 200
    :catch_5
    move-exception v2

    .line 201
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "failed to close. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v2, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 190
    .local v2, "e":Ljava/lang/InterruptedException;
    :catch_6
    move-exception v2

    .line 191
    .local v2, "e":Ljava/io/IOException;
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "failed to close. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v2, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_6

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 201
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "failed to close. socketname[%s]"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v2, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_7

    .line 186
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_a

    .line 188
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 195
    :cond_a
    :goto_8
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    if-eqz v5, :cond_b

    .line 197
    :try_start_c
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v6, "socket close. socketname[%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 204
    :goto_9
    iput-object v12, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->socket:Landroid/net/LocalSocket;

    .line 206
    :cond_b
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->parent:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 208
    iput-boolean v10, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->isStarted:Z

    .line 209
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v6, "run end. socketname[%s]"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 190
    :catch_8
    move-exception v2

    .line 191
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v6, "failed to close. socketname[%s]"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v2, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_8

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 201
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v6, "failed to close. socketname[%s]"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->receiveSocketName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v2, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public declared-synchronized setListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->listener:Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;

    if-eq v0, p1, :cond_0

    .line 132
    iput-object p1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwReceiver;->listener:Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
