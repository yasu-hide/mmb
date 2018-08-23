.class Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;
.super Ljava/lang/Object;
.source "MmbFwX509HostnameVerifierSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbFwX509SubjectCnSv"
.end annotation


# static fields
.field private static final OID_CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final localASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field public final mmbValue:Ljava/lang/String;

.field private final x509Cert:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 391
    new-instance v0, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-string v2, "CN"

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;->OID_CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    .line 395
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->attributeValue:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;->localASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void

    .line 391
    nop

    :array_0
    .array-data 4
        0x2
        0x5
        0x4
        0x3
    .end array-data
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "aCns"    # [Ljava/lang/String;
    .param p2, "aX509Cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 419
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;->mmbValue:Ljava/lang/String;

    .line 423
    :goto_0
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;->x509Cert:Ljava/security/cert/X509Certificate;

    .line 427
    return-void

    .line 421
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;->mmbValue:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getValueTag()I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 552
    const/4 v12, -0x1

    .line 556
    .local v12, "tag":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;->x509Cert:Ljava/security/cert/X509Certificate;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v5

    .line 557
    .local v5, "encodedTbsCert":[B
    sget-object v16, Lorg/apache/harmony/security/x509/TBSCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/harmony/security/x509/TBSCertificate;

    .line 560
    .local v13, "tbsCert":Lorg/apache/harmony/security/x509/TBSCertificate;
    invoke-virtual {v13}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubject()Lorg/apache/harmony/security/x501/Name;

    move-result-object v11

    .line 567
    .local v11, "subject":Lorg/apache/harmony/security/x501/Name;
    new-instance v10, Ljava/util/ArrayList;

    sget-object v16, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->getValues(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 571
    .local v10, "rdn":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 572
    .local v2, "atavList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    .line 573
    .local v1, "atav":Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v14

    .line 577
    .local v14, "type":Lorg/apache/harmony/security/utils/ObjectIdentifier;
    sget-object v16, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;->OID_CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 579
    sget-object v16, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v4

    .line 581
    .local v4, "encodedAtav":[B
    sget-object v16, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;->localASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/Object;

    move-object/from16 v0, v16

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    .line 582
    .local v9, "localAtav":[Ljava/lang/Object;
    const/16 v16, 0x1

    aget-object v15, v9, v16

    check-cast v15, Lorg/apache/harmony/security/x501/AttributeValue;

    .line 583
    .local v15, "value":Lorg/apache/harmony/security/x501/AttributeValue;
    invoke-virtual {v15}, Lorg/apache/harmony/security/x501/AttributeValue;->getTag()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    .line 587
    return v12

    .line 591
    .end local v1    # "atav":Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    .end local v2    # "atavList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    .end local v4    # "encodedAtav":[B
    .end local v5    # "encodedTbsCert":[B
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "localAtav":[Ljava/lang/Object;
    .end local v10    # "rdn":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;>;"
    .end local v11    # "subject":Lorg/apache/harmony/security/x501/Name;
    .end local v13    # "tbsCert":Lorg/apache/harmony/security/x509/TBSCertificate;
    .end local v14    # "type":Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .end local v15    # "value":Lorg/apache/harmony/security/x501/AttributeValue;
    :catch_0
    move-exception v3

    .line 592
    .local v3, "e":Ljava/io/IOException;
    new-instance v6, Ljavax/net/ssl/SSLException;

    invoke-direct {v6, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    .line 593
    .local v6, "ex":Ljavax/net/ssl/SSLException;
    invoke-virtual {v6}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    throw v6

    .line 595
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "ex":Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v3

    .line 596
    .local v3, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v6, Ljavax/net/ssl/SSLException;

    invoke-direct {v6, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    .line 597
    .restart local v6    # "ex":Ljavax/net/ssl/SSLException;
    invoke-virtual {v6}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    throw v6

    .line 602
    .end local v3    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v6    # "ex":Ljavax/net/ssl/SSLException;
    .restart local v5    # "encodedTbsCert":[B
    .restart local v10    # "rdn":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;>;"
    .restart local v11    # "subject":Lorg/apache/harmony/security/x501/Name;
    .restart local v13    # "tbsCert":Lorg/apache/harmony/security/x509/TBSCertificate;
    :cond_2
    new-instance v6, Ljavax/net/ssl/SSLException;

    const-string v16, "Subject CN value tag not found."

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 603
    .restart local v6    # "ex":Ljavax/net/ssl/SSLException;
    const-string v16, "%s Subject:%s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v6}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v11}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    throw v6
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 447
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;->mmbValue:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 451
    .local v0, "result":Z
    :goto_0
    return v0

    .line 447
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesHostName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "aHostName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    const/4 v0, 0x0

    .line 497
    :goto_0
    return v0

    .line 487
    :cond_0
    const/4 v0, 0x0

    .line 488
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;->getValueTag()I

    move-result v1

    .line 489
    .local v1, "tag":I
    const/16 v2, 0x13

    if-ne v1, v2, :cond_1

    .line 490
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;->mmbValue:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv;->verifyPrintableString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 492
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv$MmbFwX509SubjectCnSv;->mmbValue:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwX509HostnameVerifierSv;->verifyNonPrintableString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
