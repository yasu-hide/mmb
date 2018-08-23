.class public Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;
.super Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;
.source "MmbStRecCmMwSetContentsInfoMetaSender.java"


# instance fields
.field private final MESSAGE_SET_CONTENTS_META:I

.field private final SEND_FILE_NAME:Ljava/lang/String;

.field private clientId:I

.field private processId:I

.field private sendFile:Ljava/io/File;

.field private stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;


# direct methods
.method public constructor <init>(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;II)V
    .locals 3
    .param p1, "aStRecCmMwMeta"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;
    .param p2, "aClientId"    # I
    .param p3, "aPid"    # I

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;-><init>()V

    .line 39
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    .line 42
    const v0, 0x10001

    iput v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->MESSAGE_SET_CONTENTS_META:I

    .line 45
    const-string v0, "SET_CONTENTS_INFO_META"

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->SEND_FILE_NAME:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->sendFile:Ljava/io/File;

    .line 63
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwGetContentDetailSender() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput p2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->clientId:I

    .line 66
    iput p3, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->processId:I

    .line 67
    if-eqz p1, :cond_0

    .line 68
    iput-object p1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    .line 71
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwGetContentDetailSender() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected finishSendData()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->sendFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->deleteFile(Ljava/io/File;)V

    .line 282
    return-void
.end method

.method protected readFile(Ljava/io/FileInputStream;)V
    .locals 0
    .param p1, "aInput"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 139
    return-void
.end method

.method protected final receiveData()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 132
    return-void
.end method

.method protected final sendData()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 79
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "sendData() : START"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x0

    .line 83
    .local v1, "output":Ljava/io/FileOutputStream;
    iget v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->processId:I

    if-ltz v4, :cond_0

    iget v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->clientId:I

    if-gez v4, :cond_1

    .line 84
    :cond_0
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "false by id client : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->clientId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", processId :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->processId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by id"

    invoke-direct {v4, v5, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 89
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SET_CONTENTS_INFO_META"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v4, "%08x"

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->processId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v4, "%08x"

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->clientId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v4, ".snd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->makeSendFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->sendFile:Ljava/io/File;

    .line 100
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->sendFile:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .local v2, "output":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_2

    .line 102
    :try_start_1
    invoke-virtual {p0, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeFile(Ljava/io/FileOutputStream;)V

    .line 103
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    :cond_2
    if-eqz v2, :cond_3

    .line 120
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 124
    :cond_3
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "sendData() : END"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void

    .line 106
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_0
    :try_start_2
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by FileOutputStream"

    invoke-virtual {v4, v5, v6, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by FileOutputStream"

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_4

    .line 120
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    throw v4

    .line 110
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by sendFile"

    invoke-virtual {v4, v5, v6, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by writeFile"

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 115
    .local v0, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    :goto_3
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by sendFile"

    invoke-virtual {v4, v5, v6, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by writeFile"

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    .end local v0    # "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 114
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 110
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 106
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method protected sendMessage(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "writeMessege : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const v0, 0x10001

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 270
    iget v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->processId:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 271
    iget v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->clientId:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 273
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "writeMessege : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method protected writeFile(Ljava/io/FileOutputStream;)V
    .locals 12
    .param p1, "aOutput"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x4cc

    const/16 v10, 0x7c

    const/4 v9, -0x1

    const/16 v8, 0x130

    const/16 v7, 0x84

    .line 146
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "writeFile() : START"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, "keywordcount":I
    const/4 v1, 0x0

    .line 149
    .local v1, "genrecount":I
    const/4 v3, 0x0

    .line 151
    .local v3, "prgsammarycount":I
    if-nez p1, :cond_0

    .line 152
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "FileOutputStream -> null"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "FileOutputStream -> null"

    invoke-direct {v4, v5, v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 156
    :cond_0
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    if-nez v4, :cond_1

    .line 157
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "stRecCmMwMeta -> null"

    invoke-direct {v4, v5, v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 161
    :cond_1
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mCrid:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v7}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 164
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v8}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 167
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mSubTitle:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 168
    const-string v4, ""

    invoke-virtual {p0, p1, v4, v8}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 175
    :goto_0
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mMediaTitleImage:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 176
    const-string v4, ""

    invoke-virtual {p0, p1, v4, v7}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 183
    :goto_1
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-wide v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramStartTime:J

    invoke-virtual {p0, p1, v4, v5}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 186
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-wide v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramEndTime:J

    invoke-virtual {p0, p1, v4, v5}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 189
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    if-nez v4, :cond_4

    .line 190
    const/4 v2, 0x0

    .line 195
    :goto_2
    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 196
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_3
    if-ge v0, v2, :cond_6

    .line 197
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    aget-object v4, v4, v0

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mKeyword:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 198
    const-string v4, ""

    invoke-virtual {p0, p1, v4, v10}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 203
    :goto_4
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    aget-object v4, v4, v0

    iget v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mType:I

    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 171
    .end local v0    # "count":I
    :cond_2
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mSubTitle:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v8}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    goto :goto_0

    .line 179
    :cond_3
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mMediaTitleImage:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v7}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    goto :goto_1

    .line 193
    :cond_4
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    array-length v2, v4

    goto :goto_2

    .line 201
    .restart local v0    # "count":I
    :cond_5
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    aget-object v4, v4, v0

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mKeyword:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v10}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    goto :goto_4

    .line 207
    :cond_6
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    if-nez v4, :cond_7

    .line 208
    const/4 v1, 0x0

    .line 213
    :goto_5
    invoke-virtual {p0, p1, v1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 214
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_9

    .line 215
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    aget-object v4, v4, v0

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mGenre:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 216
    const-string v4, ""

    invoke-virtual {p0, p1, v4, v7}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 221
    :goto_7
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    aget-object v4, v4, v0

    iget v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mType:I

    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 211
    :cond_7
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    array-length v1, v4

    goto :goto_5

    .line 219
    :cond_8
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    aget-object v4, v4, v0

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mGenre:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v7}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    goto :goto_7

    .line 225
    :cond_9
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    if-nez v4, :cond_a

    .line 226
    const/4 v3, 0x0

    .line 231
    :goto_8
    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 232
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_c

    .line 233
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    aget-object v4, v4, v0

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;->mSynopsis:Ljava/lang/String;

    if-nez v4, :cond_b

    .line 234
    const-string v4, ""

    invoke-virtual {p0, p1, v4, v11}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 239
    :goto_a
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    aget-object v4, v4, v0

    iget v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;->mLength:I

    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 229
    :cond_a
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    array-length v3, v4

    goto :goto_8

    .line 237
    :cond_b
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    aget-object v4, v4, v0

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;->mSynopsis:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v11}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    goto :goto_a

    .line 243
    :cond_c
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mParentalControlInformation:Ljava/lang/String;

    if-nez v4, :cond_d

    .line 244
    const-string v4, ""

    invoke-virtual {p0, p1, v4, v7}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 251
    :goto_b
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    iget-wide v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mPrice:J

    invoke-virtual {p0, p1, v4, v5}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 252
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    iget v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mCurrency:I

    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 255
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    iget v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mPurchaseType:I

    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 256
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    iget v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mName:I

    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 258
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "writeFile() : END"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void

    .line 247
    :cond_d
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->stRecCmMwMeta:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mParentalControlInformation:Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v7}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsInfoMetaSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    goto :goto_b
.end method
