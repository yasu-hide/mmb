.class public Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;
.super Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;
.source "MmbStRecCmMwGetContentsThumbnailSender.java"


# instance fields
.field private final MESSAGE_GET_CONTENTS_Thumbnail:I

.field private clientId:I

.field private cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

.field private prgNo:I

.field private processId:I

.field private thumbnail:[B


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .param p1, "aPrgNo"    # I
    .param p2, "aClientId"    # I
    .param p3, "aProcessId"    # I

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->prgNo:I

    .line 43
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->thumbnail:[B

    .line 46
    const v0, 0x10006

    iput v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->MESSAGE_GET_CONTENTS_Thumbnail:I

    .line 55
    iput-object v1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    .line 64
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwGetContentsThumbnailSender() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iput p1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->prgNo:I

    .line 67
    iput p3, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->processId:I

    .line 68
    iput p2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->clientId:I

    .line 70
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwGetContentsThumbnailSender() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private checkThumbCutData(Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;I)I
    .locals 7
    .param p1, "aCutData"    # Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;
    .param p2, "aPosition"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 319
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "chekCutData() : START"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogDataPrint(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    if-eqz p1, :cond_0

    iget-object v2, p1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutData:[B

    if-nez v2, :cond_1

    .line 323
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "STRecCmClient"

    const-string v3, "false by cut data null"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :goto_0
    return v0

    .line 327
    :cond_1
    iget v2, p1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutPosition:I

    if-eq v2, p2, :cond_2

    .line 328
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "STRecCmClient"

    const-string v3, "false by cut position"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_2
    iget v2, p1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutPosition:I

    iget v3, p1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutNum:I

    if-le v2, v3, :cond_3

    .line 332
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "STRecCmClient"

    const-string v3, "false by cut position over cut num"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_3
    iget v0, p1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mWholeSize:I

    const v2, 0x64000

    if-le v0, v2, :cond_4

    .line 338
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "false by over thumnbail max size"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/4 v0, -0x7

    goto :goto_0

    .line 342
    :cond_4
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "STRecCmClient"

    const-string v3, "chekCutData() : END"

    invoke-virtual {v0, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 343
    goto :goto_0
.end method

.method private communicateThumbnailData(Ljava/io/OutputStream;Ljava/io/InputStream;)I
    .locals 6
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .param p2, "aInput"    # Ljava/io/InputStream;

    .prologue
    const/4 v2, -0x1

    .line 257
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "communicateThumbnailData() : START"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v1, 0x0

    .line 261
    .local v1, "result":I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 262
    :cond_0
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "false by communicateThumbnailData param null"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_0
    return v2

    .line 265
    :cond_1
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    if-nez v3, :cond_2

    .line 266
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "false by cut_data null"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_2
    const v2, 0x10006

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 273
    iget v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->processId:I

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 274
    iget v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->clientId:I

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 275
    iget v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->prgNo:I

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 276
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    iget v2, v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mWholeSize:I

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 277
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    iget v2, v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutPosition:I

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 278
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 281
    invoke-virtual {p0, p2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 284
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    invoke-virtual {p0, p2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mWholeSize:I

    .line 285
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    invoke-virtual {p0, p2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutNum:I

    .line 286
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    invoke-virtual {p0, p2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutPosition:I

    .line 287
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    invoke-virtual {p0, p2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutSize:I

    .line 288
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    const/high16 v3, 0x20000

    invoke-virtual {p0, p2, v3}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    iput-object v3, v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutData:[B

    .line 291
    if-eqz v1, :cond_4

    .line 292
    const/4 v2, -0x5

    if-eq v1, v2, :cond_3

    .line 293
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "false by receive message"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    move v2, v1

    .line 295
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "false by IOStream"

    invoke-virtual {v2, v3, v4, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    const/4 v1, -0x1

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_1
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "communicateThumbnailData() : END"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 308
    goto/16 :goto_0

    .line 302
    :catch_1
    move-exception v0

    .line 303
    .local v0, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "false by MmbStRecCmMwException"

    invoke-virtual {v2, v3, v4, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected communicateMessageImpl(Landroid/net/LocalSocket;)I
    .locals 10
    .param p1, "aSocket"    # Landroid/net/LocalSocket;

    .prologue
    const/4 v9, 0x0

    .line 185
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "communicateMessageImpl() : START"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v3, 0x0

    .line 187
    .local v3, "result":I
    const/4 v2, 0x0

    .line 188
    .local v2, "output":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 191
    .local v1, "input":Ljava/io/InputStream;
    if-nez p1, :cond_0

    .line 192
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by socket null"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v5, -0x1

    .line 237
    :goto_0
    return v5

    .line 198
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 199
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 202
    invoke-direct {p0, v2, v1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->communicateThumbnailData(Ljava/io/OutputStream;Ljava/io/InputStream;)I

    move-result v3

    .line 203
    if-eqz v3, :cond_3

    .line 204
    const/4 v5, -0x5

    if-eq v3, v5, :cond_1

    .line 205
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "false by receive message : ERROR CODE -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_1
    if-eqz v2, :cond_9

    .line 218
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v3

    .line 225
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_1
    if-eqz v1, :cond_2

    .line 227
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    move v5, v3

    move v3, v4

    .line 232
    .end local v4    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close outputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    const/4 v4, -0x1

    .line 222
    .end local v3    # "result":I
    .restart local v4    # "result":I
    iput-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->thumbnail:[B

    goto :goto_1

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 229
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close inputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    const/4 v4, -0x1

    .line 231
    iput-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->thumbnail:[B

    goto :goto_2

    .line 216
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_3
    if-eqz v2, :cond_4

    .line 218
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 225
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 227
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 236
    :cond_5
    :goto_4
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "communicateMessageImpl() : END"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v3

    .line 237
    goto :goto_0

    .line 219
    :catch_2
    move-exception v0

    .line 220
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close outputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    const/4 v3, -0x1

    .line 222
    iput-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->thumbnail:[B

    goto :goto_3

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 229
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close inputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    const/4 v3, -0x1

    .line 231
    iput-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->thumbnail:[B

    goto :goto_4

    .line 210
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 211
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by stream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    const/4 v3, -0x1

    .line 213
    const/4 v5, 0x0

    iput-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->thumbnail:[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 216
    if-eqz v2, :cond_6

    .line 218
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 225
    :cond_6
    :goto_5
    if-eqz v1, :cond_5

    .line 227
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    .line 228
    :catch_5
    move-exception v0

    .line 229
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close inputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    const/4 v3, -0x1

    .line 231
    iput-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->thumbnail:[B

    goto :goto_4

    .line 219
    :catch_6
    move-exception v0

    .line 220
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close outputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    const/4 v3, -0x1

    .line 222
    iput-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->thumbnail:[B

    goto :goto_5

    .line 216
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_7

    .line 218
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 225
    :cond_7
    :goto_6
    if-eqz v1, :cond_8

    .line 227
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 232
    :cond_8
    :goto_7
    throw v5

    .line 219
    :catch_7
    move-exception v0

    .line 220
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    const-string v8, "false by close outputStream"

    invoke-virtual {v6, v7, v8, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    const/4 v3, -0x1

    .line 222
    iput-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->thumbnail:[B

    goto :goto_6

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 229
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    const-string v8, "false by close inputStream"

    invoke-virtual {v6, v7, v8, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    const/4 v3, -0x1

    .line 231
    iput-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->thumbnail:[B

    goto :goto_7

    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    move v4, v3

    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto/16 :goto_1
.end method

.method protected finishSendData()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public getThumbnail()[B
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->thumbnail:[B

    return-object v0
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
    .line 366
    return-void
.end method

.method protected receiveData()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 352
    return-void
.end method

.method protected send(Ljava/lang/String;)I
    .locals 13
    .param p1, "aSocketName"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v10, "STRecCmClient"

    const-string v11, "send() : START"

    invoke-virtual {v9, v10, v11}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "address":Landroid/net/LocalSocketAddress;
    const/4 v6, 0x0

    .line 85
    .local v6, "socket":Landroid/net/LocalSocket;
    const/4 v4, 0x0

    .line 86
    .local v4, "rcv_thumbnail":[B
    const/4 v2, 0x1

    .line 87
    .local v2, "cut_num":I
    const/4 v5, 0x0

    .line 88
    .local v5, "result":I
    const/4 v8, 0x1

    .line 91
    .local v8, "whole_size":I
    if-nez p1, :cond_0

    .line 92
    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v10, "STRecCmClient"

    const-string v11, "false by aSocketName null"

    invoke-virtual {v9, v10, v11}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v9, -0x1

    .line 176
    :goto_0
    return v9

    .line 97
    :cond_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    sget-object v9, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p1, v9}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 100
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    const/4 v1, 0x1

    .local v1, "count":I
    move-object v7, v6

    .end local v6    # "socket":Landroid/net/LocalSocket;
    .local v7, "socket":Ljava/lang/Object;
    :goto_1
    if-gt v1, v2, :cond_7

    .line 102
    new-instance v9, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    invoke-direct {v9}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;-><init>()V

    iput-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    .line 104
    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    iput v1, v9, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutPosition:I

    .line 105
    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    iput v8, v9, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mWholeSize:I

    .line 109
    :try_start_0
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .restart local v6    # "socket":Landroid/net/LocalSocket;
    :try_start_1
    invoke-virtual {v6, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 118
    .end local v7    # "socket":Ljava/lang/Object;
    invoke-virtual {p0, v6}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->communicateMessageImpl(Landroid/net/LocalSocket;)I

    move-result v5

    .line 121
    if-eqz v6, :cond_1

    .line 123
    :try_start_2
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    :cond_1
    const/4 v6, 0x0

    .line 133
    if-eqz v5, :cond_4

    .line 134
    const/4 v9, -0x5

    if-eq v5, v9, :cond_2

    .line 135
    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v10, "STRecCmClient"

    const-string v11, "false by receive message"

    invoke-virtual {v9, v10, v11}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_2
    :goto_2
    if-nez v5, :cond_3

    .line 172
    iput-object v4, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->thumbnail:[B

    .line 175
    :cond_3
    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v10, "STRecCmClient"

    const-string v11, "send() : END"

    invoke-virtual {v9, v10, v11}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v5

    .line 176
    goto :goto_0

    .line 111
    .end local v6    # "socket":Landroid/net/LocalSocket;
    .restart local v7    # "socket":Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 112
    .end local v7    # "socket":Ljava/lang/Object;
    .local v3, "e":Ljava/io/IOException;
    .restart local v6    # "socket":Landroid/net/LocalSocket;
    :goto_3
    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v10, "STRecCmClient"

    const-string v11, "false by connect socket"

    invoke-virtual {v9, v10, v11, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    const/4 v5, -0x1

    .line 114
    goto :goto_2

    .line 124
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 125
    .restart local v3    # "e":Ljava/io/IOException;
    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v10, "STRecCmClient"

    const-string v11, "false by LocalSoket close"

    invoke-virtual {v9, v10, v11, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    const/4 v5, -0x1

    .line 127
    goto :goto_2

    .line 141
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v9, 0x1

    if-ne v1, v9, :cond_5

    .line 142
    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    iget v9, v9, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mWholeSize:I

    new-array v4, v9, [B

    .line 143
    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    iget v2, v9, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutNum:I

    .line 144
    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    iget v8, v9, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mWholeSize:I

    .line 148
    :cond_5
    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    invoke-direct {p0, v9, v1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->checkThumbCutData(Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;I)I

    move-result v5

    .line 149
    if-eqz v5, :cond_6

    .line 150
    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v10, "STRecCmClient"

    const-string v11, "false by receive cut data"

    invoke-virtual {v9, v10, v11}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 156
    :cond_6
    :try_start_3
    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    iget-object v9, v9, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutData:[B

    const/4 v10, 0x0

    add-int/lit8 v11, v1, -0x1

    const/high16 v12, 0x20000

    mul-int/2addr v11, v12

    iget-object v12, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    iget v12, v12, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutSize:I

    invoke-static {v9, v10, v4, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ArrayStoreException; {:try_start_3 .. :try_end_3} :catch_3

    .line 100
    add-int/lit8 v1, v1, 0x1

    move-object v7, v6

    .restart local v7    # "socket":Ljava/lang/Object;
    goto/16 :goto_1

    .line 158
    .end local v7    # "socket":Ljava/lang/Object;
    :catch_2
    move-exception v3

    .line 159
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v10, "STRecCmClient"

    const-string v11, "false by outof bounds"

    invoke-virtual {v9, v10, v11, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    const/4 v5, -0x1

    .line 161
    goto :goto_2

    .line 163
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v3

    .line 164
    .local v3, "e":Ljava/lang/ArrayStoreException;
    iget-object v9, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwGetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v10, "STRecCmClient"

    const-string v11, "false by arrays miss match"

    invoke-virtual {v9, v10, v11, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    const/4 v5, -0x1

    .line 166
    goto :goto_2

    .line 111
    .end local v3    # "e":Ljava/lang/ArrayStoreException;
    :catch_4
    move-exception v3

    goto :goto_3

    .end local v6    # "socket":Landroid/net/LocalSocket;
    .restart local v7    # "socket":Ljava/lang/Object;
    :cond_7
    move-object v6, v7

    .restart local v6    # "socket":Landroid/net/LocalSocket;
    goto :goto_2
.end method

.method protected sendData()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 348
    return-void
.end method

.method protected sendMessage(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 357
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
    .line 371
    return-void
.end method
