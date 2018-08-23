.class Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;
.super Ljava/lang/Object;
.source "MmbSiMetadataNwHttpClientSv.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[B>;",
        "Lorg/apache/http/client/ResponseHandler",
        "<[B>;"
    }
.end annotation


# instance fields
.field private client:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;

.field private futureTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<[B>;"
        }
    .end annotation
.end field

.field private mCurrentSize:I

.field private mExecuteType:I

.field private mGetParam:Ljava/lang/String;

.field private mHttpGet:Lorg/apache/http/client/methods/HttpGet;

.field private mService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

.field private mTotalSize:I


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 12
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    const/4 v11, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    if-nez p1, :cond_0

    .line 189
    const-string v8, "parameter error : null"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v8

    .line 192
    :cond_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 195
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    .line 198
    .local v3, "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    new-instance v5, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 199
    .local v5, "schreg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 202
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v9

    const/16 v10, 0x50

    invoke-direct {v4, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 203
    .local v4, "sch":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v5, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 206
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    .end local v4    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    const-string v8, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v9

    const/16 v10, 0x1bb

    invoke-direct {v4, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 207
    .restart local v4    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v5, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 210
    const-string v8, "http.protocol.cookie-policy"

    const-string v9, "compatibility"

    invoke-interface {v2, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 213
    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 216
    const-string v8, "UTF-8"

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 217
    const-string v8, "UTF-8"

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 220
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 223
    const/4 v8, 0x6

    invoke-virtual {v3, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, "useragent":Ljava/lang/String;
    invoke-static {v2, v7}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 228
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 231
    .local v0, "connectiontimeout":I
    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 234
    .local v6, "sotimeout":I
    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 235
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 238
    const/16 v8, 0x2000

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 241
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v5}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 242
    .local v1, "connmanager":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;

    invoke-direct {v8, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;

    .line 244
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;

    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v9, v11, v11}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;->setHttpRequestRetryHandler(Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;)V

    .line 246
    new-instance v8, Ljava/util/concurrent/FutureTask;

    invoke-direct {v8, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->futureTask:Ljava/util/concurrent/FutureTask;

    .line 251
    return-void
.end method

.method private checkResponse(Lorg/apache/http/HttpResponse;)V
    .locals 4
    .param p1, "aHttpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v3, 0x0

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "code":Ljava/lang/String;
    const-string v2, "X-metaserver-warning"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1

    .line 344
    const-string v2, "X-metaserver-warning"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 348
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 352
    const-string v2, "EMTA103"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 354
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    const/high16 v2, -0x3000000

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(I)V

    .line 357
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 358
    throw v1

    .line 345
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    :cond_1
    const-string v2, "X-metaserver-error"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 346
    const-string v2, "X-metaserver-error"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_2
    const-string v2, "EMTA999"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 361
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    const v2, -0x3000008

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(I)V

    .line 364
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 365
    throw v1

    .line 368
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    :cond_3
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    const/high16 v2, -0x80000000

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(I)V

    .line 371
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 377
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    :cond_4
    return-void
.end method

.method private getBodyfromHttpResponse(Lorg/apache/http/HttpResponse;)[B
    .locals 10
    .param p1, "aHttpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 957
    const/4 v6, 0x0

    .line 960
    .local v6, "result":[B
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    long-to-int v3, v8

    .line 961
    .local v3, "contentlength":I
    if-lez v3, :cond_3

    .line 962
    iput v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mTotalSize:I

    .line 968
    :goto_0
    const/4 v0, 0x0

    .line 969
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 972
    .local v4, "in":Ljava/io/InputStream;
    const/16 v7, 0x400

    :try_start_0
    new-array v2, v7, [B

    .line 973
    .local v2, "buf":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 974
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 975
    :cond_0
    :goto_1
    const/4 v7, -0x1

    const/4 v8, 0x0

    array-length v9, v2

    invoke-virtual {v4, v2, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .local v5, "len":I
    if-eq v7, v5, :cond_5

    .line 976
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 977
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->futureTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v7}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 981
    new-instance v7, Ljava/util/concurrent/CancellationException;

    invoke-direct {v7}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 993
    .end local v5    # "len":I
    :catchall_0
    move-exception v7

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_2
    if-eqz v4, :cond_1

    .line 994
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 996
    :cond_1
    if-eqz v0, :cond_2

    .line 997
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_2
    throw v7

    .line 964
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "in":Ljava/io/InputStream;
    :cond_3
    const/4 v7, 0x1

    iput v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mTotalSize:I

    goto :goto_0

    .line 985
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buf":[B
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "len":I
    :cond_4
    :try_start_2
    array-length v7, v2

    iput v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mCurrentSize:I

    .line 986
    iget v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mCurrentSize:I

    iget v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mTotalSize:I

    if-le v7, v8, :cond_0

    .line 987
    iget v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mTotalSize:I

    iput v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mCurrentSize:I

    goto :goto_1

    .line 991
    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 993
    if-eqz v4, :cond_6

    .line 994
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 996
    :cond_6
    if-eqz v1, :cond_7

    .line 997
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1004
    :cond_7
    return-object v6

    .line 993
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    .end local v5    # "len":I
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v7

    goto :goto_2
.end method

.method private metadataDeliveryAnalysis(Lorg/apache/http/HttpResponse;)[B
    .locals 13
    .param p1, "aHttpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v12, -0x200000a

    .line 1032
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->metadataDeliveryBodyAnalysis(Lorg/apache/http/HttpResponse;)[B

    move-result-object v1

    .line 1035
    .local v1, "analyzedBody":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1037
    .local v3, "baosheader":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 1038
    .local v6, "contenttypestr":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1039
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1050
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1052
    .local v5, "contentlengthstr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1053
    .local v9, "latestversionstr":Ljava/lang/String;
    const-string v10, "X-metaserver-latestversion"

    invoke-interface {p1, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 1054
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "X-metaserver-latestversion: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "X-metaserver-latestversion"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1066
    const-string v7, ""

    .line 1067
    .local v7, "header":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1068
    .local v8, "headerbyte":[B
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1069
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1070
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1071
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 1072
    const/4 v10, 0x0

    array-length v11, v8

    invoke-virtual {v3, v8, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1074
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1077
    .local v2, "analyzedHeader":[B
    array-length v10, v2

    array-length v11, v1

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1078
    .local v4, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1079
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1081
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 1086
    .local v0, "analysedData":[B
    return-object v0

    .line 1046
    .end local v0    # "analysedData":[B
    .end local v2    # "analyzedHeader":[B
    .end local v4    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v5    # "contentlengthstr":Ljava/lang/String;
    .end local v7    # "header":Ljava/lang/String;
    .end local v8    # "headerbyte":[B
    .end local v9    # "latestversionstr":Ljava/lang/String;
    :cond_0
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    invoke-direct {v10, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(I)V

    throw v10

    .line 1062
    .restart local v5    # "contentlengthstr":Ljava/lang/String;
    .restart local v9    # "latestversionstr":Ljava/lang/String;
    :cond_1
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    invoke-direct {v10, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(I)V

    throw v10
.end method

.method private metadataDeliveryBodyAnalysis(Lorg/apache/http/HttpResponse;)[B
    .locals 1
    .param p1, "aHttpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1112
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->getBodyfromHttpResponse(Lorg/apache/http/HttpResponse;)[B

    move-result-object v0

    .line 1116
    .local v0, "httpbody":[B
    return-object v0
.end method

.method private metadataSearchCridAnalysis(Lorg/apache/http/HttpResponse;)[B
    .locals 1
    .param p1, "aHttpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1136
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->getBodyfromHttpResponse(Lorg/apache/http/HttpResponse;)[B

    move-result-object v0

    .line 1140
    .local v0, "httpbody":[B
    return-object v0
.end method

.method private metadataSearchFreewordAnalysis(Lorg/apache/http/HttpResponse;)[B
    .locals 1
    .param p1, "aHttpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1160
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->getBodyfromHttpResponse(Lorg/apache/http/HttpResponse;)[B

    move-result-object v0

    .line 1164
    .local v0, "httpbody":[B
    return-object v0
.end method

.method private run(Ljava/lang/String;)V
    .locals 2
    .param p1, "aParam"    # Ljava/lang/String;

    .prologue
    .line 741
    if-nez p1, :cond_0

    .line 742
    const-string v0, "parameter error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 747
    :cond_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mGetParam:Ljava/lang/String;

    .line 748
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->futureTask:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 752
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->call()[B

    move-result-object v0

    return-object v0
.end method

.method public call()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mGetParam:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 406
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 407
    .local v0, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;

    invoke-virtual {v2, v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 411
    .local v1, "response":[B
    return-object v1
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->futureTask:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 774
    return-void
.end method

.method public getCurrentSize()I
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mCurrentSize:I

    return v0
.end method

.method public getHttpData()[B
    .locals 6

    .prologue
    .line 845
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->futureTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v5}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    .line 891
    .local v0, "buff":[B
    return-object v0

    .line 846
    .end local v0    # "buff":[B
    :catch_0
    move-exception v1

    .line 847
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 848
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;-><init>()V

    throw v5

    .line 849
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v1

    .line 850
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    const v5, -0x2000002

    invoke-direct {v2, v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(ILjava/lang/Throwable;)V

    .line 853
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 854
    throw v2

    .line 855
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    :catch_2
    move-exception v1

    .line 856
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 857
    .local v4, "t":Ljava/lang/Throwable;
    instance-of v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    if-eqz v5, :cond_0

    .line 858
    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    .end local v4    # "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;->getErrorCode()I

    move-result v3

    .line 859
    .local v3, "result":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(I)V

    .line 860
    .restart local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 861
    throw v2

    .line 862
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    .end local v3    # "result":I
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_0
    instance-of v5, v4, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v5, :cond_1

    .line 863
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    const v5, -0x2000007

    invoke-direct {v2, v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(ILjava/lang/Throwable;)V

    .line 866
    .restart local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 867
    throw v2

    .line 868
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    :cond_1
    instance-of v5, v4, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_2

    .line 869
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    const v5, -0x2000003

    invoke-direct {v2, v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(ILjava/lang/Throwable;)V

    .line 872
    .restart local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 873
    throw v2

    .line 874
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    :cond_2
    instance-of v5, v4, Ljava/io/IOException;

    if-eqz v5, :cond_3

    .line 875
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    const v5, -0x2000008

    invoke-direct {v2, v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(ILjava/lang/Throwable;)V

    .line 878
    .restart local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 879
    throw v2

    .line 881
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    :cond_3
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    const/high16 v5, -0x80000000

    invoke-direct {v2, v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(ILjava/lang/Throwable;)V

    .line 884
    .restart local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 885
    throw v2
.end method

.method public getTotalSize()I
    .locals 1

    .prologue
    .line 933
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mTotalSize:I

    return v0
.end method

.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->handleResponse(Lorg/apache/http/HttpResponse;)[B

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)[B
    .locals 5
    .param p1, "aHttpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1f4

    .line 274
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 277
    .local v2, "status":I
    const/16 v3, 0xc8

    if-eq v3, v2, :cond_2

    .line 281
    const/16 v3, 0x190

    if-gt v3, v2, :cond_0

    if-le v4, v2, :cond_0

    .line 282
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    const/high16 v3, -0x2000000

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(I)V

    .line 285
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 286
    throw v0

    .line 287
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    :cond_0
    if-gt v4, v2, :cond_1

    const/16 v3, 0x258

    if-le v3, v2, :cond_1

    .line 288
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    const v3, -0x2000001

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(I)V

    .line 291
    .restart local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 292
    throw v0

    .line 294
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    const v3, -0x2000002

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(I)V

    .line 297
    .restart local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 298
    throw v0

    .line 302
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
    :cond_2
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->checkResponse(Lorg/apache/http/HttpResponse;)V

    .line 305
    const/4 v3, 0x0

    new-array v1, v3, [B

    .line 306
    .local v1, "result":[B
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mExecuteType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 307
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->metadataDeliveryAnalysis(Lorg/apache/http/HttpResponse;)[B

    move-result-object v1

    .line 321
    :cond_3
    :goto_0
    return-object v1

    .line 308
    :cond_4
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mExecuteType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 309
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->metadataSearchCridAnalysis(Lorg/apache/http/HttpResponse;)[B

    move-result-object v1

    goto :goto_0

    .line 310
    :cond_5
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mExecuteType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 311
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->metadataSearchFreewordAnalysis(Lorg/apache/http/HttpResponse;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 817
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->futureTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    .line 821
    .local v0, "result":Z
    return v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;->shutdown()V

    .line 1187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;

    .line 1193
    :cond_0
    return-void
.end method

.method public startDelivery(Ljava/lang/String;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 554
    if-nez p1, :cond_0

    .line 555
    const-string v4, "parameter error"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 561
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v2

    .line 562
    .local v2, "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    const/4 v3, 0x0

    .line 564
    .local v3, "serverurl":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getEpgEcgServerUrl(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 574
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?crid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 579
    .local v1, "param":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->run(Ljava/lang/String;)V

    .line 580
    const/4 v4, 0x1

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mExecuteType:I

    .line 584
    return-void

    .line 567
    .end local v1    # "param":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 570
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v4

    .line 575
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v0

    .line 576
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 577
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v4
.end method

.method public startDelivery(Ljava/lang/String;II)V
    .locals 7
    .param p1, "aVersion"    # Ljava/lang/String;
    .param p2, "aFirst"    # I
    .param p3, "aLast"    # I

    .prologue
    const/4 v6, 0x0

    .line 439
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 440
    :cond_0
    const-string v5, "parameter error"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5

    .line 446
    :cond_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v2

    .line 447
    .local v2, "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    const/4 v4, 0x0

    .line 449
    .local v4, "serverurl":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getEpgEcgServerUrl(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 457
    sub-int v5, p3, p2

    add-int/lit8 v3, v5, 0x1

    .line 459
    .local v3, "range":I
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 460
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?fragmentversion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&range=unlimit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "param":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->run(Ljava/lang/String;)V

    .line 467
    const/4 v5, 0x1

    iput v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mExecuteType:I

    .line 471
    return-void

    .line 452
    .end local v1    # "param":Ljava/lang/String;
    .end local v3    # "range":I
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 455
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v5

    .line 463
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v3    # "range":I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?fragmentversion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&range="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "param":Ljava/lang/String;
    goto :goto_0
.end method

.method public startDelivery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "aStartdate"    # Ljava/lang/String;
    .param p2, "aEnddate"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 496
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 497
    :cond_0
    const-string v4, "parameter error"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 503
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v2

    .line 504
    .local v2, "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    const/4 v3, 0x0

    .line 506
    .local v3, "serverurl":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getEpgEcgServerUrl(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?startdate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&enddate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "param":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->run(Ljava/lang/String;)V

    .line 527
    const/4 v4, 0x1

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mExecuteType:I

    .line 531
    return-void

    .line 509
    .end local v1    # "param":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 512
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v4
.end method

.method public startSearchCrid(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 607
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 608
    :cond_0
    const-string v7, "parameter error"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v7

    .line 614
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 615
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 616
    .local v1, "crid":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 617
    const/16 v7, 0xff

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 618
    const-string v7, "parameter length error(index=%d, length=%d)"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v7

    .line 614
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 626
    .end local v1    # "crid":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v5

    .line 627
    .local v5, "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    const/4 v6, 0x0

    .line 629
    .local v6, "serverurl":Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getEpgEcgServerUrl(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 637
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 638
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    const-string v7, "?"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 641
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 642
    if-lez v3, :cond_4

    .line 643
    const-string v7, "&"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 645
    :cond_4
    const-string v7, "crid="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    :try_start_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 641
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 631
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 633
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 634
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v7

    .line 648
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v2

    .line 649
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 650
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v7

    .line 653
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, "param":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->run(Ljava/lang/String;)V

    .line 656
    iput v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mExecuteType:I

    .line 660
    return-void
.end method

.method public startSearchFreeword(Ljava/lang/String;)V
    .locals 8
    .param p1, "aFreeword"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 683
    if-nez p1, :cond_0

    .line 684
    const-string v4, "parameter error"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 689
    :cond_0
    const/16 v4, 0x12c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 690
    const-string v4, "parameter length(%d) error"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 696
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v2

    .line 697
    .local v2, "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    const/4 v3, 0x0

    .line 699
    .local v3, "serverurl":Ljava/lang/String;
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getEpgEcgServerUrl(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 709
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?freeword="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 715
    .local v1, "param":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->run(Ljava/lang/String;)V

    .line 716
    const/4 v4, 0x3

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataNwHttpClientSv;->mExecuteType:I

    .line 720
    return-void

    .line 702
    .end local v1    # "param":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 705
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v4

    .line 710
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v0

    .line 711
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 712
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v4
.end method
