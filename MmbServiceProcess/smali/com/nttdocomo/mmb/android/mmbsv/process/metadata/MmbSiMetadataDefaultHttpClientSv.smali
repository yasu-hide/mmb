.class Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;
.super Ljava/lang/Object;
.source "MmbSiMetadataDefaultHttpClientSv.java"


# instance fields
.field mInstance:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "aClientConnectionManager"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "aHttpParams"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;->mInstance:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 64
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;->mInstance:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 68
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 2
    .param p1, "aRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "aResponseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;->mInstance:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "ret":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public setHttpRequestRetryHandler(Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;)V
    .locals 1
    .param p1, "aDefaultHttpRequestRetryHandler"    # Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;->mInstance:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 126
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;->mInstance:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;->mInstance:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDefaultHttpClientSv;->mInstance:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 154
    :cond_0
    return-void
.end method
