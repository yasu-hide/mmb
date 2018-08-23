.class public Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;
.super Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;
.source "MmbStRecCmMwSetContentsThumbnailSender.java"


# instance fields
.field private final MESSAGE_SET_THUMBNAIL:I

.field private clientId:I

.field private cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

.field private processId:I

.field private thumbnail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;


# direct methods
.method public constructor <init>(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;II)V
    .locals 3
    .param p1, "aThumbnail"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;
    .param p2, "aClientId"    # I
    .param p3, "aProcessId"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->thumbnail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;

    .line 43
    const v0, 0x10007

    iput v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->MESSAGE_SET_THUMBNAIL:I

    .line 52
    new-instance v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    invoke-direct {v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    .line 61
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwSetContentsThumbnailSender() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->thumbnail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;

    .line 64
    iput p3, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->processId:I

    .line 65
    iput p2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->clientId:I

    .line 67
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "MmbStRecCmMwSetContentsThumbnailSender() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private communicateTumbnailData(Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;Ljava/io/OutputStream;Ljava/io/InputStream;)I
    .locals 5
    .param p1, "aCutData"    # Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;
    .param p2, "aOutput"    # Ljava/io/OutputStream;
    .param p3, "aInput"    # Ljava/io/InputStream;

    .prologue
    .line 245
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "communicateTumbnailData() : START"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v1, -0x1

    .line 249
    .local v1, "result":I
    if-eqz p1, :cond_0

    iget-object v2, p1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutData:[B

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 251
    :cond_0
    const/4 v2, -0x1

    .line 282
    :goto_0
    return v2

    .line 255
    :cond_1
    const v2, 0x10007

    :try_start_0
    invoke-virtual {p0, p2, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 256
    iget v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->processId:I

    invoke-virtual {p0, p2, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 257
    iget v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->clientId:I

    invoke-virtual {p0, p2, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 258
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->thumbnail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;

    iget v2, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;->mPrgNo:I

    invoke-virtual {p0, p2, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 259
    iget v2, p1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mWholeSize:I

    invoke-virtual {p0, p2, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 260
    iget v2, p1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutNum:I

    invoke-virtual {p0, p2, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 261
    iget v2, p1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutPosition:I

    invoke-virtual {p0, p2, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 262
    iget v2, p1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutSize:I

    invoke-virtual {p0, p2, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 263
    iget-object v2, p1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutData:[B

    invoke-virtual {p0, p2, v2}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 264
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 267
    invoke-virtual {p0, p3}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 268
    if-eqz v1, :cond_2

    .line 269
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "false by receive message"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v1

    .line 270
    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "false by IOStream"

    invoke-virtual {v2, v3, v4, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    const/4 v1, -0x1

    .line 281
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "communicateTumbnailData() : END"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 282
    goto :goto_0

    .line 276
    :catch_1
    move-exception v0

    .line 277
    .local v0, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "false by MmbStRecCmMwException"

    invoke-virtual {v2, v3, v4, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected communicateMessageImpl(Landroid/net/LocalSocket;)I
    .locals 9
    .param p1, "aSocket"    # Landroid/net/LocalSocket;

    .prologue
    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, "output":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 186
    .local v1, "input":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 187
    .local v3, "result":I
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "communicateMessageImpl() : START"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-nez p1, :cond_0

    .line 191
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by socket null"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v5, -0x1

    .line 233
    :goto_0
    return v5

    .line 197
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 198
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 201
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    invoke-direct {p0, v5, v2, v1}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->communicateTumbnailData(Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;Ljava/io/OutputStream;Ljava/io/InputStream;)I

    move-result v3

    .line 204
    if-eqz v3, :cond_2

    .line 205
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "false by send messege : ERROR CODE -> "

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

    .line 214
    if-eqz v2, :cond_8

    .line 216
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v3

    .line 222
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_1
    if-eqz v1, :cond_1

    .line 224
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    move v5, v3

    move v3, v4

    .line 228
    .end local v4    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close outputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    const/4 v4, -0x1

    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_1

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 226
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close inputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    const/4 v4, -0x1

    goto :goto_2

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_2
    if-eqz v2, :cond_3

    .line 216
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 222
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 224
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 232
    :cond_4
    :goto_4
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "communicateMessageImpl : END"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v3

    .line 233
    goto :goto_0

    .line 217
    :catch_2
    move-exception v0

    .line 218
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close outputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    const/4 v3, -0x1

    goto :goto_3

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 226
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close inputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    const/4 v3, -0x1

    .line 228
    goto :goto_4

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 210
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by stream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 211
    const/4 v3, -0x1

    .line 214
    if-eqz v2, :cond_5

    .line 216
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 222
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    :goto_5
    if-eqz v1, :cond_4

    .line 224
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    .line 225
    :catch_5
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close inputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    const/4 v3, -0x1

    .line 228
    goto :goto_4

    .line 217
    .local v0, "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close outputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    const/4 v3, -0x1

    goto :goto_5

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_6

    .line 216
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 222
    :cond_6
    :goto_6
    if-eqz v1, :cond_7

    .line 224
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 228
    :cond_7
    :goto_7
    throw v5

    .line 217
    :catch_7
    move-exception v0

    .line 218
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    const-string v8, "false by close outputStream"

    invoke-virtual {v6, v7, v8, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    const/4 v3, -0x1

    goto :goto_6

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v0

    .line 226
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    const-string v8, "false by close inputStream"

    invoke-virtual {v6, v7, v8, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    const/4 v3, -0x1

    goto :goto_7

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    move v4, v3

    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto/16 :goto_1
.end method

.method protected finishSendData()V
    .locals 0

    .prologue
    .line 300
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
    .line 305
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
    .line 291
    return-void
.end method

.method protected send(Ljava/lang/String;)I
    .locals 14
    .param p1, "aSocketName"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "address":Landroid/net/LocalSocketAddress;
    const/4 v8, 0x0

    .line 82
    .local v8, "socket":Landroid/net/LocalSocket;
    const/4 v10, 0x0

    .line 83
    .local v10, "thumbnail_size":I
    const/4 v2, 0x0

    .line 84
    .local v2, "cut_num":I
    const/4 v3, 0x0

    .line 85
    .local v3, "cut_size":I
    const/4 v6, 0x0

    .line 86
    .local v6, "last_thumbnail_size":I
    const/4 v4, 0x0

    .line 87
    .local v4, "cut_thumbnail":[B
    const/4 v7, 0x0

    .line 89
    .local v7, "result":I
    iget-object v11, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v12, "STRecCmClient"

    const-string v13, "send() : START"

    invoke-virtual {v11, v12, v13}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-nez p1, :cond_0

    .line 93
    iget-object v11, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v12, "STRecCmClient"

    const-string v13, "false by aSocketName null"

    invoke-virtual {v11, v12, v13}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v11, -0x1

    .line 176
    :goto_0
    return v11

    .line 98
    :cond_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    sget-object v11, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p1, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 101
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    iget-object v11, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->thumbnail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;

    iget-object v11, v11, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;->mThumbnail:[B

    array-length v10, v11

    .line 102
    const/high16 v11, 0x20000

    div-int v11, v10, v11

    add-int/lit8 v2, v11, 0x1

    .line 103
    const/high16 v11, 0x20000

    rem-int v6, v10, v11

    .line 104
    if-nez v6, :cond_1

    .line 105
    add-int/lit8 v2, v2, -0x1

    .line 106
    const/high16 v6, 0x20000

    .line 110
    :cond_1
    const/high16 v11, 0x20000

    new-array v4, v11, [B

    .line 113
    const/4 v1, 0x1

    .local v1, "count":I
    move-object v9, v8

    .end local v8    # "socket":Landroid/net/LocalSocket;
    .local v9, "socket":Ljava/lang/Object;
    :goto_1
    if-gt v1, v2, :cond_5

    .line 115
    if-ne v1, v2, :cond_3

    .line 116
    move v3, v6

    .line 124
    :goto_2
    :try_start_0
    iget-object v11, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->thumbnail:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;

    iget-object v11, v11, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;->mThumbnail:[B

    add-int/lit8 v12, v1, -0x1

    const/high16 v13, 0x20000

    mul-int/2addr v12, v13

    const/4 v13, 0x0

    invoke-static {v11, v12, v4, v13, v3}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    iget-object v11, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    iput v10, v11, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mWholeSize:I

    .line 139
    iget-object v11, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    iput v2, v11, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutNum:I

    .line 140
    iget-object v11, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    iput v1, v11, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutPosition:I

    .line 141
    iget-object v11, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    iput-object v4, v11, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutData:[B

    .line 142
    iget-object v11, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->cut_data:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;

    iput v3, v11, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutSize:I

    .line 146
    :try_start_1
    new-instance v8, Landroid/net/LocalSocket;

    invoke-direct {v8}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 147
    .restart local v8    # "socket":Landroid/net/LocalSocket;
    :try_start_2
    invoke-virtual {v8, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 154
    .end local v9    # "socket":Ljava/lang/Object;
    invoke-virtual {p0, v8}, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->communicateMessageImpl(Landroid/net/LocalSocket;)I

    move-result v7

    .line 157
    if-eqz v8, :cond_2

    .line 159
    :try_start_3
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 166
    :cond_2
    const/4 v8, 0x0

    .line 169
    if-eqz v7, :cond_4

    .line 170
    iget-object v11, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v12, "STRecCmClient"

    const-string v13, "false by communicateMessage"

    invoke-virtual {v11, v12, v13}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_3
    iget-object v11, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v12, "STRecCmClient"

    const-string v13, "send() : END"

    invoke-virtual {v11, v12, v13}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v7

    .line 176
    goto :goto_0

    .line 119
    .end local v8    # "socket":Landroid/net/LocalSocket;
    .restart local v9    # "socket":Ljava/lang/Object;
    :cond_3
    const/high16 v3, 0x20000

    goto :goto_2

    .line 126
    :catch_0
    move-exception v5

    .line 127
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v11, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v12, "STRecCmClient"

    const-string v13, "false by outof bounds"

    invoke-virtual {v11, v12, v13, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    const/4 v7, -0x1

    move-object v8, v9

    .line 129
    .restart local v8    # "socket":Landroid/net/LocalSocket;
    goto :goto_3

    .line 131
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v8    # "socket":Landroid/net/LocalSocket;
    :catch_1
    move-exception v5

    .line 132
    .local v5, "e":Ljava/lang/ArrayStoreException;
    iget-object v11, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v12, "STRecCmClient"

    const-string v13, "false by arrays miss match"

    invoke-virtual {v11, v12, v13, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    const/4 v7, -0x1

    move-object v8, v9

    .line 134
    .restart local v8    # "socket":Landroid/net/LocalSocket;
    goto :goto_3

    .line 148
    .end local v5    # "e":Ljava/lang/ArrayStoreException;
    .end local v8    # "socket":Landroid/net/LocalSocket;
    :catch_2
    move-exception v5

    move-object v8, v9

    .line 149
    .end local v9    # "socket":Ljava/lang/Object;
    .local v5, "e":Ljava/io/IOException;
    .restart local v8    # "socket":Landroid/net/LocalSocket;
    :goto_4
    iget-object v11, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v12, "STRecCmClient"

    const-string v13, "false by connect socket"

    invoke-virtual {v11, v12, v13, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    const/4 v7, -0x1

    .line 151
    goto :goto_3

    .line 160
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 161
    .restart local v5    # "e":Ljava/io/IOException;
    iget-object v11, p0, Lmmb/android/MmbStRecCmMw/impl/MmbStRecCmMwSetContentsThumbnailSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v12, "STRecCmClient"

    const-string v13, "false by LocalSoket close"

    invoke-virtual {v11, v12, v13, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    const/4 v7, -0x1

    .line 163
    goto :goto_3

    .line 113
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    move-object v9, v8

    .restart local v9    # "socket":Ljava/lang/Object;
    goto/16 :goto_1

    .line 148
    .end local v9    # "socket":Ljava/lang/Object;
    :catch_4
    move-exception v5

    goto :goto_4

    .end local v8    # "socket":Landroid/net/LocalSocket;
    .restart local v9    # "socket":Ljava/lang/Object;
    :cond_5
    move-object v8, v9

    .restart local v8    # "socket":Landroid/net/LocalSocket;
    goto :goto_3
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
    .line 287
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
    .line 296
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
    .line 310
    return-void
.end method
