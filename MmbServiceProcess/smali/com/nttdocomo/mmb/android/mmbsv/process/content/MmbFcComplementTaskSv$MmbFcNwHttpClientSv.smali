.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;
.super Ljava/lang/Object;
.source "MmbFcComplementTaskSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbFcNwHttpClientSv"
.end annotation


# instance fields
.field private mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mConnection:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)V
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 2093
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2075
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mLock:Ljava/lang/Object;

    .line 2077
    iput-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 2079
    iput-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mConnection:Ljava/lang/String;

    .line 2098
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2099
    :try_start_0
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v8, :cond_0

    .line 2102
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    .line 2105
    .local v3, "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    new-instance v5, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 2106
    .local v5, "schReg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 2109
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v10

    const/16 v11, 0x50

    invoke-direct {v4, v8, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 2110
    .local v4, "sch":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v5, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2113
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    .end local v4    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    const-string v8, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v10

    const/16 v11, 0x1bb

    invoke-direct {v4, v8, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 2114
    .restart local v4    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v5, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2117
    const-string v8, "http.protocol.cookie-policy"

    const-string v10, "compatibility"

    invoke-interface {v2, v8, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 2121
    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 2124
    const-string v8, "UTF-8"

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 2125
    const-string v8, "UTF-8"

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 2128
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 2131
    const/4 v8, 0x6

    invoke-virtual {v3, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v7

    .line 2134
    .local v7, "useragent":Ljava/lang/String;
    invoke-static {v2, v7}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 2137
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2142
    .local v0, "connectiontimeout":I
    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2146
    .local v6, "sotimeout":I
    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 2147
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 2150
    const/16 v8, 0x2000

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 2153
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v5}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 2155
    .local v1, "connmanager":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 2157
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v8, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 2159
    .end local v0    # "connectiontimeout":I
    .end local v1    # "connmanager":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v4    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .end local v5    # "schReg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v6    # "sotimeout":I
    .end local v7    # "useragent":Ljava/lang/String;
    :cond_0
    monitor-exit v9

    .line 2164
    return-void

    .line 2159
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method


# virtual methods
.method getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mConnection:Ljava/lang/String;

    return-object v0
.end method

.method getRepair(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;Ljava/lang/String;ILmmb/android/MmbFcContMw/MmbFcContMwRepairParts;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    .locals 4
    .param p1, "aInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aType"    # I
    .param p4, "aRepairParts"    # Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .param p5, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2227
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lorg/apache/http/impl/client/DefaultHttpClient;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;)V

    .line 2228
    .local v0, "access":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->setParam(Ljava/lang/String;ILmmb/android/MmbFcContMw/MmbFcContMwRepairParts;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2231
    const/4 v1, 0x0

    .line 2235
    .local v1, "response":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    :try_start_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->getRepair()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2237
    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->connection:Ljava/lang/String;

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mConnection:Ljava/lang/String;

    .line 2243
    return-object v1

    .line 2237
    :catchall_0
    move-exception v2

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->connection:Ljava/lang/String;

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mConnection:Ljava/lang/String;

    throw v2
.end method

.method getRepairFdt(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    .locals 4
    .param p1, "aInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aType"    # I
    .param p4, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2280
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lorg/apache/http/impl/client/DefaultHttpClient;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;)V

    .line 2281
    .local v0, "access":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;
    const/4 v2, 0x0

    invoke-virtual {v0, p2, p3, v2, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->setParam(Ljava/lang/String;ILmmb/android/MmbFcContMw/MmbFcContMwRepairParts;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2284
    const/4 v1, 0x0

    .line 2288
    .local v1, "response":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    :try_start_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->getRepair()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2290
    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->connection:Ljava/lang/String;

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mConnection:Ljava/lang/String;

    .line 2296
    return-object v1

    .line 2290
    :catchall_0
    move-exception v2

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;->connection:Ljava/lang/String;

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mConnection:Ljava/lang/String;

    throw v2
.end method

.method shutdown()V
    .locals 2

    .prologue
    .line 2184
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2185
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 2186
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 2187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 2189
    :cond_0
    monitor-exit v1

    .line 2194
    return-void

    .line 2189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
