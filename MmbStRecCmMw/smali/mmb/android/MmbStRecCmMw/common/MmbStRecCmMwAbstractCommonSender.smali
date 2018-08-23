.class public abstract Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;
.super Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;
.source "MmbStRecCmMwAbstractCommonSender.java"


# static fields
.field private static final FILE_DIRECTRY:Ljava/lang/String; = "streccm"


# instance fields
.field private recieveMessege:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->recieveMessege:I

    return-void
.end method

.method private getRecieveMessage(Ljava/io/InputStream;)I
    .locals 6
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "STRecCmClient"

    const-string v3, "getRecieveMessege : START"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 291
    .local v0, "messege":I
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "STRecCmClient"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "getRecieveMessege : END"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogDataPrint(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    return v0
.end method

.method private receiveDataImpl()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 385
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "receiveDataImpl() : START"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :try_start_0
    invoke-virtual {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->receiveData()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_1

    .line 399
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "STRecCmClient"

    const-string v3, "receiveDataImpl() : END"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "false by receive data"

    invoke-virtual {v2, v3, v4, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 394
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 395
    .local v0, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "false by receive data"

    invoke-virtual {v2, v3, v4, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendDataImpl()I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 301
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "sendDataImpl() : START"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v1, 0x0

    .line 305
    .local v1, "result":I
    :try_start_0
    invoke-virtual {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->sendData()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_1

    .line 316
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "sendDataImpl() : END"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .end local v1    # "result":I
    :goto_0
    return v1

    .line 307
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "false by send data "

    invoke-virtual {v3, v4, v5, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    .line 309
    goto :goto_0

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 312
    .local v0, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "false by send data"

    invoke-virtual {v3, v4, v5, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    .line 313
    goto :goto_0
.end method


# virtual methods
.method protected communicateMessageImpl(Landroid/net/LocalSocket;)I
    .locals 8
    .param p1, "aSocket"    # Landroid/net/LocalSocket;

    .prologue
    const/4 v4, -0x1

    .line 327
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "communicateMessageImpl() : START"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v2, 0x0

    .line 329
    .local v2, "output":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 330
    .local v1, "input":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 331
    .local v3, "result":I
    iput v4, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->recieveMessege:I

    .line 333
    if-nez p1, :cond_1

    .line 334
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by socket -> null"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    :goto_0
    return v4

    .line 340
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 341
    invoke-virtual {p0, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->sendMessage(Ljava/io/OutputStream;)V

    .line 342
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 345
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 346
    invoke-direct {p0, v1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->getRecieveMessage(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->recieveMessege:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    if-eqz v2, :cond_2

    .line 359
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 365
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 367
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 375
    :cond_3
    :goto_2
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "communicateMessageImpl() : END"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 376
    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by close OutputStream"

    invoke-virtual {v4, v5, v6, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    const/4 v3, -0x1

    goto :goto_1

    .line 368
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 369
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by close InputStream"

    invoke-virtual {v4, v5, v6, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    const/4 v3, -0x1

    .line 371
    goto :goto_2

    .line 348
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 349
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by send messege"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    if-eqz v2, :cond_4

    .line 359
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 365
    :cond_4
    :goto_3
    if-eqz v1, :cond_0

    .line 367
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 368
    :catch_3
    move-exception v0

    .line 369
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close InputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    const/4 v3, -0x1

    goto :goto_0

    .line 360
    :catch_4
    move-exception v0

    .line 361
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close OutputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    const/4 v3, -0x1

    goto :goto_3

    .line 352
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 353
    .local v0, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    :try_start_6
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by receive messege"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 357
    if-eqz v2, :cond_5

    .line 359
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 365
    .end local v0    # "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    :cond_5
    :goto_4
    if-eqz v1, :cond_0

    .line 367
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 368
    :catch_6
    move-exception v0

    .line 369
    .local v0, "e":Ljava/io/IOException;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close InputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 360
    .local v0, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    :catch_7
    move-exception v0

    .line 361
    .local v0, "e":Ljava/io/IOException;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close OutputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    const/4 v3, -0x1

    goto :goto_4

    .line 357
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_6

    .line 359
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 365
    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    .line 367
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 371
    :cond_7
    :goto_6
    throw v4

    .line 360
    :catch_8
    move-exception v0

    .line 361
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close OutputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    const/4 v3, -0x1

    goto :goto_5

    .line 368
    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 369
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by close InputStream"

    invoke-virtual {v5, v6, v7, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    const/4 v3, -0x1

    goto :goto_6
.end method

.method protected deleteFile(Ljava/io/File;)V
    .locals 3
    .param p1, "aFile"    # Ljava/io/File;

    .prologue
    .line 234
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "deleteFile() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-nez p1, :cond_0

    .line 237
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "aFile -> null"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_1
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "deleteFile() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract finishSendData()V
.end method

.method protected makeRecieveFile(Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p1, "aFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 196
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "makeRecieveFile() : START"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v4, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    invoke-direct {v4}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;-><init>()V

    .line 198
    .local v4, "info":Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;
    const/4 v3, 0x0

    .line 201
    .local v3, "filepath":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 202
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by Filename -> null"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by Filename -> null"

    invoke-direct {v5, v6, v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 206
    :cond_0
    :try_start_0
    const-string v5, "%s/%s/%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getCommonDataPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "streccm"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 214
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 216
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 217
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by directory not exist"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by directory not exist"

    invoke-direct {v5, v6, v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 208
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/util/IllegalFormatException;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by format file name"

    invoke-virtual {v5, v6, v7, v1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by format file name"

    invoke-direct {v5, v6, v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 220
    .end local v1    # "e":Ljava/util/IllegalFormatException;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    if-nez v0, :cond_2

    .line 221
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by directory -> null"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by directory -> null"

    invoke-direct {v5, v6, v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 225
    :cond_2
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "makeRecieveFile() : END"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-object v2
.end method

.method protected makeSendFile(Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p1, "aFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 146
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "makeSendFile() : START"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v4, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    invoke-direct {v4}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;-><init>()V

    .line 148
    .local v4, "info":Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;
    const/4 v3, 0x0

    .line 151
    .local v3, "filepath":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 152
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by Filename -> null"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by Filename -> null"

    invoke-direct {v5, v6, v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 156
    :cond_0
    :try_start_0
    const-string v5, "%s/%s/%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getCommonDataPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "streccm"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 164
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 166
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_1

    .line 167
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by directory -> null"

    invoke-direct {v5, v6, v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 158
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/util/IllegalFormatException;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by format file name"

    invoke-virtual {v5, v6, v7, v1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by format file name"

    invoke-direct {v5, v6, v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 170
    .end local v1    # "e":Ljava/util/IllegalFormatException;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 173
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 174
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 176
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 177
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "makeSendFile() : END"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-object v2

    .line 179
    :catch_1
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by meke send file"

    invoke-virtual {v5, v6, v7, v1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v6, "false by meke send file"

    invoke-direct {v5, v6, v9}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v5
.end method

.method protected abstract receiveData()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation
.end method

.method protected send(Ljava/lang/String;)I
    .locals 9
    .param p1, "aSocketName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 73
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    const-string v8, "send() : START"

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "address":Landroid/net/LocalSocketAddress;
    const/4 v3, 0x0

    .line 76
    .local v3, "socket":Landroid/net/LocalSocket;
    const/4 v2, -0x1

    .line 78
    .local v2, "result":I
    new-instance v0, Landroid/net/LocalSocketAddress;

    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p1, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 81
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->sendDataImpl()I

    move-result v2

    .line 82
    if-ne v2, v5, :cond_0

    .line 83
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    const-string v8, "false by send data"

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->finishSendData()V

    .line 137
    :goto_0
    return v5

    .line 91
    :cond_0
    :try_start_0
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .local v4, "socket":Landroid/net/LocalSocket;
    :try_start_1
    invoke-virtual {v4, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 102
    invoke-virtual {p0, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->communicateMessageImpl(Landroid/net/LocalSocket;)I

    move-result v2

    .line 104
    :try_start_2
    iget v6, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->recieveMessege:I

    if-eqz v6, :cond_2

    iget v6, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->recieveMessege:I

    const/4 v7, -0x8

    if-eq v6, v7, :cond_2

    .line 106
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "false by receive message"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->recieveMessege:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    invoke-virtual {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->finishSendData()V

    .line 114
    if-eqz v4, :cond_1

    .line 116
    :try_start_3
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    move-object v3, v4

    .line 120
    .end local v4    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    const-string v8, "false by connect socket"

    invoke-virtual {v6, v7, v8, v1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    invoke-virtual {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->finishSendData()V

    goto :goto_0

    .line 117
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v4    # "socket":Landroid/net/LocalSocket;
    :catch_1
    move-exception v1

    .line 118
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    const-string v8, "false by LocalSoket close"

    invoke-virtual {v6, v7, v8, v1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    const/4 v2, -0x1

    goto :goto_1

    .line 111
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->finishSendData()V

    .line 114
    if-eqz v4, :cond_3

    .line 116
    :try_start_4
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 124
    :cond_3
    :goto_3
    if-ne v2, v5, :cond_5

    .line 125
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    const-string v8, "false by communicate message"

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 126
    .end local v4    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    goto :goto_0

    .line 117
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v4    # "socket":Landroid/net/LocalSocket;
    :catch_2
    move-exception v1

    .line 118
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    const-string v8, "false by LocalSoket close"

    invoke-virtual {v6, v7, v8, v1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    const/4 v2, -0x1

    .line 120
    goto :goto_3

    .line 111
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->finishSendData()V

    .line 114
    if-eqz v4, :cond_4

    .line 116
    :try_start_5
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 120
    :cond_4
    :goto_4
    throw v5

    .line 117
    :catch_3
    move-exception v1

    .line 118
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    const-string v8, "false by LocalSoket close"

    invoke-virtual {v6, v7, v8, v1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    const/4 v2, -0x1

    goto :goto_4

    .line 130
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->receiveDataImpl()I

    move-result v2

    .line 131
    if-ne v2, v5, :cond_6

    .line 132
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    const-string v8, "false by receive data"

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 133
    .end local v4    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    goto/16 :goto_0

    .line 136
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v4    # "socket":Landroid/net/LocalSocket;
    :cond_6
    iget-object v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v6, "STRecCmClient"

    const-string v7, "send() : END"

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget v5, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->recieveMessege:I

    move-object v3, v4

    .end local v4    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    goto/16 :goto_0

    .line 94
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v4    # "socket":Landroid/net/LocalSocket;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    goto :goto_2
.end method

.method public sendCommand(Ljava/lang/String;)I
    .locals 3
    .param p1, "aSocketName"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "sendCommand() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    if-nez p1, :cond_0

    .line 57
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "false by socket name -> null "

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, -0x1

    .line 62
    :goto_0
    return v0

    .line 61
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "sendCommand() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractCommonSender;->send(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract sendData()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation
.end method

.method protected abstract sendMessage(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation
.end method
