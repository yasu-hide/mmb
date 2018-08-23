.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwAutoReceiveSocketTransfer.java"

# interfaces
.implements Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;


# instance fields
.field private mAddress:Landroid/net/LocalSocketAddress;

.field private mEndReceive:Z

.field private mInitialized:Z

.field private mIs:Ljava/io/InputStream;

.field mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

.field private mOs:Ljava/io/OutputStream;

.field private mPreReceiveInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

.field private mReceiveThread:Ljava/lang/Thread;

.field private mSocket:Landroid/net/LocalSocket;


# direct methods
.method constructor <init>(Landroid/net/LocalSocketAddress;)V
    .locals 1
    .param p1, "address"    # Landroid/net/LocalSocketAddress;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mEndReceive:Z

    .line 39
    iput-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mInitialized:Z

    .line 40
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    invoke-direct {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mPreReceiveInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    .line 53
    if-nez p1, :cond_0

    .line 54
    const-string v0, "null == address"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mAddress:Landroid/net/LocalSocketAddress;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;

    .prologue
    .line 30
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->onReceive()V

    return-void
.end method

.method private declared-synchronized clearSocketData()V
    .locals 1

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mSocket:Landroid/net/LocalSocket;

    invoke-direct {p0, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->closeSocket(Landroid/net/LocalSocket;)V

    .line 316
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mSocket:Landroid/net/LocalSocket;

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mIs:Ljava/io/InputStream;

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mOs:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private closeSocket(Landroid/net/LocalSocket;)V
    .locals 1
    .param p1, "aSocket"    # Landroid/net/LocalSocket;

    .prologue
    .line 330
    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized createSocketData(Landroid/net/LocalSocketAddress;)V
    .locals 6
    .param p1, "aAddress"    # Landroid/net/LocalSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    .line 281
    .local v3, "socket":Landroid/net/LocalSocket;
    const/4 v0, 0x0

    .line 282
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 285
    .local v2, "os":Ljava/io/OutputStream;
    invoke-virtual {v3, p1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 287
    const/4 v1, 0x0

    .line 290
    .local v1, "isSuccess":Z
    :try_start_1
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 291
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 293
    iput-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mSocket:Landroid/net/LocalSocket;

    .line 294
    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mIs:Ljava/io/InputStream;

    .line 295
    iput-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mOs:Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    const/4 v1, 0x1

    .line 298
    if-nez v1, :cond_0

    .line 299
    :try_start_2
    const-string v4, "!isSuccess"

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 300
    invoke-direct {p0, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->closeSocket(Landroid/net/LocalSocket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 303
    :cond_0
    monitor-exit p0

    return-void

    .line 298
    :catchall_0
    move-exception v4

    if-nez v1, :cond_1

    .line 299
    :try_start_3
    const-string v5, "!isSuccess"

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 300
    invoke-direct {p0, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->closeSocket(Landroid/net/LocalSocket;)V

    :cond_1
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 280
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "isSuccess":Z
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v3    # "socket":Landroid/net/LocalSocket;
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private joinThread(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "aThread"    # Ljava/lang/Thread;

    .prologue
    .line 260
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V

    .line 261
    const-string v1, "Success : aThread.join()"

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_1
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "th":Ljava/lang/Throwable;
    const-string v1, "Fail : aThread.join()"

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 263
    .end local v0    # "th":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private notifyDisconnect()Z
    .locals 2

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 409
    .local v0, "doTerminate":Z
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    invoke-interface {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;->onDisconnect()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 413
    :goto_0
    return v0

    .line 410
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onReceive()V
    .locals 7

    .prologue
    .line 190
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mSocket:Landroid/net/LocalSocket;

    .line 191
    .local v4, "socket":Landroid/net/LocalSocket;
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mIs:Ljava/io/InputStream;

    .line 192
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x1

    .line 194
    .local v3, "isConnected":Z
    :cond_0
    iget-boolean v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mEndReceive:Z

    if-nez v5, :cond_5

    .line 195
    const/4 v1, 0x0

    .line 199
    .local v1, "doTerminate":Z
    if-nez v3, :cond_1

    .line 200
    :try_start_0
    iget-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mAddress:Landroid/net/LocalSocketAddress;

    invoke-direct {p0, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->createSocketData(Landroid/net/LocalSocketAddress;)V

    .line 201
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mSocket:Landroid/net/LocalSocket;

    .line 202
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mIs:Ljava/io/InputStream;

    .line 206
    :cond_1
    const/4 v3, 0x1

    .line 207
    iget-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    invoke-interface {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;->onConnect()Z

    move-result v5

    if-nez v5, :cond_6

    .line 209
    :cond_2
    iget-boolean v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mEndReceive:Z

    if-nez v5, :cond_3

    .line 210
    invoke-direct {p0, v4, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->receive(Landroid/net/LocalSocket;Ljava/io/InputStream;)[B

    move-result-object v0

    .line 212
    .local v0, "buf":[B
    iget-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    invoke-interface {v5, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;->onReceive(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    const-string v5, "mListener.onReceive(buf)"

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .end local v0    # "buf":[B
    :cond_3
    :goto_0
    const-string v5, "Disconnect Start"

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 226
    :try_start_1
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    :goto_1
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->clearSocketData()V

    .line 234
    if-eqz v3, :cond_4

    .line 235
    const/4 v3, 0x0

    .line 236
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->notifyDisconnect()Z

    move-result v1

    .line 239
    :cond_4
    const-string v5, "Disconnect End"

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 242
    :goto_2
    if-eqz v1, :cond_0

    .line 243
    const-string v5, "doTerminate"

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 247
    .end local v1    # "doTerminate":Z
    :cond_5
    return-void

    .line 218
    .restart local v1    # "doTerminate":Z
    :cond_6
    :try_start_2
    const-string v5, "mListener.onConnect()"

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v5

    .line 222
    const-string v5, "Disconnect Start"

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 226
    :try_start_3
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 231
    :goto_3
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->clearSocketData()V

    .line 234
    if-eqz v3, :cond_7

    .line 235
    const/4 v3, 0x0

    .line 236
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->notifyDisconnect()Z

    move-result v1

    .line 239
    :cond_7
    const-string v5, "Disconnect End"

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    goto :goto_2

    .line 222
    :catchall_0
    move-exception v5

    const-string v6, "Disconnect Start"

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 226
    :try_start_4
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 231
    :goto_4
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->clearSocketData()V

    .line 234
    if-eqz v3, :cond_8

    .line 235
    const/4 v3, 0x0

    .line 236
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->notifyDisconnect()Z

    move-result v1

    .line 239
    :cond_8
    const-string v6, "Disconnect End"

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    throw v5

    .line 227
    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_3

    :catch_3
    move-exception v6

    goto :goto_4
.end method

.method private read(Landroid/net/LocalSocket;Ljava/io/InputStream;II)[B
    .locals 12
    .param p1, "aSocket"    # Landroid/net/LocalSocket;
    .param p2, "aInStream"    # Ljava/io/InputStream;
    .param p3, "aSize"    # I
    .param p4, "aTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    new-array v6, p3, [B

    .line 361
    .local v6, "retBuf":[B
    const/4 v0, 0x0

    .line 362
    .local v0, "count":I
    move/from16 v7, p4

    .line 363
    .local v7, "timeout":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    int-to-long v10, v7

    add-long v2, v8, v10

    .line 366
    .local v2, "endTime":J
    :cond_0
    :goto_0
    invoke-virtual {p1, v7}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 368
    sub-int v8, p3, v0

    invoke-virtual {p2, v6, v0, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 369
    .local v1, "readsize":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receiveSize "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 370
    if-gtz v1, :cond_1

    .line 371
    const-string v8, "readsize <= 0"

    invoke-static {v8}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logI(Ljava/lang/String;)V

    .line 372
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "read size <= 0"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 374
    :cond_1
    add-int/2addr v0, v1

    .line 375
    if-gt p3, v0, :cond_2

    .line 376
    const-string v8, "aSize <= count"

    invoke-static {v8}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 394
    return-object v6

    .line 380
    :cond_2
    const-string v8, "count < aSize"

    invoke-static {v8}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 382
    if-eqz v7, :cond_0

    .line 383
    const-string v8, "0 != timeout"

    invoke-static {v8}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v2, v8

    .line 386
    .local v4, "remainingTime":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_3

    .line 387
    const-string v8, "remainingTime <= 0"

    invoke-static {v8}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 388
    new-instance v8, Ljava/net/SocketTimeoutException;

    invoke-direct {v8}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v8

    .line 390
    :cond_3
    long-to-int v7, v4

    goto :goto_0
.end method

.method private receive(Landroid/net/LocalSocket;Ljava/io/InputStream;)[B
    .locals 4
    .param p1, "aSocket"    # Landroid/net/LocalSocket;
    .param p2, "aInStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mPreReceiveInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    const/4 v2, 0x1

    iput v2, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mCount:I

    .line 344
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mPreReceiveInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mTimeout:J

    .line 345
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mPreReceiveInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    invoke-interface {v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;->onPreReceive(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;)V

    .line 347
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mPreReceiveInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    iget v1, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mCount:I

    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mPreReceiveInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;

    iget-wide v2, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$PreReceiveInfo;->mTimeout:J

    long-to-int v2, v2

    invoke-direct {p0, p1, p2, v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->read(Landroid/net/LocalSocket;Ljava/io/InputStream;II)[B

    move-result-object v0

    .line 349
    .local v0, "ret":[B
    return-object v0
.end method


# virtual methods
.method public declared-synchronized disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mInitialized:Z

    if-nez v0, :cond_0

    .line 169
    const-string v0, "!mInitialized"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 174
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_1

    .line 175
    const-string v0, "null != mSocket"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 177
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 178
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public initialize(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;)V
    .locals 4
    .param p1, "aListener"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    const-string v2, "null == aListener"

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 72
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 76
    :cond_0
    iget-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mInitialized:Z

    if-eqz v2, :cond_1

    .line 77
    const-string v2, "mInitialized"

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void

    .line 82
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer$1;

    invoke-direct {v2, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer$1;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    .local v1, "thread":Ljava/lang/Thread;
    const/4 v0, 0x0

    .line 91
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mAddress:Landroid/net/LocalSocketAddress;

    invoke-direct {p0, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->createSocketData(Landroid/net/LocalSocketAddress;)V

    .line 93
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    const/4 v0, 0x1

    .line 97
    if-nez v0, :cond_2

    .line 98
    const-string v2, "!isSuccess"

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->clearSocketData()V

    .line 103
    :cond_2
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    .line 104
    iput-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mReceiveThread:Ljava/lang/Thread;

    .line 105
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mInitialized:Z

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v2

    if-nez v0, :cond_3

    .line 98
    const-string v3, "!isSuccess"

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->clearSocketData()V

    :cond_3
    throw v2
.end method

.method public declared-synchronized send(Ljava/lang/Object;)V
    .locals 3
    .param p1, "aData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mInitialized:Z

    if-nez v1, :cond_0

    .line 150
    const-string v1, "!mInitialized"

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 151
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local p1    # "aData":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 153
    .restart local p1    # "aData":Ljava/lang/Object;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, [B

    move-object v1, v0

    check-cast v1, [B

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mOs:Ljava/io/OutputStream;

    check-cast p1, [B

    .end local p1    # "aData":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    monitor-exit p0

    return-void
.end method

.method public uninitialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-boolean v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mInitialized:Z

    if-nez v1, :cond_0

    .line 119
    const-string v1, "!mInitialized"

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mReceiveThread:Ljava/lang/Thread;

    .line 125
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x0

    iput-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mReceiveThread:Ljava/lang/Thread;

    .line 128
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mEndReceive:Z

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-direct {p0, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->joinThread(Ljava/lang/Thread;)V

    .line 135
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mEndReceive:Z

    .line 136
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mInitialized:Z

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 133
    invoke-direct {p0, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->joinThread(Ljava/lang/Thread;)V

    .line 135
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mEndReceive:Z

    .line 136
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mInitialized:Z

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->joinThread(Ljava/lang/Thread;)V

    .line 135
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mEndReceive:Z

    .line 136
    iput-boolean v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveSocketTransfer;->mInitialized:Z

    throw v1
.end method
