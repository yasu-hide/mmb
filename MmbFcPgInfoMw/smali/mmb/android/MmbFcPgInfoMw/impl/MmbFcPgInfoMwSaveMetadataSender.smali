.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;
.source "MmbFcPgInfoMwSaveMetadataSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCPGINFOMW_SAVE_METADATA"


# instance fields
.field private data:[B

.field private isStock:Z

.field private returnCd:I

.field private sendFileName:Ljava/lang/String;

.field private startTime:J


# direct methods
.method public constructor <init>(I[BJ)V
    .locals 3
    .param p1, "aClientId"    # I
    .param p2, "aData"    # [B
    .param p3, "aStartTime"    # J

    .prologue
    const/4 v1, 0x0

    .line 57
    const-string v0, "MESSAGE_MMBFCPGINFOMW_SAVE_METADATA"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 37
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->sendFileName:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->data:[B

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->startTime:J

    .line 46
    const/high16 v0, -0x80000000

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->returnCd:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->isStock:Z

    .line 58
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->data:[B

    .line 59
    iput-wide p3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->startTime:J

    .line 60
    return-void
.end method


# virtual methods
.method protected doReceiveData(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "error":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    move-result-object v2

    .line 128
    .local v2, "type":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;
    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    iput v3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->returnCd:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v2    # "type":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;
    :goto_0
    iget-boolean v3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->isStock:Z

    if-nez v3, :cond_0

    .line 135
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->sendFileName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->deleteFile(Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "unknown type[%s]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v0, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 132
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    iput v3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->returnCd:I

    goto :goto_0
.end method

.method protected doSendData(Ljava/io/OutputStream;)V
    .locals 13
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v9, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    invoke-virtual {v9}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->isMmbDebuggableV()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 76
    new-instance v8, Ljava/io/File;

    const-string v9, "/storage/sdcard0/MMbTest/addmetastock.log"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v8, "stockFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 80
    const/4 v9, 0x1

    iput-boolean v9, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->isStock:Z

    .line 85
    .end local v8    # "stockFile":Ljava/io/File;
    :cond_0
    new-instance v1, Lmmb/android/MmbScSecClkMw/MmbScSecClkMw;

    invoke-direct {v1}, Lmmb/android/MmbScSecClkMw/MmbScSecClkMw;-><init>()V

    .line 86
    .local v1, "clk":Lmmb/android/MmbScSecClkMw/MmbScSecClkMw;
    const/4 v4, 0x0

    .line 87
    .local v4, "counter":I
    invoke-virtual {v1}, Lmmb/android/MmbScSecClkMw/MmbScSecClkMw;->getTime()J

    move-result-wide v2

    .line 88
    .local v2, "basetime":J
    const/4 v0, 0x0

    .line 89
    .local v0, "basepath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 90
    iget-boolean v9, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->isStock:Z

    if-eqz v9, :cond_1

    .line 94
    const-string v0, "/storage/sdcard0/mmb"

    .line 103
    :goto_0
    const-string v9, "%s/network%d_%d.tmp"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "counter":I
    .local v5, "counter":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->sendFileName:Ljava/lang/String;

    .line 105
    new-instance v6, Ljava/io/File;

    iget-object v9, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->sendFileName:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, "file":Ljava/io/File;
    move v4, v5

    .line 106
    .end local v5    # "counter":I
    .restart local v4    # "counter":I
    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 107
    const/4 v6, 0x0

    .line 108
    const-string v9, "%s/network%d_%d.tmp"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "counter":I
    .restart local v5    # "counter":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->sendFileName:Ljava/lang/String;

    .line 109
    new-instance v6, Ljava/io/File;

    .end local v6    # "file":Ljava/io/File;
    iget-object v9, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->sendFileName:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v6    # "file":Ljava/io/File;
    move v4, v5

    .end local v5    # "counter":I
    .restart local v4    # "counter":I
    goto :goto_1

    .line 98
    .end local v6    # "file":Ljava/io/File;
    :cond_1
    new-instance v7, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    invoke-direct {v7}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;-><init>()V

    .line 99
    .local v7, "info":Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;
    invoke-virtual {v7}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getCommonDataPath()Ljava/lang/String;

    move-result-object v0

    .line 100
    goto :goto_0

    .line 111
    .end local v7    # "info":Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;
    .restart local v6    # "file":Ljava/io/File;
    :cond_2
    const/4 v6, 0x0

    .line 114
    iget-object v9, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->sendFileName:Ljava/lang/String;

    const/16 v10, 0x100

    invoke-virtual {p0, p1, v9, v10}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 117
    iget-wide v10, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->startTime:J

    invoke-virtual {p0, p1, v10, v11}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 120
    iget-object v9, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->sendFileName:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->sendFile(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public getReturnCd()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->returnCd:I

    return v0
.end method

.method protected writeFile(Ljava/io/FileOutputStream;)V
    .locals 1
    .param p1, "aOutput"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->data:[B

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSaveMetadataSender;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 143
    return-void
.end method
