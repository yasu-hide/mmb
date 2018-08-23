.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;
.super Ljava/lang/Object;
.source "MmbCaCasDrmNwHttpClientSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static preferenceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->LOCK:Ljava/lang/Object;

    .line 90
    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 93
    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->preferenceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    return-void
.end method

.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 17
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget-object v14, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->LOCK:Ljava/lang/Object;

    monitor-enter v14

    .line 119
    :try_start_0
    sget-object v13, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v13, :cond_0

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v13

    sput-object v13, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->preferenceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    .line 124
    new-instance v8, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 125
    .local v8, "schreg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 128
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v13, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v15

    const/16 v16, 0x50

    move/from16 v0, v16

    invoke-direct {v6, v13, v15, v0}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 129
    .local v6, "sch":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v8, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 132
    sget-object v13, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    const-string v15, "mmbtestca"

    const-string v16, "NONE"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->getPreferenceValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 178
    .local v11, "testca":Ljava/lang/String;
    :try_start_1
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBaseSSLSocketFactorySv;

    const/4 v13, 0x0

    invoke-direct {v9, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBaseSSLSocketFactorySv;-><init>(Ljava/security/KeyStore;)V

    .line 179
    .local v9, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv;->getInstance()Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 180
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v13, "https"

    const/16 v15, 0x1bb

    invoke-direct {v7, v13, v9, v15}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .end local v6    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .local v7, "sch":Lorg/apache/http/conn/scheme/Scheme;
    :try_start_2
    invoke-virtual {v8, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v7

    .line 194
    .end local v7    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .end local v9    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .restart local v6    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    :goto_0
    :try_start_3
    const-string v13, "http.protocol.cookie-policy"

    const-string v15, "compatibility"

    invoke-interface {v4, v13, v15}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 198
    sget-object v13, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v4, v13}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 201
    const-string v13, "UTF-8"

    invoke-static {v4, v13}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 202
    const-string v13, "UTF-8"

    invoke-static {v4, v13}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 205
    const/4 v13, 0x0

    invoke-static {v4, v13}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 208
    sget-object v13, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->preferenceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    const/4 v15, 0x6

    invoke-virtual {v13, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v12

    .line 211
    .local v12, "useragent":Ljava/lang/String;
    invoke-static {v4, v12}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 214
    sget-object v13, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->preferenceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    const/4 v15, 0x4

    invoke-virtual {v13, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 217
    .local v1, "connectiontimeout":I
    sget-object v13, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->preferenceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    const/4 v15, 0x5

    invoke-virtual {v13, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 220
    .local v10, "sotimeout":I
    invoke-static {v4, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 221
    invoke-static {v4, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 224
    const/16 v13, 0x2000

    invoke-static {v4, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 227
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v4, v8}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 229
    .local v2, "connmanager":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v13, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v13, v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v13, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 231
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 247
    .local v5, "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    sget-object v13, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v13, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 249
    .end local v1    # "connectiontimeout":I
    .end local v2    # "connmanager":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .end local v4    # "params":Lorg/apache/http/params/HttpParams;
    .end local v5    # "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    .end local v6    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .end local v8    # "schreg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v10    # "sotimeout":I
    .end local v11    # "testca":Ljava/lang/String;
    .end local v12    # "useragent":Ljava/lang/String;
    :cond_0
    monitor-exit v14

    .line 253
    return-void

    .line 182
    .restart local v4    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v6    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v8    # "schreg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .restart local v11    # "testca":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Ljava/security/KeyStoreException;
    :goto_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 249
    .end local v3    # "e":Ljava/security/KeyStoreException;
    .end local v4    # "params":Lorg/apache/http/params/HttpParams;
    .end local v6    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .end local v8    # "schreg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v11    # "testca":Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v13

    .line 184
    .restart local v4    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v6    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v8    # "schreg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .restart local v11    # "testca":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 185
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    :try_start_4
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 186
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v3

    .line 187
    .local v3, "e":Ljava/security/KeyManagementException;
    :goto_3
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 188
    .end local v3    # "e":Ljava/security/KeyManagementException;
    :catch_3
    move-exception v3

    .line 189
    .local v3, "e":Ljava/security/UnrecoverableKeyException;
    :goto_4
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 188
    .end local v3    # "e":Ljava/security/UnrecoverableKeyException;
    .end local v6    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v7    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v9    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :catch_4
    move-exception v3

    move-object v6, v7

    .end local v7    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v6    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    goto :goto_4

    .line 186
    .end local v6    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v7    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v6    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    goto :goto_3

    .line 184
    .end local v6    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v7    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    :catch_6
    move-exception v3

    move-object v6, v7

    .end local v7    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v6    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    goto :goto_2

    .line 182
    .end local v6    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v7    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    :catch_7
    move-exception v3

    move-object v6, v7

    .end local v7    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    .restart local v6    # "sch":Lorg/apache/http/conn/scheme/Scheme;
    goto :goto_1
.end method


# virtual methods
.method public getBackgroundId(Ljava/lang/String;Ljava/util/concurrent/Future;)[B
    .locals 13
    .param p1, "aUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 982
    .local p2, "aFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    const/4 v1, 0x0

    .line 984
    .local v1, "cancel":Z
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->preferenceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClockForCasdrm()J

    move-result-wide v8

    .line 985
    .local v8, "scTime":J
    const-wide/16 v10, 0x0

    cmp-long v7, v10, v8

    if-lez v7, :cond_0

    .line 986
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v7, -0x1000000

    const-string v10, "Failed to get secure clock."

    invoke-direct {v4, v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 990
    .local v4, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] %s (%d)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 991
    throw v4

    .line 994
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v7, v8, v9, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;JLjava/lang/String;)V

    .line 997
    .local v0, "access":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;->start()V

    .line 998
    const/4 v6, 0x0

    .line 1002
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 1067
    .local v6, "result":[B
    return-object v6

    .line 1004
    .end local v6    # "result":[B
    :catch_0
    move-exception v3

    .line 1005
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    if-nez v1, :cond_1

    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1006
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwBackgroundId;->cancel()V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1007
    const/4 v1, 0x1

    goto :goto_0

    .line 1011
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v3

    .line 1012
    .local v3, "e":Ljava/util/concurrent/CancellationException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v7, -0x1000007

    const-string v10, "Cancelled."

    invoke-direct {v4, v7, v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1015
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1016
    throw v4

    .line 1017
    .end local v3    # "e":Ljava/util/concurrent/CancellationException;
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_2
    move-exception v3

    .line 1018
    .local v3, "e":Ljava/lang/InterruptedException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v7, -0x1000007

    const-string v10, "Interrupted."

    invoke-direct {v4, v7, v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1021
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1022
    throw v4

    .line 1023
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_3
    move-exception v3

    .line 1024
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 1025
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v7, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    if-eqz v7, :cond_2

    move-object v5, v2

    .line 1026
    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    .line 1028
    .local v5, "exp":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    iget v7, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-direct {v4, v7, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 1030
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v4

    .line 1031
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v5    # "exp":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_2
    instance-of v7, v2, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v7, :cond_3

    .line 1032
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v7, -0x2000007

    invoke-direct {v4, v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 1035
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] Client protocol error. (%s)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1036
    throw v4

    .line 1037
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_3
    instance-of v7, v2, Ljava/net/SocketTimeoutException;

    if-eqz v7, :cond_4

    .line 1038
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v7, -0x2000003

    invoke-direct {v4, v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 1041
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] Socket timeout occurred. (%s) (%d bytes transferred)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    check-cast v2, Ljava/net/SocketTimeoutException;

    .end local v2    # "cause":Ljava/lang/Throwable;
    iget v12, v2, Ljava/net/SocketTimeoutException;->bytesTransferred:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1044
    throw v4

    .line 1045
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    :cond_4
    instance-of v7, v2, Ljava/io/IOException;

    if-eqz v7, :cond_5

    .line 1046
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v7, -0x2000008

    invoke-direct {v4, v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 1049
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] Network IO error. (%s)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    throw v4

    .line 1052
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_5
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v7, -0x80000000

    const-string v10, "Thread execution error."

    invoke-direct {v4, v7, v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1055
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    throw v4

    .line 1058
    .end local v2    # "cause":Ljava/lang/Throwable;
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_4
    move-exception v3

    .line 1059
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v7, -0x80000000

    invoke-direct {v4, v7, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 1061
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] Unknown error. (%s)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1062
    throw v4
.end method

.method public getKw(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;BLjava/lang/String;Ljava/util/concurrent/Future;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    .locals 13
    .param p1, "aEmmInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;
    .param p2, "aEntityId"    # B
    .param p3, "aUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;",
            "B",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;)",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 645
    .local p4, "aFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    const/4 v7, 0x0

    .line 647
    .local v7, "cancel":Z
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->preferenceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClockForCasdrm()J

    move-result-wide v2

    .line 648
    .local v2, "scTime":J
    const-wide/16 v4, 0x0

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 649
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v1, -0x1000000

    const-string v4, "Failed to get secure clock."

    invoke-direct {v10, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 653
    .local v10, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s (%d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    throw v10

    .line 657
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;JLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;BLjava/lang/String;)V

    .line 659
    .local v0, "access":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->start()V

    .line 660
    const/4 v12, 0x0

    .line 664
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 728
    .local v12, "response":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    return-object v12

    .line 666
    .end local v12    # "response":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    :catch_0
    move-exception v9

    .line 667
    .local v9, "e":Ljava/util/concurrent/TimeoutException;
    if-nez v7, :cond_1

    :try_start_1
    invoke-interface/range {p4 .. p4}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 668
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->cancel()V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 669
    const/4 v7, 0x1

    goto :goto_0

    .line 673
    .end local v9    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v9

    .line 674
    .local v9, "e":Ljava/util/concurrent/CancellationException;
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x1000007

    const-string v4, "Cancelled."

    invoke-direct {v10, v1, v4, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 677
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    throw v10

    .line 679
    .end local v9    # "e":Ljava/util/concurrent/CancellationException;
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_2
    move-exception v9

    .line 680
    .local v9, "e":Ljava/lang/InterruptedException;
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x1000007

    const-string v4, "Interrupted."

    invoke-direct {v10, v1, v4, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 683
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    throw v10

    .line 685
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_3
    move-exception v9

    .line 686
    .local v9, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v9}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    .line 687
    .local v8, "cause":Ljava/lang/Throwable;
    instance-of v1, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    if-eqz v1, :cond_2

    move-object v11, v8

    .line 688
    check-cast v11, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    .line 690
    .local v11, "pe":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    iget v1, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-direct {v10, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(I)V

    .line 691
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v10

    .line 692
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v11    # "pe":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_2
    instance-of v1, v8, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v1, :cond_3

    .line 693
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x2000007

    invoke-direct {v10, v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 696
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] Client protocol error. (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    throw v10

    .line 698
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_3
    instance-of v1, v8, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_4

    .line 699
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x2000003

    invoke-direct {v10, v1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 702
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] Socket timeout occurred. (%s) (%d bytes transferred)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    check-cast v8, Ljava/net/SocketTimeoutException;

    .end local v8    # "cause":Ljava/lang/Throwable;
    iget v6, v8, Ljava/net/SocketTimeoutException;->bytesTransferred:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    throw v10

    .line 706
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v8    # "cause":Ljava/lang/Throwable;
    :cond_4
    instance-of v1, v8, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 707
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x2000008

    invoke-direct {v10, v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 710
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] Network IO error. (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    throw v10

    .line 713
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_5
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v1, -0x80000000

    const-string v4, "Thread execution error."

    invoke-direct {v10, v1, v4, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 716
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 717
    throw v10

    .line 719
    .end local v8    # "cause":Ljava/lang/Throwable;
    .end local v9    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_4
    move-exception v9

    .line 720
    .local v9, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v1, -0x80000000

    invoke-direct {v10, v1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 722
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] Unknown error. (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    throw v10
.end method

.method public getLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;
    .locals 13
    .param p1, "aInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 753
    const/4 v1, 0x0

    .line 755
    .local v1, "cancel":Z
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->preferenceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClockForCasdrm()J

    move-result-wide v8

    .line 756
    .local v8, "scTime":J
    const-wide/16 v10, 0x0

    cmp-long v7, v10, v8

    if-lez v7, :cond_0

    .line 757
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v7, -0x1000000

    const-string v10, "Failed to get secure clock."

    invoke-direct {v4, v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 761
    .local v4, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] %s (%d)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 762
    throw v4

    .line 764
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v7, v8, v9, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;JLcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;)V

    .line 766
    .local v0, "access":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->start()V

    .line 767
    const/4 v6, 0x0

    .line 771
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 835
    .local v6, "response":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;
    return-object v6

    .line 773
    .end local v6    # "response":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;
    :catch_0
    move-exception v3

    .line 774
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 775
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->cancel()V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 776
    const/4 v1, 0x1

    goto :goto_0

    .line 780
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v3

    .line 781
    .local v3, "e":Ljava/util/concurrent/CancellationException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v7, -0x1000007

    const-string v10, "Cancelled."

    invoke-direct {v4, v7, v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 784
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 785
    throw v4

    .line 786
    .end local v3    # "e":Ljava/util/concurrent/CancellationException;
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_2
    move-exception v3

    .line 787
    .local v3, "e":Ljava/lang/InterruptedException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v7, -0x1000007

    const-string v10, "Interrupted."

    invoke-direct {v4, v7, v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 790
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    throw v4

    .line 792
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_3
    move-exception v3

    .line 793
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 794
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v7, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    if-eqz v7, :cond_2

    move-object v5, v2

    .line 795
    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    .line 797
    .local v5, "pe":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    iget v7, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-direct {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(I)V

    .line 798
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v4

    .line 799
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v5    # "pe":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_2
    instance-of v7, v2, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v7, :cond_3

    .line 800
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v7, -0x2000007

    invoke-direct {v4, v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 803
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] Client protocol error. (%s)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    throw v4

    .line 805
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_3
    instance-of v7, v2, Ljava/net/SocketTimeoutException;

    if-eqz v7, :cond_4

    .line 806
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v7, -0x2000003

    invoke-direct {v4, v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 809
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] Socket timeout occurred. (%s) (%d bytes transferred)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    check-cast v2, Ljava/net/SocketTimeoutException;

    .end local v2    # "cause":Ljava/lang/Throwable;
    iget v12, v2, Ljava/net/SocketTimeoutException;->bytesTransferred:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 812
    throw v4

    .line 813
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    :cond_4
    instance-of v7, v2, Ljava/io/IOException;

    if-eqz v7, :cond_5

    .line 814
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v7, -0x2000008

    invoke-direct {v4, v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 817
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] Network IO error. (%s)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 818
    throw v4

    .line 820
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_5
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v7, -0x80000000

    const-string v10, "Thread execution error."

    invoke-direct {v4, v7, v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 823
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    throw v4

    .line 826
    .end local v2    # "cause":Ljava/lang/Throwable;
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_4
    move-exception v3

    .line 827
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v7, -0x80000000

    invoke-direct {v4, v7, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 829
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] Unknown error. (%s)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 830
    throw v4
.end method

.method public getPre33SegCommonId(Ljava/lang/String;Ljava/util/concurrent/Future;)[B
    .locals 13
    .param p1, "aUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 305
    .local p2, "aFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    const/4 v1, 0x0

    .line 307
    .local v1, "cancel":Z
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->preferenceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClockForCasdrm()J

    move-result-wide v8

    .line 308
    .local v8, "scTime":J
    const-wide/16 v10, 0x0

    cmp-long v7, v10, v8

    if-lez v7, :cond_0

    .line 309
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v7, -0x1000000

    const-string v10, "Failed to get secure clock."

    invoke-direct {v4, v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 313
    .local v4, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] %s (%d)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    throw v4

    .line 317
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPre33SegCommonIdSv;

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v7, v8, v9, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPre33SegCommonIdSv;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;JLjava/lang/String;)V

    .line 319
    .local v0, "access":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPre33SegCommonIdSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPre33SegCommonIdSv;->start()V

    .line 320
    const/4 v6, 0x0

    .line 324
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPre33SegCommonIdSv;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 390
    .local v6, "pre33seg":[B
    return-object v6

    .line 326
    .end local v6    # "pre33seg":[B
    :catch_0
    move-exception v3

    .line 327
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    if-nez v1, :cond_1

    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 328
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPre33SegCommonIdSv;->cancel()V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 329
    const/4 v1, 0x1

    goto :goto_0

    .line 334
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v3

    .line 335
    .local v3, "e":Ljava/util/concurrent/CancellationException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v7, -0x1000007

    const-string v10, "Cancelled."

    invoke-direct {v4, v7, v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    throw v4

    .line 340
    .end local v3    # "e":Ljava/util/concurrent/CancellationException;
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_2
    move-exception v3

    .line 341
    .local v3, "e":Ljava/lang/InterruptedException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v7, -0x1000007

    const-string v10, "Interrupted."

    invoke-direct {v4, v7, v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    throw v4

    .line 346
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_3
    move-exception v3

    .line 347
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 348
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v7, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    if-eqz v7, :cond_2

    move-object v5, v2

    .line 349
    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    .line 351
    .local v5, "exp":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    iget v7, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-direct {v4, v7, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 353
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v4

    .line 354
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v5    # "exp":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_2
    instance-of v7, v2, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v7, :cond_3

    .line 355
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v7, -0x2000007

    invoke-direct {v4, v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 358
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] Client protocol error. (%s)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    throw v4

    .line 360
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_3
    instance-of v7, v2, Ljava/net/SocketTimeoutException;

    if-eqz v7, :cond_4

    .line 361
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v7, -0x2000003

    invoke-direct {v4, v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 364
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] Socket timeout occurred. (%s) (%d bytes transferred)"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    check-cast v2, Ljava/net/SocketTimeoutException;

    .end local v2    # "cause":Ljava/lang/Throwable;
    iget v12, v2, Ljava/net/SocketTimeoutException;->bytesTransferred:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    throw v4

    .line 368
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    :cond_4
    instance-of v7, v2, Ljava/io/IOException;

    if-eqz v7, :cond_5

    .line 369
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v7, -0x2000008

    invoke-direct {v4, v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 372
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] Network IO error. (%s)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    throw v4

    .line 375
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_5
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v7, -0x80000000

    const-string v10, "Thread execution error."

    invoke-direct {v4, v7, v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    throw v4

    .line 381
    .end local v2    # "cause":Ljava/lang/Throwable;
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_4
    move-exception v3

    .line 382
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v7, -0x80000000

    invoke-direct {v4, v7, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 384
    .restart local v4    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v7, "[%d] Unknown error. (%s)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    throw v4
.end method

.method public getTier(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;BLjava/lang/String;Ljava/util/concurrent/Future;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    .locals 13
    .param p1, "aEmmInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;
    .param p2, "aEntityId"    # B
    .param p3, "aUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;",
            "B",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;)",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 532
    .local p4, "aFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    const/4 v7, 0x0

    .line 534
    .local v7, "cancel":Z
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->preferenceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClockForCasdrm()J

    move-result-wide v2

    .line 535
    .local v2, "scTime":J
    const-wide/16 v4, 0x0

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 536
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v1, -0x1000000

    const-string v4, "Failed to get secure clock."

    invoke-direct {v10, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 540
    .local v10, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s (%d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    throw v10

    .line 544
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmTierDataSv;

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmTierDataSv;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;JLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;BLjava/lang/String;)V

    .line 546
    .local v0, "access":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmTierDataSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmTierDataSv;->start()V

    .line 547
    const/4 v12, 0x0

    .line 551
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmTierDataSv;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 615
    .local v12, "response":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    return-object v12

    .line 553
    .end local v12    # "response":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    :catch_0
    move-exception v9

    .line 554
    .local v9, "e":Ljava/util/concurrent/TimeoutException;
    if-nez v7, :cond_1

    :try_start_1
    invoke-interface/range {p4 .. p4}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 555
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmTierDataSv;->cancel()V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 556
    const/4 v7, 0x1

    goto :goto_0

    .line 560
    .end local v9    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v9

    .line 561
    .local v9, "e":Ljava/util/concurrent/CancellationException;
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x1000007

    const-string v4, "Cancelled."

    invoke-direct {v10, v1, v4, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    throw v10

    .line 566
    .end local v9    # "e":Ljava/util/concurrent/CancellationException;
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_2
    move-exception v9

    .line 567
    .local v9, "e":Ljava/lang/InterruptedException;
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x1000007

    const-string v4, "Interrupted."

    invoke-direct {v10, v1, v4, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 570
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    throw v10

    .line 572
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_3
    move-exception v9

    .line 573
    .local v9, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v9}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    .line 574
    .local v8, "cause":Ljava/lang/Throwable;
    instance-of v1, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    if-eqz v1, :cond_2

    move-object v11, v8

    .line 575
    check-cast v11, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    .line 577
    .local v11, "pe":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    iget v1, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-direct {v10, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(I)V

    .line 578
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v10

    .line 579
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v11    # "pe":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_2
    instance-of v1, v8, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v1, :cond_3

    .line 580
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x2000007

    invoke-direct {v10, v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 583
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] Client protocol error. (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    throw v10

    .line 585
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_3
    instance-of v1, v8, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_4

    .line 586
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x2000003

    invoke-direct {v10, v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 589
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] Socket timeout occurred. (%s) (%d bytes transferred)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    check-cast v8, Ljava/net/SocketTimeoutException;

    .end local v8    # "cause":Ljava/lang/Throwable;
    iget v6, v8, Ljava/net/SocketTimeoutException;->bytesTransferred:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    throw v10

    .line 593
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v8    # "cause":Ljava/lang/Throwable;
    :cond_4
    instance-of v1, v8, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 594
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x2000008

    invoke-direct {v10, v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 597
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] Network IO error. (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    throw v10

    .line 600
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_5
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v1, -0x80000000

    const-string v4, "Thread execution error."

    invoke-direct {v10, v1, v4, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 603
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    throw v10

    .line 606
    .end local v8    # "cause":Ljava/lang/Throwable;
    .end local v9    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_4
    move-exception v9

    .line 607
    .local v9, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v1, -0x80000000

    invoke-direct {v10, v1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 609
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] Unknown error. (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    throw v10
.end method

.method public setup(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;Ljava/lang/String;[BLjava/util/concurrent/Future;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;
    .locals 13
    .param p1, "aInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;
    .param p2, "aUrl"    # Ljava/lang/String;
    .param p3, "aPre33SegCommonId"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/concurrent/Future",
            "<*>;)",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 421
    .local p4, "aFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    const/4 v7, 0x0

    .line 422
    .local v7, "cancel":Z
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->preferenceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClockForCasdrm()J

    move-result-wide v2

    .line 423
    .local v2, "scTime":J
    const-wide/16 v4, 0x0

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 424
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v1, -0x1000000

    const-string v4, "Failed to get secure clock."

    invoke-direct {v10, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 427
    .local v10, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s (%d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    throw v10

    .line 431
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;JLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;Ljava/lang/String;[B)V

    .line 433
    .local v0, "access":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->start()V

    .line 434
    const/4 v12, 0x0

    .line 438
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 502
    .local v12, "response":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;
    return-object v12

    .line 440
    .end local v12    # "response":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;
    :catch_0
    move-exception v9

    .line 441
    .local v9, "e":Ljava/util/concurrent/TimeoutException;
    if-nez v7, :cond_1

    :try_start_1
    invoke-interface/range {p4 .. p4}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->cancel()V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 443
    const/4 v7, 0x1

    goto :goto_0

    .line 447
    .end local v9    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v9

    .line 448
    .local v9, "e":Ljava/util/concurrent/CancellationException;
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x1000007

    const-string v4, "Cancelled."

    invoke-direct {v10, v1, v4, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    throw v10

    .line 453
    .end local v9    # "e":Ljava/util/concurrent/CancellationException;
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_2
    move-exception v9

    .line 454
    .local v9, "e":Ljava/lang/InterruptedException;
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x1000007

    const-string v4, "Interrupted."

    invoke-direct {v10, v1, v4, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    throw v10

    .line 459
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_3
    move-exception v9

    .line 460
    .local v9, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v9}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    .line 461
    .local v8, "cause":Ljava/lang/Throwable;
    instance-of v1, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    if-eqz v1, :cond_2

    move-object v11, v8

    .line 462
    check-cast v11, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    .line 464
    .local v11, "pe":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    iget v1, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-direct {v10, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(I)V

    .line 465
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v10

    .line 466
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v11    # "pe":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_2
    instance-of v1, v8, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v1, :cond_3

    .line 467
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x2000007

    invoke-direct {v10, v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 470
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] Client protocol error. (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    throw v10

    .line 472
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_3
    instance-of v1, v8, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_4

    .line 473
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x2000003

    invoke-direct {v10, v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 476
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] Socket timeout occurred. (%s) (%d bytes transferred)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    check-cast v8, Ljava/net/SocketTimeoutException;

    .end local v8    # "cause":Ljava/lang/Throwable;
    iget v6, v8, Ljava/net/SocketTimeoutException;->bytesTransferred:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    throw v10

    .line 480
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v8    # "cause":Ljava/lang/Throwable;
    :cond_4
    instance-of v1, v8, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 481
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x2000008

    invoke-direct {v10, v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 484
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] Network IO error. (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    throw v10

    .line 487
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_5
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v1, -0x80000000

    const-string v4, "Thread execution error."

    invoke-direct {v10, v1, v4, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 490
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    throw v10

    .line 493
    .end local v8    # "cause":Ljava/lang/Throwable;
    .end local v9    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_4
    move-exception v9

    .line 494
    .local v9, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v1, -0x80000000

    invoke-direct {v10, v1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 496
    .restart local v10    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] Unknown error. (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    throw v10
.end method

.method public setupUserRegistAndAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Future;)[B
    .locals 16
    .param p1, "aUrl"    # Ljava/lang/String;
    .param p2, "aUimId"    # Ljava/lang/String;
    .param p3, "aCarrier"    # Ljava/lang/String;
    .param p4, "aRcvrType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 867
    .local p5, "aFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    const/4 v3, 0x0

    .line 868
    .local v3, "cancel":Z
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth$MmbCaCasDrmNwUserRegistAndAuthInfo;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth$MmbCaCasDrmNwUserRegistAndAuthInfo;-><init>()V

    .line 870
    .local v8, "info":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth$MmbCaCasDrmNwUserRegistAndAuthInfo;
    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth$MmbCaCasDrmNwUserRegistAndAuthInfo;->mmbUrl:Ljava/lang/String;

    .line 871
    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth$MmbCaCasDrmNwUserRegistAndAuthInfo;->mmbUimid:Ljava/lang/String;

    .line 872
    move-object/from16 v0, p3

    iput-object v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth$MmbCaCasDrmNwUserRegistAndAuthInfo;->mmbCarrier:Ljava/lang/String;

    .line 873
    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth$MmbCaCasDrmNwUserRegistAndAuthInfo;->mmbRcvrType:Ljava/lang/String;

    .line 875
    sget-object v12, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->preferenceModule:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClockForCasdrm()J

    move-result-wide v10

    .line 876
    .local v10, "scTime":J
    const-wide/16 v12, 0x0

    cmp-long v12, v12, v10

    if-lez v12, :cond_0

    .line 877
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v12, -0x1000000

    const-string v13, "Failed to get secure clock."

    invoke-direct {v6, v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 880
    .local v6, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v12, "[%d] %s (%d)"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    throw v6

    .line 884
    .end local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;

    sget-object v12, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v12, v10, v11, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;JLcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth$MmbCaCasDrmNwUserRegistAndAuthInfo;)V

    .line 886
    .local v2, "access":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->start()V

    .line 887
    const/4 v9, 0x0

    .line 891
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 957
    .local v9, "result":[B
    return-object v9

    .line 893
    .end local v9    # "result":[B
    :catch_0
    move-exception v5

    .line 894
    .local v5, "e":Ljava/util/concurrent/TimeoutException;
    if-nez v3, :cond_1

    :try_start_1
    invoke-interface/range {p5 .. p5}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 895
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwUserRegistAndAuth;->cancel()V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 896
    const/4 v3, 0x1

    goto :goto_0

    .line 901
    .end local v5    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v5

    .line 902
    .local v5, "e":Ljava/util/concurrent/CancellationException;
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v12, -0x1000007

    const-string v13, "Cancelled."

    invoke-direct {v6, v12, v13, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 905
    .restart local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v12, "[%d] %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 906
    throw v6

    .line 907
    .end local v5    # "e":Ljava/util/concurrent/CancellationException;
    .end local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_2
    move-exception v5

    .line 908
    .local v5, "e":Ljava/lang/InterruptedException;
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v12, -0x1000007

    const-string v13, "Interrupted."

    invoke-direct {v6, v12, v13, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 911
    .restart local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v12, "[%d] %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 912
    throw v6

    .line 913
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_3
    move-exception v5

    .line 914
    .local v5, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v5}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 915
    .local v4, "cause":Ljava/lang/Throwable;
    instance-of v12, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    if-eqz v12, :cond_2

    move-object v7, v4

    .line 916
    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    .line 918
    .local v7, "exp":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    iget v12, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-direct {v6, v12, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 920
    .restart local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v6

    .line 921
    .end local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v7    # "exp":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_2
    instance-of v12, v4, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v12, :cond_3

    .line 922
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v12, -0x2000007

    invoke-direct {v6, v12, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 925
    .restart local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v12, "[%d] Client protocol error. (%s)"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 926
    throw v6

    .line 927
    .end local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_3
    instance-of v12, v4, Ljava/net/SocketTimeoutException;

    if-eqz v12, :cond_4

    .line 928
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v12, -0x2000003

    invoke-direct {v6, v12, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 931
    .restart local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v12, "[%d] Socket timeout occurred. (%s) (%d bytes transferred)"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    check-cast v4, Ljava/net/SocketTimeoutException;

    .end local v4    # "cause":Ljava/lang/Throwable;
    iget v15, v4, Ljava/net/SocketTimeoutException;->bytesTransferred:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    throw v6

    .line 935
    .end local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v4    # "cause":Ljava/lang/Throwable;
    :cond_4
    instance-of v12, v4, Ljava/io/IOException;

    if-eqz v12, :cond_5

    .line 936
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v12, -0x2000008

    invoke-direct {v6, v12, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 939
    .restart local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v12, "[%d] Network IO error. (%s)"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 940
    throw v6

    .line 942
    .end local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_5
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v12, -0x80000000

    const-string v13, "Thread execution error."

    invoke-direct {v6, v12, v13, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 945
    .restart local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v12, "[%d] %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    throw v6

    .line 948
    .end local v4    # "cause":Ljava/lang/Throwable;
    .end local v5    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_4
    move-exception v5

    .line 949
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v12, -0x80000000

    invoke-direct {v6, v12, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 951
    .restart local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v12, "[%d] Unknown error. (%s)"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 952
    throw v6
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 272
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 275
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 277
    :cond_0
    monitor-exit v1

    .line 281
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
