.class public Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;
.super Ljava/lang/Object;
.source "MmbRcRecommendServerControllerSv.java"


# static fields
.field private static final MMBRC_LOCK:Ljava/lang/Object;


# instance fields
.field private cancelFlg:Z

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->MMBRC_LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 133
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 135
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->cancelFlg:Z

    .line 159
    return-void
.end method

.method private checkParser(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "aParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v7, 0x0

    .line 557
    if-nez p1, :cond_0

    .line 559
    const-string v5, "param aParser -> null"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v6, "param aParser -> null"

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 564
    :cond_0
    const/4 v1, 0x0

    .line 565
    .local v1, "eventtype":I
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 567
    const/4 v3, 0x0

    .line 568
    .local v3, "tag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 569
    .local v4, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;->crid:Ljava/util/List;

    .line 572
    :goto_0
    const/4 v5, 0x1

    if-eq v5, v1, :cond_5

    .line 575
    const/4 v5, 0x3

    if-ne v5, v1, :cond_4

    .line 576
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 579
    const-string v5, "dispslResult"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 581
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 582
    .local v2, "ret":I
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;

    iput v2, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;->dispslResult:I

    .line 601
    .end local v2    # "ret":I
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 585
    :cond_2
    const-string v5, "returnCode"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 587
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;

    iput-object v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;->returnCode:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 604
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 606
    .local v0, "err":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 590
    .end local v0    # "err":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v5, "RCM_Crid"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 592
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;->crid:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 609
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 611
    .local v0, "err":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 596
    .end local v0    # "err":Ljava/io/IOException;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x4

    if-ne v5, v1, :cond_1

    .line 598
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    goto :goto_1

    .line 619
    :cond_5
    return-void
.end method

.method private checkServerResponse(Lorg/apache/http/HttpResponse;)V
    .locals 11
    .param p1, "aResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 476
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;-><init>()V

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;

    .line 478
    iget-boolean v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->cancelFlg:Z

    if-ne v8, v7, :cond_0

    .line 480
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;

    iput-boolean v8, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;->cancelFlg:Z

    .line 539
    :goto_0
    return-void

    .line 485
    :cond_0
    if-nez p1, :cond_1

    .line 487
    const-string v7, "HttpResponse null"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v8, "HttpResponse null"

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 492
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 493
    .local v6, "statusline":Lorg/apache/http/StatusLine;
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 494
    .local v5, "statuscode":I
    const/16 v7, 0xc8

    if-eq v7, v5, :cond_2

    .line 496
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HttpStatusCode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HttpStatusCode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 501
    :cond_2
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 502
    .local v2, "httpEntity":Lorg/apache/http/HttpEntity;
    const/4 v1, 0x0

    .line 505
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v4

    .line 507
    .local v4, "response":[B
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 508
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 509
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 510
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/StringReader;

    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v4, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 512
    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->checkParser(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 514
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "response":[B
    :catch_0
    move-exception v0

    .line 516
    .local v0, "err":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 519
    .end local v0    # "err":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 521
    .local v0, "err":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 524
    .end local v0    # "err":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 526
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 529
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_3
    move-exception v0

    .line 531
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private connectedServer(Ljava/lang/String;II)V
    .locals 9
    .param p1, "aUserAgent"    # Ljava/lang/String;
    .param p2, "aConnectionTimeOut"    # I
    .param p3, "aSoTimeOut"    # I

    .prologue
    .line 310
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->MMBRC_LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 311
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v4, :cond_0

    .line 314
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 315
    .local v3, "schreg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 318
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v2, v4, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 319
    .local v2, "sch":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v3, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 322
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    .end local v2    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v2, v4, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 323
    .restart local v2    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v3, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 326
    const-string v4, "http.protocol.cookie-policy"

    const-string v6, "compatibility"

    invoke-interface {v1, v4, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 330
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 333
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 334
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 337
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 340
    invoke-static {v1, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 343
    invoke-static {v1, p2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 344
    invoke-static {v1, p3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 347
    const/16 v4, 0x2000

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 350
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 352
    .local v0, "connmanager":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 354
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v4, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 356
    .end local v0    # "connmanager":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .end local v1    # "params":Lorg/apache/http/params/HttpParams;
    .end local v2    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .end local v3    # "schreg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    monitor-exit v5

    .line 361
    return-void

    .line 356
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private createMessage(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 8
    .param p1, "aServerUrl"    # Ljava/lang/String;
    .param p2, "aPfBackgroundId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v5, "intrfcId"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "IF_TPF_011"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v5, "requestClass"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v5, "pfBkgrdId"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v5, "count"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "100"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const/4 v2, 0x0

    .line 270
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    .end local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .local v3, "httppost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 272
    .local v4, "postentity":Lorg/apache/http/entity/StringEntity;
    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v5}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 290
    return-object v3

    .line 275
    .end local v3    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v4    # "postentity":Lorg/apache/http/entity/StringEntity;
    .restart local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v1

    .line 277
    .local v1, "err":Ljava/io/UnsupportedEncodingException;
    :goto_0
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 280
    .end local v1    # "err":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 282
    .local v1, "err":Ljava/lang/IllegalArgumentException;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 280
    .end local v1    # "err":Ljava/lang/IllegalArgumentException;
    .end local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_1

    .line 275
    .end local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_0
.end method

.method private sendMessage(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p1, "aHttppost"    # Lorg/apache/http/client/methods/HttpPost;

    .prologue
    const/4 v4, 0x0

    .line 425
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 426
    const/4 v1, 0x0

    .line 432
    .local v1, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 458
    return-object v1

    .line 438
    :catch_0
    move-exception v0

    .line 440
    .local v0, "err":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 443
    .end local v0    # "err":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 445
    .local v0, "err":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 448
    .end local v0    # "err":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 450
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method disconnectedServer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 381
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->cancelFlg:Z

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 402
    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 408
    :cond_1
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 391
    .local v0, "err":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getResponse()Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;
    .locals 2

    .prologue
    .line 636
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;-><init>()V

    .line 639
    .local v0, "output":Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;

    if-eqz v1, :cond_0

    .line 640
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;

    .line 649
    :goto_0
    return-object v0

    .line 643
    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;->dispslResult:I

    goto :goto_0
.end method

.method requestServer(Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;)V
    .locals 5
    .param p1, "aServerInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 181
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;->serverUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v3, v2, :cond_0

    .line 182
    const-string v2, "param serverurl -> error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "param serverurl -> error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_0
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;->pfBackgroundId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v3, v2, :cond_1

    const/16 v2, 0x20

    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;->pfBackgroundId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    if-eq v2, v3, :cond_2

    .line 188
    :cond_1
    const-string v2, "param pfbackgroundid -> error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "param pfbackgroundid -> error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_2
    :try_start_0
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;->serverUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;->pfBackgroundId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->createMessage(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 198
    .local v0, "httppost":Lorg/apache/http/client/methods/HttpPost;
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;->userAgent:Ljava/lang/String;

    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;->connectionTimeOut:I

    iget v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;->soTimeOut:I

    invoke-direct {p0, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->connectedServer(Ljava/lang/String;II)V

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->sendMessage(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 206
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->checkServerResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->disconnectedServer()V

    .line 216
    return-void

    .line 210
    .end local v0    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->disconnectedServer()V

    throw v2
.end method
