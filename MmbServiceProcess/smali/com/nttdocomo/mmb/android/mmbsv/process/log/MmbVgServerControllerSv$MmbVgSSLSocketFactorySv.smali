.class Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv$MmbVgSSLSocketFactorySv;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "MmbVgServerControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbVgSSLSocketFactorySv"
.end annotation


# instance fields
.field private sslContext:Ljavax/net/ssl/SSLContext;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;Ljava/security/KeyStore;)V
    .locals 4
    .param p2, "aTruststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 795
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv$MmbVgSSLSocketFactorySv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;

    .line 796
    invoke-direct {p0, p2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 772
    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv$MmbVgSSLSocketFactorySv;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 800
    const/4 v1, 0x0

    .line 801
    .local v1, "trustmanagers":[Ljavax/net/ssl/TrustManager;
    if-eqz p2, :cond_0

    .line 802
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 805
    .local v0, "tmfactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v0, p2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 806
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 808
    .end local v0    # "tmfactory":Ljavax/net/ssl/TrustManagerFactory;
    :cond_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv$MmbVgSSLSocketFactorySv;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 809
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv$MmbVgSSLSocketFactorySv;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2, v3, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 813
    return-void
.end method


# virtual methods
.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 7
    .param p1, "aSocket"    # Ljava/net/Socket;
    .param p2, "aHost"    # Ljava/lang/String;
    .param p3, "aPort"    # I
    .param p4, "aAutoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 843
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv$MmbVgSSLSocketFactorySv;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    .line 847
    .local v4, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v3

    .line 849
    .local v3, "sslParams":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {v3}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "cipherSuites":[Ljava/lang/String;
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    .line 851
    .local v2, "newCipherSuites":[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "TLS_RSA_WITH_AES_256_CBC_SHA"

    aput-object v6, v2, v5

    .line 852
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 853
    add-int/lit8 v5, v1, 0x1

    aget-object v6, v0, v1

    aput-object v6, v2, v5

    .line 852
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 858
    :cond_0
    invoke-virtual {v3, v2}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 859
    invoke-virtual {v4, v3}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 861
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv$MmbVgSSLSocketFactorySv;->getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v5

    invoke-interface {v5, p2, v4}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 866
    return-object v4
.end method
