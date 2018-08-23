.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;
.source "MmbCaCasDrmNwPublishLicenseSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv",
        "<",
        "Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private licenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;

.field private post:Lorg/apache/http/client/methods/HttpPost;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/DefaultHttpClient;JLcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;)V
    .locals 0
    .param p1, "aClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "aTime"    # J
    .param p4, "aLicenseInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;J)V

    .line 92
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->licenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;

    .line 96
    return-void
.end method


# virtual methods
.method abort()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 324
    return-void
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
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->check([B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;

    move-result-object v0

    return-object v0
.end method

.method check([B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;
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

    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;
    const/16 v5, 0xc

    array-length v6, p1

    if-le v5, v6, :cond_0

    .line 245
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 248
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

    .line 249
    throw v0

    .line 252
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->checkResponseMainBody([B)Z

    move-result v5

    if-nez v5, :cond_1

    .line 253
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const v5, -0x2000005

    invoke-direct {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 256
    .restart local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Invalid response main body."

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    throw v0

    .line 260
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_1
    const/4 v5, 0x5

    aget-byte v3, p1, v5

    .line 261
    .local v3, "processingtype":B
    const/4 v5, 0x5

    if-eq v5, v3, :cond_2

    .line 262
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const v5, -0x2000006

    invoke-direct {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 265
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

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    throw v0

    .line 270
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_2
    const/16 v5, 0xa

    aget-byte v4, p1, v5

    .line 271
    .local v4, "resultcode":B
    if-nez v4, :cond_4

    .line 272
    const/16 v5, 0x2d7

    array-length v6, p1

    if-eq v5, v6, :cond_3

    .line 273
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 276
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

    const/16 v7, 0x2d7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    throw v0

    .line 280
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_3
    new-instance v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;

    .end local v1    # "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;
    invoke-direct {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;-><init>()V

    .line 282
    .restart local v1    # "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;
    const/16 v5, 0xb

    aget-byte v5, p1, v5

    iput-byte v5, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbEntityId:B

    .line 284
    const/16 v5, 0xc

    const/16 v6, 0x16

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    iput-object v5, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCasClientId:[B

    .line 286
    const/16 v5, 0x16

    const/16 v6, 0x20

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    iput-object v5, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbReceiverId:[B

    .line 288
    const/16 v5, 0x20

    const/16 v6, 0x28

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    iput-object v5, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbMessageId:[B

    .line 290
    const/16 v5, 0x28

    const/16 v6, 0x127

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->shorterCrid([B)[B

    move-result-object v5

    iput-object v5, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCrId:[B

    .line 292
    const/16 v5, 0x127

    const/16 v6, 0x2d7

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    iput-object v5, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCryptInfo:[B

    .line 312
    return-object v1

    .line 294
    :cond_4
    const/16 v5, 0x23c

    array-length v6, p1

    if-eq v5, v6, :cond_5

    const/16 v5, 0xc

    array-length v6, p1

    if-eq v5, v6, :cond_5

    .line 295
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 298
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

    const/16 v7, 0x23c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    throw v0

    .line 303
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :cond_5
    const/16 v5, 0xb

    aget-byte v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->getNgType(B)I

    move-result v2

    .line 304
    .local v2, "ngtype":I
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 306
    .restart local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v5, "[%d] Received NG response."

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    throw v0
.end method

.method handleRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 189
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->getRequestMainBody()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 192
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 194
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->makeYoyaku(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 196
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->licenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;

    iget-byte v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbEntityid:B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 198
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->licenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbLicenseInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;

    iget-object v4, v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbCasClientId:[B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 200
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->licenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbLicenseInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;

    iget-object v4, v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbReciverId:[B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 202
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->licenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbAreaCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 203
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->licenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbLicenseInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;

    iget-byte v4, v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbAccumulatedFlag:B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 205
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->licenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbMessageId:[B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 207
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->licenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbCrid:Ljava/lang/String;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->toByte(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v5, 0xff

    invoke-virtual {p0, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->longerCrid([BI)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 211
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->licenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbLicenseInfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;

    iget-object v4, v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbCryptInfo:[B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->licenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv$MmbCaCasDrmNwPublishLicenseDataSv;->mmbUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 222
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->post:Lorg/apache/http/client/methods/HttpPost;

    const-string v5, "Connection"

    const-string v6, "Keep-Alive"

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->post:Lorg/apache/http/client/methods/HttpPost;

    const-string v5, "Date"

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->getRFC1123CurrentTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 225
    .local v3, "postentity":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v4, "application/octet-stream"

    invoke-virtual {v3, v4}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 226
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v4, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 227
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 231
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPublishLicenseSv;->post:Lorg/apache/http/client/methods/HttpPost;

    return-object v4

    .line 212
    .end local v3    # "postentity":Lorg/apache/http/entity/ByteArrayEntity;
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    iget v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-direct {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 215
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 216
    throw v2
.end method
