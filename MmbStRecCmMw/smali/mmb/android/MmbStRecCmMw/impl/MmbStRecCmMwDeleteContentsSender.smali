.class public Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;
.super Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;
.source "MmbStRecCmMwDeleteContentsSender.java"


# instance fields
.field private final MESSAGE_DELETE_CONTENTS:I

.field private final SEND_FILE_NAME:Ljava/lang/String;

.field private clientId:I

.field private prgNoList:[I

.field private processId:I

.field private sendFile:Ljava/io/File;


# direct methods
.method public constructor <init>([III)V
    .locals 3
    .param p1, "aPrgNo"    # [I
    .param p2, "aClientId"    # I
    .param p3, "aPid"    # I

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;-><init>()V

    .line 39
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->prgNoList:[I

    .line 42
    const v0, 0x10004

    iput v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->MESSAGE_DELETE_CONTENTS:I

    .line 45
    const-string v0, "DELETE_CONTENTS"

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->SEND_FILE_NAME:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->sendFile:Ljava/io/File;

    .line 63
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwDeleteContentsSender() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput p2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->clientId:I

    .line 66
    iput p3, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->processId:I

    .line 67
    iput-object p1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->prgNoList:[I

    .line 69
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwDeleteContentsSender() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected finishSendData()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->sendFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->deleteFile(Ljava/io/File;)V

    .line 185
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
    .line 137
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
    .line 130
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

    .line 77
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "sendData() : START"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v1, 0x0

    .line 81
    .local v1, "output":Ljava/io/FileOutputStream;
    iget v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->processId:I

    if-ltz v4, :cond_0

    iget v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->clientId:I

    if-gez v4, :cond_1

    .line 82
    :cond_0
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "false by id client : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->clientId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", processId :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->processId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by id"

    invoke-direct {v4, v5, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 87
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DELETE_CONTENTS"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v4, "%08x"

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->processId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v4, "%08x"

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->clientId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v4, ".snd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->makeSendFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->sendFile:Ljava/io/File;

    .line 98
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->sendFile:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .local v2, "output":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_2

    .line 100
    :try_start_1
    invoke-virtual {p0, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->writeFile(Ljava/io/FileOutputStream;)V

    .line 101
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    :cond_2
    if-eqz v2, :cond_3

    .line 118
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 122
    :cond_3
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "sendData() : END"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void

    .line 104
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_0
    :try_start_2
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by file not found"

    invoke-virtual {v4, v5, v6, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by file not found"

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_4

    .line 118
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    throw v4

    .line 108
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by sendFile"

    invoke-virtual {v4, v5, v6, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by writeFile"

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 113
    .local v0, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    :goto_3
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by sendFile"

    invoke-virtual {v4, v5, v6, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by writeFile"

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .end local v0    # "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 112
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 108
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 104
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
    .line 172
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "writeMessege() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const v0, 0x10004

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 174
    iget v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->processId:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 175
    iget v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->clientId:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 176
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "writeMessege() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method protected writeFile(Ljava/io/FileOutputStream;)V
    .locals 5
    .param p1, "aOutput"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "writeFile() : START"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v1, 0x0

    .line 147
    .local v1, "prgramnumcount":I
    if-nez p1, :cond_0

    .line 148
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "FileOutputStream -> null"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v3, "FileOutputStream -> null"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 153
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->prgNoList:[I

    if-nez v2, :cond_1

    .line 154
    const/4 v1, 0x0

    .line 159
    :goto_0
    invoke-virtual {p0, p1, v1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 160
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 161
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->prgNoList:[I

    aget v2, v2, v0

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    .end local v0    # "count":I
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->prgNoList:[I

    array-length v1, v2

    goto :goto_0

    .line 164
    .restart local v0    # "count":I
    :cond_2
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwDeleteContentsSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "writeFile() : END"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method
