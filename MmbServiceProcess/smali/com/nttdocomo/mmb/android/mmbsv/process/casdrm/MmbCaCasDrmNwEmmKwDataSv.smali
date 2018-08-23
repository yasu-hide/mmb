.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;
.source "MmbCaCasDrmNwEmmKwDataSv.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;",
        ">;"
    }
.end annotation


# instance fields
.field private emmInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;

.field private entityId:B

.field private post:Lorg/apache/http/client/methods/HttpPost;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/DefaultHttpClient;JLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;BLjava/lang/String;)V
    .locals 0
    .param p1, "aClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "aTime"    # J
    .param p4, "aEmmInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;
    .param p5, "aEntityId"    # B
    .param p6, "aUrl"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;J)V

    .line 103
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->emmInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;

    .line 104
    iput-byte p5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->entityId:B

    .line 105
    iput-object p6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->url:Ljava/lang/String;

    .line 109
    return-void
.end method


# virtual methods
.method abort()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 290
    return-void
.end method

.method check([B)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
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

    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, "info":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    const/16 v5, 0xc

    array-length v6, p1

    if-le v5, v6, :cond_0

    .line 219
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 222
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

    .line 223
    throw v0

    .line 226
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->checkResponseMainBody([B)Z

    move-result v5

    if-nez v5, :cond_1

    .line 227
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const v5, -0x2000005

    invoke-direct {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 230
    .restart local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Invalid response main body."

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    throw v0

    .line 234
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_1
    const/4 v5, 0x5

    aget-byte v3, p1, v5

    .line 235
    .local v3, "processingtype":B
    const/4 v5, 0x4

    if-eq v5, v3, :cond_2

    .line 236
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const v5, -0x2000006

    invoke-direct {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 239
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

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    throw v0

    .line 244
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_2
    const/16 v5, 0xa

    aget-byte v4, p1, v5

    .line 245
    .local v4, "resultcode":B
    if-nez v4, :cond_4

    .line 246
    const/16 v5, 0x44

    array-length v6, p1

    if-eq v5, v6, :cond_3

    .line 247
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 250
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

    const/16 v7, 0x44

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    throw v0

    .line 254
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_3
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;

    .end local v1    # "info":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;-><init>()V

    .line 256
    .restart local v1    # "info":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    const/16 v5, 0xb

    const/16 v6, 0x44

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    iput-object v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;->mmbEmmData:[B

    .line 258
    iget-byte v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->entityId:B

    iput-byte v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;->mmbEntityId:B

    .line 278
    return-object v1

    .line 260
    :cond_4
    const/16 v5, 0xc

    array-length v6, p1

    if-eq v5, v6, :cond_5

    .line 261
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 264
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

    .line 266
    throw v0

    .line 269
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_5
    const/16 v5, 0xb

    aget-byte v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->getNgType(B)I

    move-result v2

    .line 270
    .local v2, "ngtype":I
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 272
    .restart local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Received NG response."

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
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
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->check([B)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;

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
    .line 161
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->getRequestMainBody()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 182
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 184
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->makeYoyaku(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 186
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->emmInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;

    iget-object v2, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;->mmbCasClientId:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 188
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->emmInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;

    iget-object v2, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;->mmbReciverId:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 190
    iget-byte v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->entityId:B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 196
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 197
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->post:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->post:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "Date"

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->getRFC1123CurrentTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 200
    .local v1, "postentity":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 201
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 202
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 206
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwEmmKwDataSv;->post:Lorg/apache/http/client/methods/HttpPost;

    return-object v2
.end method
