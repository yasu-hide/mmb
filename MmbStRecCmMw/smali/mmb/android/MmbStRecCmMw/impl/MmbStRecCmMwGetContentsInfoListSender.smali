.class public Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;
.super Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;
.source "MmbStRecCmMwGetContentsInfoListSender.java"


# instance fields
.field private final MESSAGE_GET_CONTENTS_INFO_LIST:I

.field private final RECEIVE_FILE_NAME:Ljava/lang/String;

.field private clientId:I

.field private infoList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;

.field private processId:I

.field private sort:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;


# direct methods
.method public constructor <init>(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;II)V
    .locals 3
    .param p1, "aSort"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;
    .param p2, "aClientId"    # I
    .param p3, "aPid"    # I

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;-><init>()V

    .line 40
    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->sort:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;

    .line 43
    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->infoList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;

    .line 46
    const v0, 0x10002

    iput v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->MESSAGE_GET_CONTENTS_INFO_LIST:I

    .line 49
    const-string v0, "GET_CONTENTS_INFO_LIST"

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->RECEIVE_FILE_NAME:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwGetContentsInfoListSender() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput p2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->clientId:I

    .line 66
    iput p3, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->processId:I

    .line 68
    if-eqz p1, :cond_0

    .line 69
    iput-object p1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->sort:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;

    .line 72
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwGetContentsInfoListSender() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected finishSendData()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public getInfoList()[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "getInfoList() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "getInfoList() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->infoList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;

    return-object v0
.end method

.method protected readFile(Ljava/io/FileInputStream;)V
    .locals 5
    .param p1, "aInput"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "readFile() : START"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-nez p1, :cond_0

    .line 143
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "FileInputStream -> null"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v3, "FileInputStream -> null"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 147
    .local v0, "COUNT_LIST":I
    new-array v2, v0, [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;

    iput-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->infoList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;

    .line 148
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 149
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->infoList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;

    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;

    invoke-direct {v3}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;-><init>()V

    aput-object v3, v2, v1

    .line 150
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->infoList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;->mPrgNo:I

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "readFile() : END"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method protected final receiveData()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 87
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "receiveData() : START"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "input":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 92
    .local v1, "file":Ljava/io/File;
    iget v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->processId:I

    if-ltz v5, :cond_0

    iget v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->clientId:I

    if-gez v5, :cond_1

    .line 93
    :cond_0
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "false by id client : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->clientId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", processId :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->processId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by id"

    invoke-direct {v5, v6, v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 98
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GET_CONTENTS_INFO_LIST"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v5, "%08x"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->processId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v5, "%08x"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->clientId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v5, ".rcv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->makeRecieveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 109
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v2    # "input":Ljava/io/FileInputStream;
    .local v3, "input":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p0, v3}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->readFile(Ljava/io/FileInputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    if-eqz v3, :cond_2

    .line 127
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 129
    :cond_2
    invoke-virtual {p0, v1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->deleteFile(Ljava/io/File;)V

    .line 132
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "receiveData() : END"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 112
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_0
    :try_start_2
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by FileInputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by FileInputStream"

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v2, :cond_3

    .line 127
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 129
    :cond_3
    invoke-virtual {p0, v1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->deleteFile(Ljava/io/File;)V

    throw v5

    .line 116
    :catch_1
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by readFile"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by readFile"

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 121
    .local v0, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    :goto_3
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by readFile"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by readFile"

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    .end local v0    # "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_1

    .line 120
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    .line 116
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_2

    .line 112
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method protected final sendData()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 80
    return-void
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
    .line 179
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "writeMessege() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const v0, 0x10002

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 182
    iget v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->processId:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 183
    iget v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->clientId:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 185
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->sort:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 187
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 194
    :goto_0
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "writeMessege() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->sort:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;

    iget v0, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;->mColumn:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 191
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->sort:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;

    iget v0, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;->mOrder:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoListSender;->writeInt(Ljava/io/OutputStream;I)V

    goto :goto_0
.end method

.method protected writeFile(Ljava/io/FileOutputStream;)V
    .locals 0
    .param p1, "aOutput"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 161
    return-void
.end method
