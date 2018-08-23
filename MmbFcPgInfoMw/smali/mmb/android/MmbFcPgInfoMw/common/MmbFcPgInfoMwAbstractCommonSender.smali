.class public abstract Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;
.super Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;
.source "MmbFcPgInfoMwAbstractCommonSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender$1;
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "aClientId"    # I
    .param p2, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->setClientId(I)V

    .line 74
    invoke-virtual {p0, p2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->setMessage(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private readRMPIDescription(Ljava/io/InputStream;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;
    .locals 6
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 357
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    invoke-direct {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;-><init>()V

    .line 358
    .local v0, "rmpi":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->countsLimit:I

    .line 359
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->countsThreshold:I

    .line 360
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->validityIntervalStart:J

    .line 361
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->validityIntervalEnd:J

    .line 362
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 363
    iput-boolean v4, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->trickPlayEnabled:Z

    .line 369
    :goto_0
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIPreviewDescription;

    invoke-direct {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIPreviewDescription;-><init>()V

    iput-object v1, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->preview:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIPreviewDescription;

    .line 370
    iget-object v1, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->preview:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIPreviewDescription;

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v2

    iput v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIPreviewDescription;->countsLimit:I

    .line 371
    iget-object v1, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->preview:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIPreviewDescription;

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIPreviewDescription;->totalTime:J

    .line 372
    iget-object v1, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->preview:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIPreviewDescription;

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIPreviewDescription;->intervalEnd:J

    .line 374
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    invoke-direct {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;-><init>()V

    iput-object v1, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    .line 375
    iget-object v1, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->startTime:J

    .line 376
    iget-object v1, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->endTime:J

    .line 377
    iget-object v1, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v2

    iput v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->countsLimit:I

    .line 378
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 379
    iget-object v1, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    iput-boolean v4, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->abroadEnabled:Z

    .line 384
    :goto_1
    return-object v0

    .line 366
    :cond_0
    iput-boolean v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->trickPlayEnabled:Z

    goto :goto_0

    .line 382
    :cond_1
    iget-object v1, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    iput-boolean v5, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->abroadEnabled:Z

    goto :goto_1
.end method

.method private send(Ljava/lang/String;)Z
    .locals 13
    .param p1, "aSocketName"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p1, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 101
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v9, "address name[%s] namespace.id[%s]"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v0}, Landroid/net/LocalSocketAddress;->getNamespace()Landroid/net/LocalSocketAddress$Namespace;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/LocalSocketAddress$Namespace;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance v5, Landroid/net/LocalSocket;

    invoke-direct {v5}, Landroid/net/LocalSocket;-><init>()V

    .line 104
    .local v5, "socket":Landroid/net/LocalSocket;
    const/4 v4, 0x0

    .line 105
    .local v4, "output":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 106
    .local v3, "input":Ljava/io/InputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x200

    invoke-direct {v6, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 108
    .local v6, "tmp":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->sendData(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :try_start_1
    invoke-virtual {v5, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 134
    :try_start_2
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 135
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 136
    invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 137
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 138
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->isReceive()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 139
    invoke-virtual {p0, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readBoolean(Ljava/io/InputStream;)Z

    move-result v7

    .line 140
    .local v7, "valid":Z
    if-eqz v7, :cond_3

    .line 141
    invoke-virtual {p0, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->receiveData(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    .end local v7    # "valid":Z
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 157
    if-eqz v4, :cond_1

    .line 159
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 165
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 167
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 174
    :cond_2
    :goto_2
    :try_start_5
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 180
    :goto_3
    const/4 v8, 0x1

    :goto_4
    return v8

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/IOException;
    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v9, "MmbFcPgInfoMwSenderCommon error. failed to setdata. socketname[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v8, v9, v1, v10}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 114
    :try_start_6
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 118
    :goto_5
    const/4 v8, 0x0

    goto :goto_4

    .line 115
    :catch_1
    move-exception v2

    .line 116
    .local v2, "e1":Ljava/io/IOException;
    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v9, "failed to closing socket."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v2, v10}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5

    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 124
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v9, "MmbFcPgInfoMwSenderCommon error. failed to connect. socketname[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v8, v9, v1, v10}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 127
    :try_start_7
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 131
    :goto_6
    const/4 v8, 0x0

    goto :goto_4

    .line 128
    :catch_3
    move-exception v2

    .line 129
    .restart local v2    # "e1":Ljava/io/IOException;
    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v9, "failed to closing socket."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v2, v10}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_6

    .line 144
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/io/IOException;
    .restart local v7    # "valid":Z
    :cond_3
    :try_start_8
    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v9, "MmbFcPgInfoMwSenderCommon error. message invalid. messagename[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->receiveError()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 150
    .end local v7    # "valid":Z
    :catch_4
    move-exception v1

    .line 151
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_9
    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v9, "MmbFcPgInfoMwSenderCommon error. failed to access stream. socketname[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v8, v9, v1, v10}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 153
    const/4 v8, 0x0

    .line 156
    const/4 v6, 0x0

    .line 157
    if-eqz v4, :cond_4

    .line 159
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 165
    :cond_4
    :goto_7
    if-eqz v3, :cond_5

    .line 167
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 174
    :cond_5
    :goto_8
    :try_start_c
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_4

    .line 176
    :catch_5
    move-exception v1

    .line 177
    iget-object v9, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v10, "failed to closing socket."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v1, v11}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_4

    .line 161
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 162
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v9, "failed to closing output stream."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v1, v10}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 169
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v1

    .line 170
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v9, "failed to closing input stream."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v1, v10}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 176
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 177
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v8, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v9, "failed to closing socket."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v1, v10}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 161
    :catch_9
    move-exception v1

    .line 162
    iget-object v9, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v10, "failed to closing output stream."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v1, v11}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_7

    .line 169
    :catch_a
    move-exception v1

    .line 170
    iget-object v9, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v10, "failed to closing input stream."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v1, v11}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_8

    .line 156
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    const/4 v6, 0x0

    .line 157
    if-eqz v4, :cond_6

    .line 159
    :try_start_d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 165
    :cond_6
    :goto_9
    if-eqz v3, :cond_7

    .line 167
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 174
    :cond_7
    :goto_a
    :try_start_f
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    .line 178
    :goto_b
    throw v8

    .line 161
    :catch_b
    move-exception v1

    .line 162
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v9, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v10, "failed to closing output stream."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v1, v11}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_9

    .line 169
    .end local v1    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v1

    .line 170
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v9, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v10, "failed to closing input stream."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v1, v11}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_a

    .line 176
    .end local v1    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v1

    .line 177
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v9, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v10, "failed to closing socket."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v1, v11}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_b
.end method


