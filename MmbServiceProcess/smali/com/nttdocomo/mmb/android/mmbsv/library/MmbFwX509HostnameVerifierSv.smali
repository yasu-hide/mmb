.class public final Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv;
.super Ljava/lang/Object;
.source "MmbFwX509HostnameVerifierSv.java"

# interfaces
.implements Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;
    }
.end annotation


# static fields
.field private static INSTANCE:Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv;->INSTANCE:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static getInstance()Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv;->INSTANCE:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method static verifyNonPrintableString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "aHost"    # Ljava/lang/String;
    .param p1, "aCertDns"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "result":Z
    const-string v2, "*."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 371
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lorg/apache/http/conn/ssl/AbstractVerifier;->countDots(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Lorg/apache/http/conn/ssl/AbstractVerifier;->countDots(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 380
    :goto_0
    return v0

    .line 371
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static verifyPrintableString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "aHost"    # Ljava/lang/String;
    .param p1, "aCertDns"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 343
    .local v0, "result":Z
    return v0
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 18
    .param p1, "aHost"    # Ljava/lang/String;
    .param p2, "aX509Cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Hostname is null."

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 221
    :cond_0
    if-nez p2, :cond_1

    .line 222
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Server certificate is null."

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 226
    :cond_1
    invoke-static/range {p2 .. p2}, Lorg/apache/http/conn/ssl/AbstractVerifier;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, "cns":[Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lorg/apache/http/conn/ssl/AbstractVerifier;->getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v12

    .line 237
    .local v12, "subjectAlts":[Ljava/lang/String;
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;

    move-object/from16 v0, p2

    invoke-direct {v13, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;-><init>([Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    .line 238
    .local v13, "subjectCn":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 239
    .local v11, "subjectAltList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz v12, :cond_3

    .line 240
    move-object v1, v12

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v10, v1, v7

    .line 241
    .local v10, "subjectAlt":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 242
    invoke-virtual {v11, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "subjectAlt":Ljava/lang/String;
    :cond_3
    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v11}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 248
    new-instance v5, Ljavax/net/ssl/SSLException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Certificate for <"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "> doesn\'t contain CN or DNS subjectAlt"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 251
    .local v5, "ex":Ljavax/net/ssl/SSLException;
    invoke-virtual {v5}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    throw v5

    .line 256
    .end local v5    # "ex":Ljavax/net/ssl/SSLException;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, "hostName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 260
    .local v9, "match":Z
    invoke-virtual {v13, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;->matchesHostName(Ljava/lang/String;)Z

    move-result v9

    .line 267
    if-nez v9, :cond_6

    invoke-virtual {v11}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 270
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "ciHostName":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 273
    .restart local v10    # "subjectAlt":Ljava/lang/String;
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "ciSubjectAlt":Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv;->verifyNonPrintableString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 275
    if-eqz v9, :cond_5

    .line 284
    .end local v2    # "ciHostName":Ljava/lang/String;
    .end local v3    # "ciSubjectAlt":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "subjectAlt":Ljava/lang/String;
    :cond_6
    if-nez v9, :cond_7

    .line 286
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string v14, "Hostname in certificate didn\'t match DNS."

    invoke-direct {v5, v14}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 287
    .restart local v5    # "ex":Ljavax/net/ssl/SSLException;
    const-string v14, "%s (<%s, %s> doesn\'t contain <%s>)"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v5}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget-object v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;->mmbValue:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v11, v15, v16

    const/16 v16, 0x3

    aput-object p1, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    throw v5

    .line 294
    .end local v5    # "ex":Ljavax/net/ssl/SSLException;
    :cond_7
    return-void
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .locals 4
    .param p1, "aHost"    # Ljava/lang/String;
    .param p2, "aSslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 135
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 136
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    aget-object v2, v0, v3

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 137
    .local v2, "x509":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    .line 141
    return-void
.end method

.method public verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "aHost"    # Ljava/lang/String;
    .param p2, "aCns"    # [Ljava/lang/String;
    .param p3, "aSubjectAlts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Unsupported method call."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "aHost"    # Ljava/lang/String;
    .param p2, "aSession"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method
