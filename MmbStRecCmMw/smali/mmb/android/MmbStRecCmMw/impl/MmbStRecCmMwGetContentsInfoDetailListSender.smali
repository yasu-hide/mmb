.class public Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;
.super Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;
.source "MmbStRecCmMwGetContentsInfoDetailListSender.java"


# instance fields
.field private final FILE_NAME:Ljava/lang/String;

.field private final MESSAGE_GET_CONTENTS_INFO_DETAIL_LIST:I

.field private clientId:I

.field private infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

.field private prgNoList:[I

.field private processId:I

.field private sendFile:Ljava/io/File;

.field private sort:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;


# direct methods
.method public constructor <init>([ILmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;II)V
    .locals 3
    .param p1, "aPrgNo"    # [I
    .param p2, "aSort"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;
    .param p3, "aClientId"    # I
    .param p4, "aPid"    # I

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;-><init>()V

    .line 40
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->prgNoList:[I

    .line 43
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->sort:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;

    .line 46
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    .line 49
    const v0, 0x10008

    iput v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->MESSAGE_GET_CONTENTS_INFO_DETAIL_LIST:I

    .line 52
    const-string v0, "GET_CONTENTS_INFO_DETAIL_LIST"

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->FILE_NAME:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->sendFile:Ljava/io/File;

    .line 71
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwGetContentsInfoDetailListSender() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput p3, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->clientId:I

    .line 74
    iput p4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->processId:I

    .line 75
    iput-object p1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->prgNoList:[I

    .line 77
    if-eqz p2, :cond_0

    .line 78
    iput-object p2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->sort:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;

    .line 81
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwGetContentsInfoDetailListSender() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method protected finishSendData()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->sendFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->deleteFile(Ljava/io/File;)V

    .line 302
    return-void
.end method

.method public getInfoDetailList()[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "getInfoDetailList() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "getInfoDetailList() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    return-object v0
.end method

.method protected readFile(Ljava/io/FileInputStream;)V
    .locals 9
    .param p1, "aInput"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x130

    const/16 v6, 0x84

    .line 194
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "readFile() : START"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-nez p1, :cond_0

    .line 197
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "FileInputStream -> null"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v3, "FileInputStream -> null"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 200
    :cond_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 201
    .local v0, "COUNT_LIST":I
    new-array v2, v0, [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    iput-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    .line 202
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 203
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    invoke-direct {v3}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;-><init>()V

    aput-object v3, v2, v1

    .line 205
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mPrgNo:I

    .line 207
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v6}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mCrId:Ljava/lang/String;

    .line 209
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mPlayCheckResult:I

    .line 211
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v7}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mTitle:Ljava/lang/String;

    .line 213
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v7}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mSubTitle:Ljava/lang/String;

    .line 214
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    aget-object v2, v2, v1

    iget-object v2, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 215
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    aget-object v2, v2, v1

    iput-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mSubTitle:Ljava/lang/String;

    .line 218
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v6}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mMediaTitleImage:Ljava/lang/String;

    .line 219
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    aget-object v2, v2, v1

    iget-object v2, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mMediaTitleImage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 220
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    aget-object v2, v2, v1

    iput-object v8, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mMediaTitleImage:Ljava/lang/String;

    .line 223
    :cond_2
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mProgramStartTime:J

    .line 225
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mProgramEndTime:J

    .line 227
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v6}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mParentalControlInformation:Ljava/lang/String;

    .line 229
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mRecordingTime:J

    .line 231
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->infoDetailList:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;->mRecordingRate:I

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 234
    :cond_3
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "readFile() : END"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
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

    .line 142
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "receiveData() : START"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v2, 0x0

    .line 144
    .local v2, "input":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 147
    .local v1, "file":Ljava/io/File;
    iget v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->processId:I

    if-ltz v5, :cond_0

    iget v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->clientId:I

    if-gez v5, :cond_1

    .line 148
    :cond_0
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "false by id client : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->clientId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", processId :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->processId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by id"

    invoke-direct {v5, v6, v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 153
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GET_CONTENTS_INFO_DETAIL_LIST"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v5, "%08x"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->processId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v5, "%08x"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->clientId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v5, ".rcv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->makeRecieveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 164
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v2    # "input":Ljava/io/FileInputStream;
    .local v3, "input":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p0, v3}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->readFile(Ljava/io/FileInputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    if-eqz v3, :cond_2

    .line 181
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 183
    :cond_2
    invoke-virtual {p0, v1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->deleteFile(Ljava/io/File;)V

    .line 186
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "receiveData() : END"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void

    .line 167
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_0
    :try_start_2
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by make FileInputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by make FileInputStream"

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v2, :cond_3

    .line 181
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 183
    :cond_3
    invoke-virtual {p0, v1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->deleteFile(Ljava/io/File;)V

    throw v5

    .line 171
    :catch_1
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by readFile"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by make FileInputStream"

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 176
    .local v0, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    :goto_3
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by readFile"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by make FileInputStream"

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    .end local v0    # "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_1

    .line 175
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    .line 171
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_2

    .line 167
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

    .line 89
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "sendData() : START"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x0

    .line 93
    .local v1, "output":Ljava/io/FileOutputStream;
    iget v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->processId:I

    if-ltz v4, :cond_0

    iget v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->clientId:I

    if-gez v4, :cond_1

    .line 94
    :cond_0
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "false by id client : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->clientId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", processId :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->processId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by id"

    invoke-direct {v4, v5, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 99
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GET_CONTENTS_INFO_DETAIL_LIST"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v4, "%08x"

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->processId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v4, "%08x"

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->clientId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v4, ".snd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->makeSendFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->sendFile:Ljava/io/File;

    .line 110
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->sendFile:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .local v2, "output":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_2

    .line 112
    :try_start_1
    invoke-virtual {p0, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->writeFile(Ljava/io/FileOutputStream;)V

    .line 113
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    :cond_2
    if-eqz v2, :cond_3

    .line 130
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 134
    :cond_3
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "sendData() : END"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 116
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_0
    :try_start_2
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by file not found"

    invoke-virtual {v4, v5, v6, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by file not found"

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_4

    .line 130
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    throw v4

    .line 120
    :catch_1
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by sendFile"

    invoke-virtual {v4, v5, v6, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by writeFile"

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 125
    .local v0, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    :goto_3
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by sendFile"

    invoke-virtual {v4, v5, v6, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by writeFile"

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    .end local v0    # "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 124
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 120
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 116
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
    .line 281
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "writeMessege() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const v0, 0x10008

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 284
    iget v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->processId:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 285
    iget v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->clientId:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 287
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->sort:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 289
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 296
    :goto_0
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "writeMessege() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->sort:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;

    iget v0, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;->mColumn:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 293
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->sort:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;

    iget v0, v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;->mOrder:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->writeInt(Ljava/io/OutputStream;I)V

    goto :goto_0
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
    .line 242
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "writeFile() : START"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v1, 0x0

    .line 245
    .local v1, "prgramnumcount":I
    if-nez p1, :cond_0

    .line 246
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "FileOutputStream -> null"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v3, "FileOutputStream -> null"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 251
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->prgNoList:[I

    if-nez v2, :cond_1

    .line 252
    const/4 v1, 0x0

    .line 257
    :goto_0
    invoke-virtual {p0, p1, v1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 258
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 259
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->prgNoList:[I

    aget v2, v2, v0

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 255
    .end local v0    # "count":I
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->prgNoList:[I

    array-length v1, v2

    goto :goto_0

    .line 262
    .restart local v0    # "count":I
    :cond_2
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailListSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "writeFile() : END"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method
