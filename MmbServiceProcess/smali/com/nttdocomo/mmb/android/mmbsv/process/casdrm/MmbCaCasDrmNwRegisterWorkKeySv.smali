.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;
.source "MmbCaCasDrmNwRegisterWorkKeySv.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;",
        ">;"
    }
.end annotation


# instance fields
.field private createKlInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;

.field private post:Lorg/apache/http/client/methods/HttpPost;

.field private pre33SegCommonId:[B

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/DefaultHttpClient;JLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "aClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "aTime"    # J
    .param p4, "aCreateKlInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;
    .param p5, "aUrl"    # Ljava/lang/String;
    .param p6, "aPre33SegCommonId"    # [B

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;J)V

    .line 105
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->createKlInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;

    .line 106
    iput-object p5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->url:Ljava/lang/String;

    .line 107
    iput-object p6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->pre33SegCommonId:[B

    .line 111
    return-void
.end method


# virtual methods
.method abort()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 335
    return-void
.end method

.method asByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p1, "aHex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 236
    .local v0, "bytes":[B
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    :try_start_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 238
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v3, 0x1

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const/high16 v4, -0x3000000

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 246
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    throw v2

    .line 251
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_0
    return-object v0
.end method

.method check([B)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;
    .locals 12
    .param p1, "aResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const v7, -0x2000004

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, "info":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;
    const/16 v5, 0xc

    array-length v6, p1

    if-le v5, v6, :cond_0

    .line 264
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 267
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Response data length error. (%d)"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    array-length v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    throw v0

    .line 271
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->checkResponseMainBody([B)Z

    move-result v5

    if-nez v5, :cond_1

    .line 272
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const v5, -0x2000005

    invoke-direct {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 275
    .restart local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Invalid response main body."

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    throw v0

    .line 279
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_1
    const/4 v5, 0x5

    aget-byte v3, p1, v5

    .line 280
    .local v3, "processingtype":B
    if-eq v10, v3, :cond_2

    .line 281
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const v5, -0x2000006

    invoke-direct {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 284
    .restart local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Invalid processing type: %d (must be %d)"

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    throw v0

    .line 289
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_2
    const/16 v5, 0xa

    aget-byte v4, p1, v5

    .line 290
    .local v4, "resultcode":B
    if-nez v4, :cond_4

    .line 291
    const/16 v5, 0x35

    array-length v6, p1

    if-eq v5, v6, :cond_3

    .line 292
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 295
    .restart local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Response data (OK) length error: %d (must be %d)"

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    array-length v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/16 v7, 0x35

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    throw v0

    .line 299
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_3
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;

    .end local v1    # "info":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;
    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;-><init>()V

    .line 301
    .restart local v1    # "info":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;
    const/16 v5, 0xb

    const/16 v6, 0x15

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    iput-object v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;->mmbReceiverId:[B

    .line 303
    const/16 v5, 0x15

    const/16 v6, 0x35

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    iput-object v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;->mmbCryptInfo:[B

    .line 323
    return-object v1

    .line 305
    :cond_4
    const/16 v5, 0xc

    array-length v6, p1

    if-eq v5, v6, :cond_5

    .line 306
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 309
    .restart local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Response data (NG) length error: %d (must be %d)"

    new-array v6, v11, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    array-length v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/16 v7, 0xc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    throw v0

    .line 314
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_5
    const/16 v5, 0xb

    aget-byte v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->getNgType(B)I

    move-result v2

    .line 315
    .local v2, "ngtype":I
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 317
    .restart local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Received NG response."

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    throw v0
.end method

.method bridge synthetic check([B)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->check([B)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;

    move-result-object v0

    return-object v0
.end method

.method handleRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 183
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->getRequestMainBody()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 186
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 188
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->makeYoyaku(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 190
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->createKlInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;

    iget-object v2, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;->mmbCasClientId:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 192
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->createKlInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;

    iget-object v2, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;->mmbReciverId:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 193
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->pre33SegCommonId:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->asByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 195
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->createKlInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;

    iget-object v2, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;->mmbCryptInfo:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 200
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 201
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->post:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->post:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "Date"

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->getRFC1123CurrentTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 204
    .local v1, "postentity":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 206
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 210
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwRegisterWorkKeySv;->post:Lorg/apache/http/client/methods/HttpPost;

    return-object v2
.end method