# virtual methods
.method protected abstract isReceive()Z
.end method

.method protected readBasicDescription(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;)V
    .locals 9
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aBasic"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0x84

    .line 253
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v3

    .line 254
    .local v3, "countTitle":I
    if-lez v3, :cond_0

    .line 255
    new-array v5, v3, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    iput-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    .line 256
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 257
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    new-instance v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    invoke-direct {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;-><init>()V

    aput-object v6, v5, v4

    .line 258
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    aget-object v5, v5, v4

    const/16 v6, 0x184

    invoke-virtual {p0, p1, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->title:Ljava/lang/String;

    .line 259
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    aget-object v5, v5, v4

    const/16 v6, 0x10

    invoke-virtual {p0, p1, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->type:Ljava/lang/String;

    .line 256
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    .end local v4    # "i":I
    :cond_0
    const/16 v5, 0x100

    invoke-virtual {p0, p1, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->titleImage:Ljava/lang/String;

    .line 264
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 265
    .local v1, "countKeyword":I
    if-lez v1, :cond_1

    .line 266
    new-array v5, v1, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    iput-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    .line 267
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 268
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    new-instance v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    invoke-direct {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;-><init>()V

    aput-object v6, v5, v4

    .line 269
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    aget-object v5, v5, v4

    const/16 v6, 0x7c

    invoke-virtual {p0, p1, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    .line 270
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    aget-object v5, v5, v4

    invoke-virtual {p0, p1, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    .line 267
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 274
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 275
    .local v0, "countGenre":I
    if-lez v0, :cond_2

    .line 276
    new-array v5, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;

    iput-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->genre:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;

    .line 277
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v0, :cond_2

    .line 279
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->genre:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;

    new-instance v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;

    invoke-direct {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;-><init>()V

    aput-object v6, v5, v4

    .line 280
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->genre:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;

    aget-object v5, v5, v4

    invoke-virtual {p0, p1, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;->genre:Ljava/lang/String;

    .line 281
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->genre:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;

    aget-object v5, v5, v4

    invoke-virtual {p0, p1, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGenre;->type:Ljava/lang/String;

    .line 277
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 285
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {p0, p1, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->parentalGuidance:Ljava/lang/String;

    .line 287
    new-instance v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    invoke-direct {v5}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;-><init>()V

    iput-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    .line 289
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    invoke-virtual {p0, p1, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->contentType:Ljava/lang/String;

    .line 291
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    invoke-virtual {p0, p1, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->fileFormat:Ljava/lang/String;

    .line 293
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->fileSize:J

    .line 295
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->duration:I

    .line 297
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v2

    .line 298
    .local v2, "countSynopsis":I
    if-lez v2, :cond_3

    .line 299
    new-array v5, v2, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSynopsis;

    iput-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->synopsis:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSynopsis;

    .line 300
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v2, :cond_3

    .line 301
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->synopsis:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSynopsis;

    new-instance v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSynopsis;

    invoke-direct {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSynopsis;-><init>()V

    aput-object v6, v5, v4

    .line 302
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->synopsis:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSynopsis;

    aget-object v5, v5, v4

    const/16 v6, 0x4cc

    invoke-virtual {p0, p1, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSynopsis;->synopsis:Ljava/lang/String;

    .line 303
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->synopsis:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSynopsis;

    aget-object v5, v5, v4

    const/16 v6, 0x8

    invoke-virtual {p0, p1, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSynopsis;->type:Ljava/lang/String;

    .line 300
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 306
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method protected readBroadcastEvent(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;)V
    .locals 9
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aEvent"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x84

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 435
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->serviceId:I

    .line 436
    const/16 v3, 0x100

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->crid:Ljava/lang/String;

    .line 437
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->startTime:J

    .line 438
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->endTime:J

    .line 439
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->duration:J

    .line 440
    const/4 v3, 0x4

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 441
    .local v0, "b":[B
    if-eqz v0, :cond_0

    .line 442
    aget-byte v3, v0, v5

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->live:Z

    .line 443
    aget-byte v3, v0, v4

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->firstShowing:Z

    .line 444
    const/4 v3, 0x2

    aget-byte v3, v0, v3

    if-ne v3, v4, :cond_3

    :goto_2
    iput-boolean v4, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->free:Z

    .line 446
    :cond_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->repeatLabel:I

    .line 448
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 450
    .local v1, "countOutputRestriction":I
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInstanceDescription;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInstanceDescription;-><init>()V

    iput-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->instanceDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInstanceDescription;

    .line 452
    if-lez v1, :cond_4

    .line 453
    iget-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->instanceDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInstanceDescription;

    new-array v4, v1, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;

    iput-object v4, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInstanceDescription;->outputRestriction:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;

    .line 454
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_4

    .line 455
    iget-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->instanceDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInstanceDescription;

    iget-object v3, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInstanceDescription;->outputRestriction:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;

    new-instance v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;

    invoke-direct {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;-><init>()V

    aput-object v4, v3, v2

    .line 456
    iget-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->instanceDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInstanceDescription;

    iget-object v3, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInstanceDescription;->outputRestriction:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;

    aget-object v3, v3, v2

    invoke-virtual {p0, p1, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;->port:Ljava/lang/String;

    .line 457
    iget-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->instanceDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInstanceDescription;

    iget-object v3, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInstanceDescription;->outputRestriction:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;

    aget-object v3, v3, v2

    invoke-virtual {p0, p1, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;->mode:Ljava/lang/String;

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v1    # "countOutputRestriction":I
    .end local v2    # "i":I
    :cond_1
    move v3, v5

    .line 442
    goto :goto_0

    :cond_2
    move v3, v5

    .line 443
    goto :goto_1

    :cond_3
    move v4, v5

    .line 444
    goto :goto_2

    .line 460
    .restart local v1    # "countOutputRestriction":I
    :cond_4
    return-void
.end method

.method protected readField(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;)V
    .locals 19
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aField"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 738
    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->maxLength()I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    .line 741
    .local v6, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-result-object v15

    move-object/from16 v0, p2

    iput-object v15, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    sget-object v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_ABNORMAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    .line 748
    .local v14, "valueType":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;
    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->maxLength()I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    .line 750
    :try_start_1
    invoke-static {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 756
    :goto_1
    const/4 v5, 0x0

    .line 757
    .local v5, "length":I
    const/4 v2, 0x0

    .line 759
    .local v2, "count":I
    sget-object v15, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender$1;->$SwitchMap$mmb$android$MmbFcPgInfoMw$MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType:[I

    invoke-virtual {v14}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 796
    :goto_2
    return-void

    .line 744
    .end local v2    # "count":I
    .end local v5    # "length":I
    .end local v14    # "valueType":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;
    :catch_0
    move-exception v3

    .line 745
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v16, "unknown type[%s]."

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    invoke-virtual/range {v15 .. v17}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 753
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v14    # "valueType":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;
    :catch_1
    move-exception v3

    .line 754
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v16, "unknown type[%s]."

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    invoke-virtual/range {v15 .. v17}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 761
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "count":I
    .restart local v5    # "length":I
    :pswitch_0
    invoke-virtual/range {p0 .. p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v8

    .line 762
    .local v8, "valueLong":J
    new-instance v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;

    invoke-direct {v15, v8, v9}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;-><init>(J)V

    move-object/from16 v0, p2

    iput-object v15, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    goto :goto_2

    .line 765
    .end local v8    # "valueLong":J
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v5

    .line 766
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v12

    .line 767
    .local v12, "valueString":Ljava/lang/String;
    new-instance v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    invoke-direct {v15, v12}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iput-object v15, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    goto :goto_2

    .line 770
    .end local v12    # "valueString":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v2

    .line 771
    if-lez v2, :cond_1

    .line 772
    new-array v13, v2, [Ljava/lang/String;

    .line 773
    .local v13, "valueStringList":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v2, :cond_0

    .line 774
    invoke-virtual/range {p0 .. p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v5

    .line 775
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v4

    .line 773
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 777
    :cond_0
    new-instance v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueList;

    invoke-direct {v15, v13}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueList;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, p2

    iput-object v15, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    goto :goto_2

    .line 780
    .end local v4    # "i":I
    .end local v13    # "valueStringList":[Ljava/lang/String;
    :cond_1
    new-instance v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueList;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueList;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, p2

    iput-object v15, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    goto/16 :goto_2

    .line 784
    :pswitch_3
    invoke-virtual/range {p0 .. p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->setCreditItem(Ljava/io/InputStream;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;

    move-result-object v7

    .line 785
    .local v7, "valueCredit":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;
    new-instance v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueCredit;

    invoke-direct {v15, v7}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueCredit;-><init>([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;)V

    move-object/from16 v0, p2

    iput-object v15, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    goto/16 :goto_2

    .line 788
    .end local v7    # "valueCredit":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->setReceptionSchedule(Ljava/io/InputStream;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    move-result-object v11

    .line 789
    .local v11, "valueSchedule":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;
    new-instance v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueSchedule;

    invoke-direct {v15, v11}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueSchedule;-><init>([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;)V

    move-object/from16 v0, p2

    iput-object v15, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    goto/16 :goto_2

    .line 792
    .end local v11    # "valueSchedule":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;
    :pswitch_5
    invoke-virtual/range {p0 .. p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->setOutputRestriction(Ljava/io/InputStream;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;

    move-result-object v10

    .line 793
    .local v10, "valueRestriction":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;
    new-instance v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueRestriction;

    invoke-direct {v15, v10}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueRestriction;-><init>([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;)V

    move-object/from16 v0, p2

    iput-object v15, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    goto/16 :goto_2

    .line 759
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected readInfoBase(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)V
    .locals 7
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aBase"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 217
    const/16 v3, 0x100

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->crid:Ljava/lang/String;

    .line 219
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "basic description."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;-><init>()V

    iput-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    .line 221
    iget-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readBasicDescription(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;)V

    .line 223
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "read MemberOf."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 225
    .local v0, "countMemberOf":I
    if-lez v0, :cond_0

    .line 226
    new-array v3, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwMemberOf;

    iput-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->memberOf:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwMemberOf;

    .line 227
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 228
    iget-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->memberOf:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwMemberOf;

    new-instance v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwMemberOf;

    invoke-direct {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwMemberOf;-><init>()V

    aput-object v4, v3, v2

    .line 229
    iget-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->memberOf:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwMemberOf;

    aget-object v3, v3, v2

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readMemberOf(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwMemberOf;)V

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "read Period."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 235
    .local v1, "countPeriod":I
    if-lez v1, :cond_1

    .line 236
    new-array v3, v1, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    iput-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    .line 237
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 238
    iget-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    new-instance v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    invoke-direct {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;-><init>()V

    aput-object v4, v3, v2

    .line 239
    iget-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v3, v3, v2

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readPeriod(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;)V

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 242
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected readLicenseInfo(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;)V
    .locals 1
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    const/16 v0, 0x14

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    .line 342
    const/16 v0, 0x24

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->mainId:Ljava/lang/String;

    .line 343
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->type:Ljava/lang/String;

    .line 344
    const/16 v0, 0x100

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->crid:Ljava/lang/String;

    .line 345
    const/16 v0, 0x1c

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    .line 346
    invoke-direct {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readRMPIDescription(Ljava/io/InputStream;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    move-result-object v0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    .line 347
    return-void
.end method

.method protected readMemberOf(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwMemberOf;)V
    .locals 1
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aMemberOf"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwMemberOf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    const/16 v0, 0x100

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwMemberOf;->crid:Ljava/lang/String;

    .line 317
    return-void
.end method

.method protected readOnDemandService(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;)V
    .locals 7
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aService"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x100

    .line 470
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v2

    iput v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;->serviceId:I

    .line 472
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 473
    .local v0, "countProgram":I
    if-lez v0, :cond_0

    .line 474
    new-array v2, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;

    iput-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;->program:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;

    .line 475
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 476
    iget-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;->program:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;

    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;-><init>()V

    aput-object v3, v2, v1

    .line 477
    iget-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;->program:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;->crid:Ljava/lang/String;

    .line 478
    iget-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;->program:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;->url:Ljava/lang/String;

    .line 479
    iget-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;->program:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;->duration:J

    .line 480
    iget-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;->program:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;->start:J

    .line 481
    iget-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;->program:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;->end:J

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected readPeriod(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;)V
    .locals 2
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aPeriod"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->type:Ljava/lang/String;

    .line 328
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->start:J

    .line 329
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->end:J

    .line 330
    return-void
.end method

.method protected readPurchaseInfo(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;)V
    .locals 3
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x100

    .line 396
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->start:J

    .line 397
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->end:J

    .line 398
    const/16 v0, 0x1c

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->id:Ljava/lang/String;

    .line 399
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->price:J

    .line 400
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->currency:Ljava/lang/String;

    .line 401
    const/16 v0, 0x84

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->type:Ljava/lang/String;

    .line 402
    const/16 v0, 0xc4

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->name:Ljava/lang/String;

    .line 403
    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->serverURL:Ljava/lang/String;

    .line 404
    const/16 v0, 0x184

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->nameTag:Ljava/lang/String;

    .line 405
    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->crid:Ljava/lang/String;

    .line 406
    return-void
.end method

.method protected readServiceInfo(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;)V
    .locals 4
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aService"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v2

    iput v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;->serviceId:I

    .line 417
    const/16 v2, 0x184

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;->serviceName:Ljava/lang/String;

    .line 418
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 419
    .local v0, "countLogo":I
    if-lez v0, :cond_0

    .line 420
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;->serviceLogo:[Ljava/lang/String;

    .line 421
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 422
    iget-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;->serviceLogo:[Ljava/lang/String;

    const/16 v3, 0x100

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected readTransmitCtrlInfo(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;)V
    .locals 6
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 495
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "readTransmitCtrlInfo."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->version:J

    .line 497
    const/16 v2, 0x100

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->crid:Ljava/lang/String;

    .line 498
    const/16 v2, 0x1004

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    .line 501
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    invoke-direct {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;-><init>()V

    .line 502
    .local v1, "repair":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;
    iput-object v1, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    .line 503
    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 504
    .local v0, "percentage":[B
    if-eqz v0, :cond_0

    .line 505
    aget-byte v2, v0, v5

    iput-byte v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->autoRepairAutoStorePercentage:B

    .line 506
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    iput-byte v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->autoRepairManualStorePercentage:B

    .line 507
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    iput-byte v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairAutoStorePercentage:B

    .line 508
    const/4 v2, 0x3

    aget-byte v2, v0, v2

    iput-byte v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairManualStorePercentage:B

    .line 510
    :cond_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->offsetTime:J

    .line 511
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->randomTimePeriod:J

    .line 512
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairStartDate:J

    .line 513
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairEndDate:J

    .line 516
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->setReceptionSchedule(Ljava/io/InputStream;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    move-result-object v2

    iput-object v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    .line 528
    return-void
.end method

.method protected abstract receiveData(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract receiveError()V
.end method

.method public sendCommand(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aSocketName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p1, :cond_0

    .line 84
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "MmbFcPgInfoMwSenderCommon error. [socketname is null]"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :goto_0
    return v0

    .line 88
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "send socket name[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->send(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract sendData(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected setCreditItem(Ljava/io/InputStream;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;
    .locals 8
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x130

    .line 805
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 806
    .local v0, "countCredit":I
    if-lez v0, :cond_1

    .line 807
    new-array v1, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;

    .line 808
    .local v1, "creditsItem":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 809
    new-instance v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;

    invoke-direct {v5}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;-><init>()V

    aput-object v5, v1, v2

    .line 810
    aget-object v5, v1, v2

    const/16 v6, 0x80

    invoke-virtual {p0, p1, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;->role:Ljava/lang/String;

    .line 812
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v4

    .line 813
    .local v4, "personcount":I
    if-lez v4, :cond_0

    .line 814
    aget-object v5, v1, v2

    new-array v6, v4, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItemPerson;

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;->person:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItemPerson;

    .line 815
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 816
    aget-object v5, v1, v2

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;->person:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItemPerson;

    new-instance v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItemPerson;

    invoke-direct {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItemPerson;-><init>()V

    aput-object v6, v5, v3

    .line 817
    aget-object v5, v1, v2

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;->person:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItemPerson;

    aget-object v5, v5, v3

    const/16 v6, 0x8

    invoke-virtual {p0, p1, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItemPerson;->type:Ljava/lang/String;

    .line 819
    aget-object v5, v1, v2

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;->person:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItemPerson;

    aget-object v5, v5, v3

    invoke-virtual {p0, p1, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItemPerson;->personName:Ljava/lang/String;

    .line 815
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 823
    .end local v3    # "j":I
    :cond_0
    aget-object v5, v1, v2

    invoke-virtual {p0, p1, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;->charactor:Ljava/lang/String;

    .line 808
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 829
    .end local v1    # "creditsItem":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;
    .end local v2    # "i":I
    .end local v4    # "personcount":I
    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method protected setOutputRestriction(Ljava/io/InputStream;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;
    .locals 6
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x84

    .line 564
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 565
    .local v0, "countRestriction":I
    if-lez v0, :cond_0

    .line 566
    new-array v2, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;

    .line 567
    .local v2, "restrictions":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 568
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;-><init>()V

    aput-object v3, v2, v1

    .line 569
    aget-object v3, v2, v1

    invoke-virtual {p0, p1, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;->port:Ljava/lang/String;

    .line 570
    aget-object v3, v2, v1

    invoke-virtual {p0, p1, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;->mode:Ljava/lang/String;

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    .end local v1    # "i":I
    .end local v2    # "restrictions":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method protected setReceptionSchedule(Ljava/io/InputStream;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;
    .locals 6
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 539
    .local v0, "countSchedule":I
    if-lez v0, :cond_0

    .line 540
    new-array v2, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    .line 541
    .local v2, "schedules":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 542
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;-><init>()V

    aput-object v3, v2, v1

    .line 543
    aget-object v3, v2, v1

    const/16 v4, 0x100

    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->uri:Ljava/lang/String;

    .line 545
    aget-object v3, v2, v1

    new-instance v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;

    invoke-direct {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;-><init>()V

    iput-object v4, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->receptionTime:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;

    .line 546
    aget-object v3, v2, v1

    iget-object v3, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->receptionTime:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;->startTime:J

    .line 547
    aget-object v3, v2, v1

    iget-object v3, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->receptionTime:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;->endTime:J

    .line 541
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    .end local v1    # "i":I
    .end local v2    # "schedules":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method protected writeBaseVersion(Ljava/io/OutputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;)V
    .locals 1
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .param p2, "aVersion"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    if-eqz p2, :cond_0

    .line 671
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    .line 673
    iget v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->major_version:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 675
    iget v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 681
    :goto_0
    return-void

    .line 679
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    goto :goto_0
.end method

.method protected writeCondition(Ljava/io/OutputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;)V
    .locals 5
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .param p2, "aCondition"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    if-eqz p2, :cond_2

    .line 632
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    .line 634
    iget-boolean v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->notOperator:Z

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    .line 636
    iget-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->condition:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    array-length v1, v3

    .line 637
    .local v1, "count":I
    invoke-virtual {p0, p1, v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 638
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 640
    iget-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->condition:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    aget-object v0, v3, v2

    .line 641
    .local v0, "condition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    iget-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    if-eqz v3, :cond_0

    .line 643
    iget-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->operatorType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    if-eqz v3, :cond_1

    .line 644
    iget-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->operatorType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->maxLength()I

    move-result v4

    invoke-virtual {p0, p1, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 652
    :goto_1
    iget-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeField(Ljava/io/OutputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;)V

    .line 638
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 648
    :cond_1
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_EQUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->maxLength()I

    move-result v4

    invoke-virtual {p0, p1, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    goto :goto_1

    .line 658
    .end local v0    # "condition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    .line 660
    :cond_3
    return-void
.end method

.method protected writeExpression(Ljava/io/OutputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)V
    .locals 2
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .param p2, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    if-eqz p2, :cond_2

    .line 589
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    .line 591
    iget-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->sortField:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->sortField:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->maxLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 600
    :goto_0
    iget-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->sortOrder:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->sortOrder:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;->maxLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 609
    :goto_1
    iget-boolean v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->condition_operator:Z

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    .line 611
    iget-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->andCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeCondition(Ljava/io/OutputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;)V

    .line 613
    iget-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->orCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeCondition(Ljava/io/OutputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;)V

    .line 615
    iget-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeBaseVersion(Ljava/io/OutputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;)V

    .line 620
    :goto_2
    return-void

    .line 596
    :cond_0
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->FIELD_INDEX_ABNORMAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->maxLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    goto :goto_0

    .line 605
    :cond_1
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;->SORT_ORDER_NONE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;->maxLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    goto :goto_1

    .line 618
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    goto :goto_2
.end method

.method protected writeField(Ljava/io/OutputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;)V
    .locals 6
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .param p2, "aField"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    iget-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    if-eqz v3, :cond_0

    .line 693
    iget-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->maxLength()I

    move-result v4

    invoke-virtual {p0, p1, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 702
    iget-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    if-eqz v3, :cond_2

    iget-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    iget-object v3, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;->valueType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    if-eqz v3, :cond_2

    .line 703
    iget-object v3, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    iget-object v3, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;->valueType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->maxLength()I

    move-result v4

    invoke-virtual {p0, p1, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 705
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender$1;->$SwitchMap$mmb$android$MmbFcPgInfoMw$MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType:[I

    iget-object v4, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    iget-object v4, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;->valueType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-virtual {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 728
    :goto_0
    return-void

    .line 697
    :cond_0
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->FIELD_INDEX_ABNORMAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->maxLength()I

    move-result v4

    invoke-virtual {p0, p1, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    goto :goto_0

    .line 707
    :pswitch_0
    iget-object v1, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    check-cast v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;

    .line 708
    .local v1, "valueNumber":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;
    iget-wide v4, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->value:J

    invoke-virtual {p0, p1, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeLong(Ljava/io/OutputStream;J)V

    goto :goto_0

    .line 711
    .end local v1    # "valueNumber":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;
    :pswitch_1
    iget-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    .line 712
    .local v2, "valueString":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    const/4 v0, 0x0

    .line 713
    .local v0, "length":I
    iget-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 714
    iget-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v0, v3

    .line 719
    :goto_1
    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 720
    iget-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    goto :goto_0

    .line 717
    :cond_1
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeField ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-virtual {v5}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 725
    .end local v0    # "length":I
    .end local v2    # "valueString":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    :cond_2
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_ABNORMAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->maxLength()I

    move-result v4

    invoke-virtual {p0, p1, v3, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractCommonSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    goto :goto_0

    .line 705
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
