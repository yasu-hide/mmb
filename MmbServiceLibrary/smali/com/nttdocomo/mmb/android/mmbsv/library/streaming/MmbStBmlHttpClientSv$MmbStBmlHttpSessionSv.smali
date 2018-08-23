.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;
.super Ljava/lang/Object;
.source "MmbStBmlHttpClientSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MmbStBmlHttpSessionSv"
.end annotation


# instance fields
.field protected volatile mCancel:Z

.field protected mClientWrapper:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

.field protected volatile mNotified:Z

.field protected mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;

.field protected mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

.field protected mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;)V
    .locals 2
    .param p1, "aParent"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;

    .line 361
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mThread:Ljava/lang/Thread;

    .line 362
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mCancel:Z

    .line 363
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mNotified:Z

    .line 365
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    .line 366
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mClientWrapper:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    .line 379
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;

    .line 383
    return-void
.end method

.method private bodyExec([B)V
    .locals 11
    .param p1, "aBody"    # [B

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 807
    const/4 v5, 0x0

    .line 809
    .local v5, "tmp":[B
    const/4 v1, 0x0

    .line 812
    .local v1, "httpdata":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;
    if-eqz p1, :cond_0

    array-length v6, p1

    if-lez v6, :cond_0

    .line 814
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_0

    .line 816
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;

    invoke-virtual {v6, p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->preCancel(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;I)V

    .line 819
    iget-boolean v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mCancel:Z

    if-eqz v6, :cond_1

    .line 862
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v10, :cond_4

    invoke-static {}, Ljava/lang/Thread;->yield()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 823
    .end local v3    # "j":I
    .restart local v2    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2
    if-ge v3, v10, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 825
    :cond_2
    add-int/lit16 v6, v2, 0x1000

    array-length v7, p1

    if-ge v6, v7, :cond_3

    .line 826
    const/16 v4, 0x1000

    .line 831
    .local v4, "length":I
    :goto_3
    new-array v5, v4, [B

    .line 832
    invoke-static {p1, v2, v5, v8, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 839
    new-instance v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;

    .end local v1    # "httpdata":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;
    invoke-direct {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;-><init>()V

    .line 840
    .restart local v1    # "httpdata":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget v6, v6, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbSqNum:I

    iput v6, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;->mmbSqNum:I

    .line 841
    iput v4, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;->mmbSize:I

    .line 842
    iput-object v5, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;->mmbBody:[B

    .line 843
    iput v8, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;->mmbStatus:I

    .line 846
    iget-boolean v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mCancel:Z

    if-nez v6, :cond_0

    .line 852
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mClientWrapper:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->notifyHttpData(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    add-int/lit16 v2, v2, 0x1000

    goto :goto_0

    .line 828
    .end local v4    # "length":I
    :cond_3
    array-length v6, p1

    sub-int v4, v6, v2

    .restart local v4    # "length":I
    goto :goto_3

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 856
    iput-boolean v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mNotified:Z

    .line 885
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v4    # "length":I
    :goto_4
    return-void

    .line 865
    :cond_4
    new-instance v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;

    .end local v1    # "httpdata":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;
    invoke-direct {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;-><init>()V

    .line 866
    .restart local v1    # "httpdata":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget v6, v6, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbSqNum:I

    iput v6, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;->mmbSqNum:I

    .line 867
    iput v8, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;->mmbSize:I

    .line 868
    new-array v6, v8, [B

    iput-object v6, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;->mmbBody:[B

    .line 869
    iput v9, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;->mmbStatus:I

    .line 872
    :try_start_1
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mClientWrapper:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->notifyHttpData(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpDataNotifyInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 880
    iput-boolean v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mNotified:Z

    goto :goto_4

    .line 873
    :catch_1
    move-exception v0

    .line 874
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 876
    iput-boolean v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mNotified:Z

    goto :goto_4
.end method

.method private buildUriAndSsl(Ljava/lang/String;I)Ljava/net/URI;
    .locals 5
    .param p1, "aUri"    # Ljava/lang/String;
    .param p2, "aSslMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, "uri":Ljava/net/URI;
    const/4 v2, 0x0

    .line 445
    .local v2, "uriRet":Ljava/net/URI;
    packed-switch p2, :pswitch_data_0

    .line 483
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;-><init>(I)V

    throw v3

    .line 452
    :pswitch_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    .end local v1    # "uri":Ljava/net/URI;
    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .restart local v1    # "uri":Ljava/net/URI;
    move-object v2, v1

    .line 490
    :goto_0
    return-object v2

    .line 453
    .end local v1    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 455
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;-><init>(I)V

    throw v3

    .line 470
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .restart local v1    # "uri":Ljava/net/URI;
    :pswitch_1
    :try_start_1
    new-instance v1, Ljava/net/URI;

    .end local v1    # "uri":Ljava/net/URI;
    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 479
    .restart local v1    # "uri":Ljava/net/URI;
    move-object v2, v1

    .line 481
    goto :goto_0

    .line 471
    .end local v1    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v0

    .line 472
    .restart local v0    # "e":Ljava/net/URISyntaxException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 473
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;-><init>(I)V

    throw v3

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkUriSsl(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "aUri"    # Ljava/lang/String;
    .param p2, "aSslMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 399
    const/4 v2, 0x0

    .line 402
    .local v2, "uri":Ljava/net/URI;
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v3

    .line 407
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 413
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "tmp":Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 423
    const/4 v3, 0x0

    goto :goto_0

    .line 408
    .end local v1    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mmbUri illegal format. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private headExec(Lorg/apache/http/HttpResponse;Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;)[B
    .locals 9
    .param p1, "aResponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "aRetStart"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;

    .prologue
    const/4 v8, 0x0

    .line 747
    const/4 v4, 0x0

    .line 748
    .local v4, "status":Lorg/apache/http/StatusLine;
    const/4 v2, 0x0

    .line 749
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    const/4 v3, 0x0

    .line 750
    .local v3, "header":Lorg/apache/http/Header;
    const/4 v0, 0x0

    .line 753
    .local v0, "body":[B
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 754
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->rebuildHeaders([Lorg/apache/http/Header;)[B

    move-result-object v5

    iput-object v5, p2, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbRpHeaders:[B

    .line 755
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 756
    if-eqz v2, :cond_1

    .line 758
    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v5, v6

    iput v5, p2, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbTotalSize:I

    .line 759
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 768
    :goto_0
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    iput v5, p2, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbState:I

    .line 769
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 792
    :cond_0
    :goto_1
    return-object v0

    .line 760
    :catch_0
    move-exception v1

    .line 761
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 762
    const/4 v0, 0x0

    .line 763
    iput v8, p2, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbTotalSize:I

    goto :goto_0

    .line 766
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iput v8, p2, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbTotalSize:I

    goto :goto_0

    .line 771
    :sswitch_0
    iget v5, p2, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbTotalSize:I

    if-nez v5, :cond_0

    .line 772
    const/4 v5, 0x3

    iput v5, p2, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbState:I

    goto :goto_1

    .line 779
    :sswitch_1
    const-string v5, "location"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 780
    if-eqz v3, :cond_2

    .line 781
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iput-object v5, p2, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbRedirectUri:[B

    goto :goto_1

    .line 783
    :cond_2
    const-string v5, "???"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iput-object v5, p2, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbRedirectUri:[B

    goto :goto_1

    .line 769
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
        0x12f -> :sswitch_1
        0x133 -> :sswitch_1
    .end sparse-switch
.end method

.method private rebuildHeaders([Lorg/apache/http/Header;)[B
    .locals 8
    .param p1, "aResponceHeaders"    # [Lorg/apache/http/Header;

    .prologue
    .line 1042
    const/4 v5, 0x0

    .line 1043
    .local v5, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1045
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 1046
    .local v6, "size":I
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 1047
    .local v2, "header":Lorg/apache/http/Header;
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    .line 1048
    add-int/lit8 v6, v6, 0x1

    .line 1049
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    .line 1050
    add-int/lit8 v6, v6, 0x1

    .line 1046
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1053
    .end local v2    # "header":Lorg/apache/http/Header;
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1    # "buf":Ljava/lang/StringBuffer;
    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1054
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    move-object v0, p1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 1055
    .restart local v2    # "header":Lorg/apache/http/Header;
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1056
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1057
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1058
    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1054
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1060
    .end local v2    # "header":Lorg/apache/http/Header;
    :cond_1
    new-instance v5, Ljava/lang/String;

    .end local v5    # "ret":Ljava/lang/String;
    invoke-direct {v5, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 1064
    .restart local v5    # "ret":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    return-object v7
.end method

.method private resolvHeaders([B)Ljava/util/List;
    .locals 9
    .param p1, "aRqHeaders"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1007
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1012
    .local v1, "hlist":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 1013
    .local v4, "tmp":Ljava/lang/String;
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1014
    .local v3, "lines":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 1015
    aget-object v4, v3, v2

    .line 1016
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, "args":[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 1018
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid argment : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1014
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1021
    :cond_0
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    aget-object v6, v0, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1026
    .end local v0    # "args":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected buildClient(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
    .locals 6
    .param p1, "aMethod"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "aHttpParams"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    const/4 v1, 0x0

    .line 704
    .local v1, "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    const/4 v2, 0x0

    .line 706
    .local v2, "scope":Lorg/apache/http/auth/AuthScope;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    invoke-direct {v0, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 709
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v3, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUserName:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v3, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUserName:[B

    array-length v3, v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget v3, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUserNameSize:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v3, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbPassword:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v3, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbPassword:[B

    array-length v3, v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget v3, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbPasswordSize:I

    if-eqz v3, :cond_0

    .line 715
    new-instance v1, Lorg/apache/http/auth/UsernamePasswordCredentials;

    .end local v1    # "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUserName:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v5, v5, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbPassword:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v3, v4}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    .restart local v1    # "credentials":Lorg/apache/http/auth/UsernamePasswordCredentials;
    new-instance v2, Lorg/apache/http/auth/AuthScope;

    .end local v2    # "scope":Lorg/apache/http/auth/AuthScope;
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .restart local v2    # "scope":Lorg/apache/http/auth/AuthScope;
    move-object v3, v0

    .line 723
    check-cast v3, Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 731
    :cond_0
    return-object v0
.end method

.method protected buildMethod()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    .line 610
    const/4 v4, 0x0

    .line 611
    .local v4, "uri":Ljava/net/URI;
    const/4 v3, 0x0

    .line 612
    .local v3, "method":Lorg/apache/http/client/methods/HttpRequestBase;
    const/4 v1, 0x0

    .line 615
    .local v1, "hlist":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v5, v5, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUri:[B

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v5, v5, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUri:[B

    array-length v5, v5

    if-nez v5, :cond_1

    .line 616
    :cond_0
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;

    invoke-direct {v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;-><init>(I)V

    throw v5

    .line 619
    :cond_1
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v6, v6, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUri:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget v6, v6, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbSslMode:I

    invoke-direct {p0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->buildUriAndSsl(Ljava/lang/String;I)Ljava/net/URI;

    move-result-object v4

    .line 622
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget v5, v5, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbMethod:I

    packed-switch v5, :pswitch_data_0

    .line 638
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;

    invoke-direct {v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;-><init>(I)V

    throw v5

    .line 624
    :pswitch_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    .end local v3    # "method":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 642
    .restart local v3    # "method":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v5, v5, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbRqHeaders:[B

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v5, v5, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbRqHeaders:[B

    array-length v5, v5

    if-eqz v5, :cond_3

    .line 643
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v5, v5, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbRqHeaders:[B

    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->resolvHeaders([B)Ljava/util/List;

    move-result-object v1

    .line 644
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 645
    .local v0, "h":Lorg/apache/http/Header;
    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_1

    .line 627
    .end local v0    # "h":Lorg/apache/http/Header;
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_1
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    .end local v3    # "method":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 631
    .restart local v3    # "method":Lorg/apache/http/client/methods/HttpRequestBase;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v5, v5, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbRqData:[B

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v5, v5, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbRqData:[B

    array-length v5, v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget v5, v5, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbRqdataSize:I

    if-eqz v5, :cond_2

    move-object v5, v3

    .line 634
    check-cast v5, Lorg/apache/http/client/methods/HttpPost;

    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v7, v7, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbRqData:[B

    invoke-direct {v6, v7}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 652
    :cond_3
    return-object v3

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected buildParams()Lorg/apache/http/params/HttpParams;
    .locals 4

    .prologue
    const/16 v3, 0x2710

    .line 666
    const/4 v0, 0x0

    .line 668
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    .end local v0    # "params":Lorg/apache/http/params/HttpParams;
    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 671
    .restart local v0    # "params":Lorg/apache/http/params/HttpParams;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v1, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUserAgent:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v1, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUserAgent:[B

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 672
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget-object v2, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUserAgent:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 676
    :cond_0
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 679
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 682
    const-string v1, "http.protocol.handle-redirects"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 687
    return-object v0
.end method

.method public getHttpData(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;)V
    .locals 5
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;
    .param p2, "aClient"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    .prologue
    const/4 v3, 0x0

    .line 510
    if-nez p1, :cond_0

    .line 511
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "aInfo is null."

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 513
    :cond_0
    if-nez p2, :cond_1

    .line 514
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "aClient is null."

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 518
    :cond_1
    iget-object v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUri:[B

    if-eqz v1, :cond_2

    iget-object v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUri:[B

    array-length v1, v1

    if-nez v1, :cond_3

    .line 519
    :cond_2
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v2, "mmbUri is empty."

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 523
    :cond_3
    iget v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbMethod:I

    packed-switch v1, :pswitch_data_0

    .line 528
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mmbMethod out of range. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbMethod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 532
    :pswitch_0
    iget v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbSslMode:I

    packed-switch v1, :pswitch_data_1

    .line 537
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mmbSslMode out of range. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbSslMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    :pswitch_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUri:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iget v2, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbSslMode:I

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->checkUriSsl(Ljava/lang/String;I)Z

    move-result v0

    .line 544
    .local v0, "ret":Z
    if-nez v0, :cond_4

    .line 545
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mmbUri illeagel format. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUri:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 549
    :cond_4
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    .line 550
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mClientWrapper:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    .line 552
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mThread:Ljava/lang/Thread;

    .line 553
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mCancel:Z

    .line 554
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mNotified:Z

    .line 556
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 561
    return-void

    .line 523
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 532
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getNotified()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mNotified:Z

    return v0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 900
    const/4 v4, 0x0

    .line 901
    .local v4, "method":Lorg/apache/http/client/methods/HttpRequestBase;
    const/4 v5, 0x0

    .line 902
    .local v5, "params":Lorg/apache/http/params/HttpParams;
    const/4 v2, 0x0

    .line 903
    .local v2, "client":Lorg/apache/http/client/HttpClient;
    const/4 v6, 0x0

    .line 904
    .local v6, "response":Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    .line 905
    .local v1, "body":[B
    const/4 v7, 0x0

    .line 906
    .local v7, "startinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;
    const/4 v0, 0x0

    .line 908
    .local v0, "airplanemode":Z
    new-instance v7, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;

    .end local v7    # "startinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;
    invoke-direct {v7}, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;-><init>()V

    .line 909
    .restart local v7    # "startinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mReqInfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    iget v8, v8, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbSqNum:I

    iput v8, v7, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbSqNum:I

    .line 910
    iput v9, v7, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbState:I

    .line 911
    iput-object v11, v7, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbRpHeaders:[B

    .line 912
    iput v9, v7, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbTotalSize:I

    .line 913
    iput-object v11, v7, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbRedirectUri:[B

    .line 917
    :try_start_0
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->getAirplaneMode()Z

    move-result v0

    .line 918
    if-eqz v0, :cond_1

    .line 919
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;

    const/16 v9, 0xb

    invoke-direct {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;-><init>(I)V

    throw v8
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :catch_0
    move-exception v3

    .line 956
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;->getErrNo()I

    move-result v8

    iput v8, v7, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbState:I

    .line 959
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;
    :goto_0
    if-eqz v6, :cond_0

    .line 961
    invoke-direct {p0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->headExec(Lorg/apache/http/HttpResponse;Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;)[B

    move-result-object v1

    .line 965
    :cond_0
    iget-boolean v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mCancel:Z

    if-eqz v8, :cond_2

    .line 966
    iput-boolean v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mNotified:Z

    .line 993
    :goto_1
    return-void

    .line 924
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->buildMethod()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v4

    .line 925
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->buildParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 926
    invoke-virtual {p0, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->buildClient(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 928
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;

    invoke-virtual {v8, v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->preHttpClient(Lorg/apache/http/client/HttpClient;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException; {:try_start_1 .. :try_end_1} :catch_0

    .line 932
    :try_start_2
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mParent:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;

    invoke-virtual {v8, v2, v4, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    goto :goto_0

    .line 933
    :catch_1
    move-exception v3

    .line 934
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_3
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 935
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;-><init>(I)V

    throw v8

    .line 937
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v3

    .line 938
    .local v3, "e":Ljavax/net/ssl/SSLException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 939
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;

    const/16 v9, 0xc

    invoke-direct {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;-><init>(I)V

    throw v8

    .line 941
    .end local v3    # "e":Ljavax/net/ssl/SSLException;
    :catch_3
    move-exception v3

    .line 942
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 943
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;-><init>(I)V

    throw v8

    .line 945
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 946
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 947
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;

    const/4 v9, 0x4

    invoke-direct {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;-><init>(I)V

    throw v8

    .line 949
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v3

    .line 950
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 951
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;

    const/16 v9, 0x9

    invoke-direct {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException;-><init>(I)V

    throw v8
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbHttpInternalException; {:try_start_3 .. :try_end_3} :catch_0

    .line 975
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_4
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mClientWrapper:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyHttpStart(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 988
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->bodyExec([B)V

    goto :goto_1

    .line 976
    :catch_6
    move-exception v3

    .line 977
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 979
    iput-boolean v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mNotified:Z

    goto :goto_1
.end method

.method public setCancel()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 574
    iget-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mNotified:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 575
    .local v0, "ret":Z
    :goto_0
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv$MmbStBmlHttpSessionSv;->mCancel:Z

    .line 579
    return v0

    .line 574
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
