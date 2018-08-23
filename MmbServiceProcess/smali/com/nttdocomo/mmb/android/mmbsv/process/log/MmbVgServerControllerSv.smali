.class public Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;
.super Ljava/lang/Object;
.source "MmbVgServerControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv$MmbVgSSLSocketFactorySv;
    }
.end annotation


# static fields
.field private static final MMBVG_LOCK:Ljava/lang/Object;


# instance fields
.field private cancelFlg:Z

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->MMBVG_LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 149
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 151
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->cancelFlg:Z

    .line 175
    return-void
.end method

.method private checkParser(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "aParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v6, 0x0

    .line 673
    if-nez p1, :cond_0

    .line 675
    const-string v5, "param aParser -> null"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v6, "param aParser -> null"

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 680
    :cond_0
    const/4 v1, 0x0

    .line 681
    .local v1, "eventtype":I
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 683
    const/4 v3, 0x0

    .line 684
    .local v3, "tag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 686
    .local v4, "text":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x1

    if-eq v5, v1, :cond_4

    .line 689
    const/4 v5, 0x3

    if-ne v5, v1, :cond_3

    .line 690
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 693
    const-string v5, "dispslResult"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 695
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 696
    .local v2, "ret":I
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;

    iput v2, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;->dispslResult:I

    .line 710
    .end local v2    # "ret":I
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 699
    :cond_2
    const-string v5, "returnCode"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 701
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;

    iput-object v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;->returnCode:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 713
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 715
    .local v0, "err":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 705
    .end local v0    # "err":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x4

    if-ne v5, v1, :cond_1

    .line 707
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    .line 718
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 720
    .local v0, "err":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 727
    .end local v0    # "err":Ljava/io/IOException;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private checkServerResponse(Lorg/apache/http/HttpResponse;)V
    .locals 11
    .param p1, "aResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 592
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;-><init>()V

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;

    .line 594
    iget-boolean v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->cancelFlg:Z

    if-ne v8, v7, :cond_0

    .line 596
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;

    iput-boolean v8, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;->cancelFlg:Z

    .line 655
    :goto_0
    return-void

    .line 601
    :cond_0
    if-nez p1, :cond_1

    .line 603
    const-string v7, "HttpResponse null"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v8, "HttpResponse null"

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 608
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 609
    .local v6, "statusline":Lorg/apache/http/StatusLine;
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 610
    .local v5, "statuscode":I
    const/16 v7, 0xc8

    if-eq v7, v5, :cond_2

    .line 612
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

    .line 613
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

    .line 617
    :cond_2
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 618
    .local v2, "httpEntity":Lorg/apache/http/HttpEntity;
    const/4 v1, 0x0

    .line 621
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v4

    .line 623
    .local v4, "response":[B
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 624
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 625
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 626
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/StringReader;

    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v4, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 628
    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->checkParser(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 630
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "response":[B
    :catch_0
    move-exception v0

    .line 632
    .local v0, "err":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 635
    .end local v0    # "err":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 637
    .local v0, "err":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 640
    .end local v0    # "err":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 642
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 645
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_3
    move-exception v0

    .line 647
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private connectedServer(Ljava/lang/String;II)V
    .locals 12
    .param p1, "aUserAgent"    # Ljava/lang/String;
    .param p2, "aConnectionTimeOut"    # I
    .param p3, "aSoTimeOut"    # I

    .prologue
    .line 415
    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->MMBVG_LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 416
    :try_start_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v7, :cond_0

    .line 419
    new-instance v5, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 420
    .local v5, "schreg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 423
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v9

    const/16 v10, 0x50

    invoke-direct {v3, v7, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 424
    .local v3, "sch":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v5, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :try_start_1
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv$MmbVgSSLSocketFactorySv;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv$MmbVgSSLSocketFactorySv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;Ljava/security/KeyStore;)V

    .line 429
    .local v6, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv;->getInstance()Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 430
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v9, 0x1bb

    invoke-direct {v4, v7, v6, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    .end local v3    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .local v4, "sch":Lorg/apache/http/conn/scheme/Scheme;
    :try_start_2
    invoke-virtual {v5, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v4

    .line 443
    .end local v4    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .end local v6    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .restart local v3    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    :goto_0
    :try_start_3
    const-string v7, "http.protocol.cookie-policy"

    const-string v9, "compatibility"

    invoke-interface {v2, v7, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 446
    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v7}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 449
    const-string v7, "UTF-8"

    invoke-static {v2, v7}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 450
    const-string v7, "UTF-8"

    invoke-static {v2, v7}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 453
    const/4 v7, 0x1

    invoke-static {v2, v7}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 456
    invoke-static {v2, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 459
    invoke-static {v2, p2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 460
    invoke-static {v2, p3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 463
    const/16 v7, 0x2000

    invoke-static {v2, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 466
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v5}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 468
    .local v0, "connmanager":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 470
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v7, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 472
    .end local v0    # "connmanager":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .end local v5    # "schreg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    monitor-exit v8

    .line 477
    return-void

    .line 432
    .restart local v2    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v3    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v5    # "schreg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/security/KeyStoreException;
    :goto_1
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 472
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .end local v5    # "schreg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 434
    .restart local v2    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v3    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v5    # "schreg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catch_1
    move-exception v1

    .line 435
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    :try_start_4
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 436
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v1

    .line 437
    .local v1, "e":Ljava/security/KeyManagementException;
    :goto_3
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 438
    .end local v1    # "e":Ljava/security/KeyManagementException;
    :catch_3
    move-exception v1

    .line 439
    .local v1, "e":Ljava/security/UnrecoverableKeyException;
    :goto_4
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 438
    .end local v1    # "e":Ljava/security/UnrecoverableKeyException;
    .end local v3    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v4    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v6    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v3    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    goto :goto_4

    .line 436
    .end local v3    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v4    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v3    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    goto :goto_3

    .line 434
    .end local v3    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v4    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v3    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    goto :goto_2

    .line 432
    .end local v3    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v4    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v3    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    goto :goto_1
.end method

.method private createMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/client/methods/HttpPost;
    .locals 12
    .param p1, "aServerUrl"    # Ljava/lang/String;
    .param p2, "aPfBackgroundId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpPost;"
        }
    .end annotation

    .prologue
    .line 263
    .local p3, "aLogList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x3

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    .local v5, "nameValuePair":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "intrfcId"

    const-string v11, "IF_TPF_009"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "requestClass"

    const-string v11, "0"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "pfBkgrdId"

    invoke-direct {v9, v10, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;

    .line 335
    .local v4, "logdata":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .local v7, "sbtmp":Ljava/lang/StringBuilder;
    iget-object v9, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;->category:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v9, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;->time:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v9, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;->crid:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;->seqLabel:Ljava/lang/String;

    .line 344
    .local v8, "tmp":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 346
    const-string v9, "\\"

    const-string v10, "\\\\"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 347
    const-string v9, ","

    const-string v10, "\\,"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 349
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_0
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "terminalLog"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 357
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "logdata":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;
    .end local v7    # "sbtmp":Ljava/lang/StringBuilder;
    .end local v8    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 359
    .local v0, "err":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 362
    .end local v0    # "err":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v0

    .line 364
    .local v0, "err":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 367
    .end local v0    # "err":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v0

    .line 369
    .local v0, "err":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 373
    .end local v0    # "err":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    .line 376
    .local v1, "httppost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    .line 377
    .end local v1    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_2
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v6, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 378
    .local v6, "postentity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v2, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5

    .line 395
    return-object v2

    .line 380
    .end local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "postentity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v1    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    :catch_3
    move-exception v0

    .line 382
    .local v0, "err":Ljava/io/UnsupportedEncodingException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 385
    .end local v0    # "err":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v0

    .line 387
    .local v0, "err":Ljava/lang/IllegalArgumentException;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 385
    .end local v0    # "err":Ljava/lang/IllegalArgumentException;
    .end local v1    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v1    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2

    .line 380
    .end local v1    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v1    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_1
.end method

.method private sendMessage(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p1, "aHttppost"    # Lorg/apache/http/client/methods/HttpPost;

    .prologue
    const/4 v4, 0x0

    .line 541
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 542
    const/4 v1, 0x0

    .line 548
    .local v1, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 574
    return-object v1

    .line 554
    :catch_0
    move-exception v0

    .line 556
    .local v0, "err":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 559
    .end local v0    # "err":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 561
    .local v0, "err":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 564
    .end local v0    # "err":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 566
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method disconnectedServer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 494
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 497
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->cancelFlg:Z

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_0
    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 518
    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 524
    :cond_1
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 507
    .local v0, "err":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getResponse()Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;
    .locals 2

    .prologue
    .line 744
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;-><init>()V

    .line 747
    .local v0, "output":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;

    if-eqz v1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->serverResponse:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;

    .line 757
    :goto_0
    return-object v0

    .line 751
    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;->dispslResult:I

    goto :goto_0
.end method

.method requestServer(Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;Ljava/util/List;)V
    .locals 5
    .param p1, "aServerInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aLogList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 198
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-ne v3, v2, :cond_1

    .line 199
    :cond_0
    const-string v2, "param aLogList -> error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "param aLogList -> error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_1
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;->serverUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v3, v2, :cond_2

    .line 205
    const-string v2, "param serverurl -> error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "param serverurl -> error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_2
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;->pfBackgroundId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v3, v2, :cond_3

    const/16 v2, 0x20

    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;->pfBackgroundId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    if-eq v2, v3, :cond_4

    .line 211
    :cond_3
    const-string v2, "param pfbackgroundid -> error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "param pfbackgroundid -> error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_4
    :try_start_0
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;->serverUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;->pfBackgroundId:Ljava/lang/String;

    invoke-direct {p0, v2, v3, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->createMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 221
    .local v0, "httppost":Lorg/apache/http/client/methods/HttpPost;
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;->userAgent:Ljava/lang/String;

    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;->connectionTimeOut:I

    iget v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;->soTimeOut:I

    invoke-direct {p0, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->connectedServer(Ljava/lang/String;II)V

    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->sendMessage(Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 229
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->checkServerResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->disconnectedServer()V

    .line 239
    return-void

    .line 233
    .end local v0    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->disconnectedServer()V

    throw v2
.end method
