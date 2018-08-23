.class public Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;
.super Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;
.source "MmbStRecCmMwGetContentsInfoDetailSender.java"


# instance fields
.field private final MESSAGE_GET_CONTENTS_INFO_DETAIL:I

.field private final RECEIVE_FILE_NAME:Ljava/lang/String;

.field private clientId:I

.field private infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

.field private prgNo:I

.field private processId:I


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .param p1, "aPrgNo"    # I
    .param p2, "aClientId"    # I
    .param p3, "aPid"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->prgNo:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    .line 50
    const v0, 0x10003

    iput v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->MESSAGE_GET_CONTENTS_INFO_DETAIL:I

    .line 53
    const-string v0, "GET_CONTENTS_INFO_DETAIL"

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->RECEIVE_FILE_NAME:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwGetContentsInfoDetailSender() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput p2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->clientId:I

    .line 71
    iput p3, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->processId:I

    .line 72
    iput p1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->prgNo:I

    .line 74
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwGetContentsInfoDetailSender() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected finishSendData()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public getInfoDetail()Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "getInfoDetail() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "getInfoDetail() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    return-object v0
.end method

.method protected readFile(Ljava/io/FileInputStream;)V
    .locals 10
    .param p1, "aInput"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x130

    const/16 v9, 0x84

    const/4 v8, 0x0

    .line 141
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "readFile() : START"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    if-nez p1, :cond_0

    .line 144
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "FileInputStream -> null"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "FileInputStream -> null"

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 147
    :cond_0
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    invoke-direct {v4}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;-><init>()V

    iput-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    .line 149
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readInt(Ljava/io/InputStream;)I

    move-result v5

    iput v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mPrgNo:I

    .line 151
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    invoke-virtual {p0, p1, v9}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mCrId:Ljava/lang/String;

    .line 153
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readInt(Ljava/io/InputStream;)I

    move-result v5

    iput v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mPlayCheckResult:I

    .line 155
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    invoke-virtual {p0, p1, v7}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mTitle:Ljava/lang/String;

    .line 157
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    invoke-virtual {p0, p1, v7}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mSubTitle:Ljava/lang/String;

    .line 158
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 159
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iput-object v8, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mSubTitle:Ljava/lang/String;

    .line 162
    :cond_1
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    invoke-virtual {p0, p1, v9}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mMediaTitleImage:Ljava/lang/String;

    .line 163
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mMediaTitleImage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 164
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iput-object v8, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mMediaTitleImage:Ljava/lang/String;

    .line 167
    :cond_2
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mProgramStartTime:J

    .line 169
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mProgramEndTime:J

    .line 171
    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 172
    .local v1, "COUNT_KEYWOORD":I
    if-nez v1, :cond_3

    .line 173
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iput-object v8, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    .line 178
    :goto_0
    const/4 v3, 0x0

    .local v3, "count":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 179
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    invoke-direct {v5}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;-><init>()V

    aput-object v5, v4, v3

    .line 180
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    aget-object v4, v4, v3

    const/16 v5, 0x7c

    invoke-virtual {p0, p1, v5}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mKeyword:Ljava/lang/String;

    .line 181
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    aget-object v4, v4, v3

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readInt(Ljava/io/InputStream;)I

    move-result v5

    iput v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mType:I

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 176
    .end local v3    # "count":I
    :cond_3
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    new-array v5, v1, [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    iput-object v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    goto :goto_0

    .line 184
    .restart local v3    # "count":I
    :cond_4
    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 185
    .local v0, "COUNT_GENRE":I
    if-nez v0, :cond_5

    .line 186
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iput-object v8, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    .line 191
    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_6

    .line 192
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    invoke-direct {v5}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;-><init>()V

    aput-object v5, v4, v3

    .line 193
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    aget-object v4, v4, v3

    invoke-virtual {p0, p1, v9}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mGenre:Ljava/lang/String;

    .line 194
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    aget-object v4, v4, v3

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readInt(Ljava/io/InputStream;)I

    move-result v5

    iput v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mType:I

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 189
    :cond_5
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    new-array v5, v0, [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    iput-object v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    goto :goto_2

    .line 197
    :cond_6
    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readInt(Ljava/io/InputStream;)I

    move-result v2

    .line 198
    .local v2, "COUNT_PROGRAM_SUMMARY":I
    if-nez v2, :cond_7

    .line 199
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iput-object v8, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    .line 204
    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_8

    .line 205
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    invoke-direct {v5}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;-><init>()V

    aput-object v5, v4, v3

    .line 206
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    aget-object v4, v4, v3

    const/16 v5, 0x4cc

    invoke-virtual {p0, p1, v5}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;->mSynopsis:Ljava/lang/String;

    .line 207
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    aget-object v4, v4, v3

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readInt(Ljava/io/InputStream;)I

    move-result v5

    iput v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;->mLength:I

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 202
    :cond_7
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    new-array v5, v2, [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    iput-object v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    goto :goto_4

    .line 210
    :cond_8
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    invoke-virtual {p0, p1, v9}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mParentalControlInformation:Ljava/lang/String;

    .line 212
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    invoke-direct {v5}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;-><init>()V

    iput-object v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    .line 213
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mPrice:J

    .line 214
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readInt(Ljava/io/InputStream;)I

    move-result v5

    iput v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mCurrency:I

    .line 216
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    invoke-direct {v5}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;-><init>()V

    iput-object v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    .line 217
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readInt(Ljava/io/InputStream;)I

    move-result v5

    iput v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mPurchaseType:I

    .line 218
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readInt(Ljava/io/InputStream;)I

    move-result v5

    iput v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mName:I

    .line 220
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mRecordingStartTime:J

    .line 222
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mRecordingTime:J

    .line 224
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readInt(Ljava/io/InputStream;)I

    move-result v5

    iput v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mRecordingRate:I

    .line 226
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mFileSize:J

    .line 228
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->infoDetail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readInt(Ljava/io/InputStream;)I

    move-result v5

    iput v5, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mServiceId:I

    .line 230
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "readFile() : END"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
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

    .line 89
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "receiveData() : START"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "input":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 94
    .local v1, "file":Ljava/io/File;
    iget v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->processId:I

    if-ltz v5, :cond_0

    iget v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->clientId:I

    if-gez v5, :cond_1

    .line 95
    :cond_0
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "false by id client : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->clientId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", processId :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->processId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by id"

    invoke-direct {v5, v6, v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 100
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GET_CONTENTS_INFO_DETAIL"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v5, "%08x"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->processId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v5, "%08x"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->clientId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v5, ".rcv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->makeRecieveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 111
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v2    # "input":Ljava/io/FileInputStream;
    .local v3, "input":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p0, v3}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->readFile(Ljava/io/FileInputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    if-eqz v3, :cond_2

    .line 128
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 130
    :cond_2
    invoke-virtual {p0, v1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->deleteFile(Ljava/io/File;)V

    .line 133
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "receiveData() : END"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void

    .line 114
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_0
    :try_start_2
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by make FileInputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by make FileInputStream"

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v2, :cond_3

    .line 128
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 130
    :cond_3
    invoke-virtual {p0, v1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->deleteFile(Ljava/io/File;)V

    throw v5

    .line 118
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by readFile"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by make FileInputStream"

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 122
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 123
    .local v0, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    :goto_3
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by readFile"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by make FileInputStream"

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    .end local v0    # "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_1

    .line 122
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    .line 118
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_2

    .line 114
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
    .line 82
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
    .line 256
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "writeMessege() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const v0, 0x10003

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 259
    iget v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->processId:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 260
    iget v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->clientId:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 261
    iget v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->prgNo:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 263
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsInfoDetailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "writeMessege() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
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
    .line 238
    return-void
.end method
