.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwDataParser.java"


# static fields
.field private static final SIZE_AUTH_DATA:I = 0x20

.field private static final SIZE_CAS_CLIENT_ID:I = 0xa

.field private static final SIZE_LICENSE_ID:I = 0x8

.field private static final SIZE_RECEIVER_ID:I = 0xa

.field private static final SIZE_YMD:I = 0x2

.field private static final SIZE_YMDHMS:I = 0x5


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "aBuffer"    # [B

    .prologue
    .line 473
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 474
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 476
    return-object v0
.end method

.method private static parseAuthenticateData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .locals 7
    .param p0, "aData"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x20

    .line 138
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 139
    .local v1, "bb":Ljava/nio/ByteBuffer;
    const/4 v2, -0x1

    .line 140
    .local v2, "casRes":I
    const/4 v3, 0x0

    .line 142
    .local v3, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 143
    const/4 v2, 0x0

    .line 144
    new-array v0, v5, [B

    .line 145
    .local v0, "authData":[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 147
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    .end local v3    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-direct {v3, v2, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 156
    .end local v0    # "authData":[B
    .restart local v3    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    :goto_0
    return-object v3

    .line 149
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 150
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 151
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    .end local v3    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-direct {v3, v2, v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .restart local v3    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    goto :goto_0

    .line 154
    :cond_1
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    .end local v3    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    invoke-direct {v3, v2, v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .restart local v3    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    goto :goto_0
.end method

.method private static parseCreateKlData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .locals 8
    .param p0, "aData"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .prologue
    const/16 v5, 0xa

    .line 168
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 169
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 170
    .local v1, "casRes":I
    if-eqz v1, :cond_0

    .line 171
    const-string v4, "casRes == %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 172
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 186
    :goto_0
    return-object v2

    .line 175
    :cond_0
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;

    invoke-direct {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;-><init>()V

    .line 176
    .local v3, "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;
    new-array v4, v5, [B

    iput-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;->mmbCasClientId:[B

    .line 177
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;->mmbCasClientId:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 178
    new-array v4, v5, [B

    iput-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;->mmbReciverId:[B

    .line 179
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;->mmbReciverId:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 180
    const/16 v4, 0x40

    new-array v4, v4, [B

    iput-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;->mmbCryptInfo:[B

    .line 181
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;->mmbCryptInfo:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 183
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    invoke-direct {v2, v1, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 186
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    goto :goto_0
.end method

.method static parseData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .locals 3
    .param p0, "aData"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mType:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 104
    invoke-static {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->parseSimpleData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 49
    :sswitch_0
    invoke-static {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->parseAuthenticateData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 50
    goto :goto_0

    .line 54
    :sswitch_1
    invoke-static {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->parseCreateKlData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 55
    goto :goto_0

    .line 59
    :sswitch_2
    invoke-static {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->parseGetRequestEmmInfoData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 60
    goto :goto_0

    .line 64
    :sswitch_3
    invoke-static {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->parseGetTierInfoData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 65
    goto :goto_0

    .line 69
    :sswitch_4
    invoke-static {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->parseGetLicenseCountData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 70
    goto :goto_0

    .line 74
    :sswitch_5
    invoke-static {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->parseGetLicenseInfoData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 75
    goto :goto_0

    .line 79
    :sswitch_6
    invoke-static {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->parseGetRequestLicenseInfoData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 80
    goto :goto_0

    .line 84
    :sswitch_7
    invoke-static {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->parseDeleteInvalidLicenseInfoData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 85
    goto :goto_0

    .line 89
    :sswitch_8
    invoke-static {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->parseGetAccumulatedCrIdCountData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 90
    goto :goto_0

    .line 94
    :sswitch_9
    invoke-static {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->parseSearchAccumulatedCrIdData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 95
    goto :goto_0

    .line 99
    :sswitch_a
    invoke-static {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->parseGetCaSystemId(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v0

    .line 100
    goto :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x1e -> :sswitch_a
        0x22 -> :sswitch_9
    .end sparse-switch
.end method

.method private static parseDeleteInvalidLicenseInfoData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .locals 12
    .param p0, "aData"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .prologue
    .line 365
    iget-object v8, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    invoke-static {v8}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 366
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 367
    .local v1, "casRes":I
    if-eqz v1, :cond_0

    .line 368
    const-string v8, "casRes == %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 369
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    const/4 v8, 0x0

    invoke-direct {v3, v1, v8}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 389
    :goto_0
    return-object v3

    .line 372
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;>;"
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 374
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 375
    new-instance v5, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;

    invoke-direct {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;-><init>()V

    .line 376
    .local v5, "invlic":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;
    const/16 v8, 0x8

    new-array v8, v8, [B

    iput-object v8, v5, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;->mmbLicenseId:[B

    .line 377
    iget-object v8, v5, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;->mmbLicenseId:[B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 379
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 381
    .local v7, "size":I
    new-array v8, v7, [B

    iput-object v8, v5, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;->mmbCrId:[B

    .line 382
    iget-object v8, v5, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;->mmbCrId:[B

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 383
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 386
    .end local v5    # "invlic":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;
    .end local v7    # "size":I
    :cond_1
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    invoke-direct {v3, v1, v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 389
    .local v3, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    goto :goto_0
.end method

.method private static parseGetAccumulatedCrIdCountData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .locals 8
    .param p0, "aData"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .prologue
    .line 401
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 402
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 403
    .local v1, "casRes":I
    if-eqz v1, :cond_0

    .line 404
    const-string v4, "casRes == %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 405
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 413
    :goto_0
    return-object v3

    .line 408
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 410
    .local v2, "count":Ljava/lang/Integer;
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    invoke-direct {v3, v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 413
    .local v3, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    goto :goto_0
.end method

.method private static parseGetCaSystemId(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .locals 8
    .param p0, "aData"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .prologue
    .line 449
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 450
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 451
    .local v1, "casRes":I
    if-eqz v1, :cond_0

    .line 452
    const-string v4, "casRes == %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 453
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 461
    :goto_0
    return-object v2

    .line 456
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 458
    .local v3, "id":Ljava/lang/Integer;
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    invoke-direct {v2, v1, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 461
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    goto :goto_0
.end method

.method private static parseGetLicenseCountData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .locals 8
    .param p0, "aData"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .prologue
    .line 258
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 259
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 260
    .local v1, "casRes":I
    if-eqz v1, :cond_0

    .line 261
    const-string v4, "casRes == %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 262
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 270
    :goto_0
    return-object v3

    .line 265
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 267
    .local v2, "count":Ljava/lang/Integer;
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    invoke-direct {v3, v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 270
    .local v3, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    goto :goto_0
.end method

.method private static parseGetLicenseInfoData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .locals 15
    .param p0, "aData"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .prologue
    const/16 v14, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v13, 0x5

    const v12, 0xffff

    .line 282
    iget-object v6, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 283
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 284
    .local v1, "casRes":I
    if-eqz v1, :cond_0

    .line 285
    const-string v6, "casRes == %d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 286
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 322
    :goto_0
    return-object v2

    .line 289
    :cond_0
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;

    invoke-direct {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;-><init>()V

    .line 290
    .local v3, "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    new-array v6, v14, [B

    iput-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbLicenseId:[B

    .line 291
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbLicenseId:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 292
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    iput-byte v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbVersionNo:B

    .line 294
    new-instance v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    invoke-direct {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;-><init>()V

    iput-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    .line 295
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    new-array v7, v13, [B

    iput-object v7, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbStartDate:[B

    .line 296
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    iget-object v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbStartDate:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 297
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    new-array v7, v13, [B

    iput-object v7, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbPeriodDate:[B

    .line 298
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    iget-object v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbPeriodDate:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 299
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    int-to-long v8, v7

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    iput-wide v8, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbSpanSec:J

    .line 300
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    and-int/2addr v7, v12

    iput v7, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbLimitCount:I

    .line 301
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    and-int/2addr v7, v12

    iput v7, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbLimitCountInfo:I

    .line 302
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    iput-byte v7, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbCanTrickPlay:B

    .line 303
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbDisableTrickPlaySpan:[B

    .line 304
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    iget-object v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbDisableTrickPlaySpan:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 305
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    new-array v7, v14, [B

    iput-object v7, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbOutputControlInfo:[B

    .line 306
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    iget-object v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbOutputControlInfo:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 307
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    and-int/2addr v7, v12

    iput v7, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbRatingInfo:I

    .line 308
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    const/16 v7, 0x32

    new-array v7, v7, [B

    iput-object v7, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbReserve:[B

    .line 309
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbRmpi:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;

    iget-object v6, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRmpiInfo;->mmbReserve:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 311
    new-instance v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;

    invoke-direct {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;-><init>()V

    iput-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbUseState:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;

    .line 312
    iget-object v6, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbUseState:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    if-nez v7, :cond_1

    :goto_1
    iput-boolean v4, v6, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbUseFlag:Z

    .line 313
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbUseState:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;

    new-array v5, v13, [B

    iput-object v5, v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbUseStartDate:[B

    .line 314
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbUseState:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;

    iget-object v4, v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbUseStartDate:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 315
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbUseState:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    and-int/2addr v5, v12

    iput v5, v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbUseCount:I

    .line 316
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbUseState:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;

    const/16 v5, 0x15

    new-array v5, v5, [B

    iput-object v5, v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbReserve:[B

    .line 317
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;->mmbUseState:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;

    iget-object v4, v4, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUseStateInfo;->mmbReserve:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 319
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    invoke-direct {v2, v1, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 322
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    goto/16 :goto_0

    .end local v2    # "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    :cond_1
    move v4, v5

    .line 312
    goto :goto_1
.end method

.method private static parseGetRequestEmmInfoData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .locals 8
    .param p0, "aData"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .prologue
    const/16 v5, 0xa

    .line 198
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 199
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 200
    .local v1, "casRes":I
    if-eqz v1, :cond_0

    .line 201
    const-string v4, "casRes == %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 202
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 214
    :goto_0
    return-object v2

    .line 205
    :cond_0
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;

    invoke-direct {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;-><init>()V

    .line 206
    .local v3, "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;
    new-array v4, v5, [B

    iput-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;->mmbCasClientId:[B

    .line 207
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;->mmbCasClientId:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 208
    new-array v4, v5, [B

    iput-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;->mmbReciverId:[B

    .line 209
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;->mmbReciverId:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 211
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    invoke-direct {v2, v1, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 214
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    goto :goto_0
.end method

.method private static parseGetRequestLicenseInfoData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .locals 8
    .param p0, "aData"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .prologue
    const/16 v5, 0xa

    .line 334
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 335
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 336
    .local v1, "casRes":I
    if-eqz v1, :cond_0

    .line 337
    const-string v4, "casRes == %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 338
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 353
    :goto_0
    return-object v2

    .line 341
    :cond_0
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;

    invoke-direct {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;-><init>()V

    .line 342
    .local v3, "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;
    new-array v4, v5, [B

    iput-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbCasClientId:[B

    .line 343
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbCasClientId:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 344
    new-array v4, v5, [B

    iput-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbReciverId:[B

    .line 345
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbReciverId:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 346
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbAccumulatedFlag:B

    .line 347
    const/16 v4, 0x130

    new-array v4, v4, [B

    iput-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbCryptInfo:[B

    .line 348
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;->mmbCryptInfo:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 350
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    invoke-direct {v2, v1, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 353
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    goto :goto_0
.end method

.method private static parseGetTierInfoData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .locals 8
    .param p0, "aData"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .prologue
    .line 226
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 227
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 228
    .local v1, "casRes":I
    if-eqz v1, :cond_0

    .line 229
    const-string v4, "casRes == %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 230
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 246
    :goto_0
    return-object v2

    .line 233
    :cond_0
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;

    invoke-direct {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;-><init>()V

    .line 234
    .local v3, "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbEntityId:B

    .line 235
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    iput v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbUpdateNo:I

    .line 236
    const/4 v4, 0x2

    new-array v4, v4, [B

    iput-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbLimit:[B

    .line 237
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbLimit:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 238
    const/16 v4, 0x10

    new-array v4, v4, [B

    iput-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbTierbit:[B

    .line 239
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbTierbit:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 240
    const/16 v4, 0xa6

    new-array v4, v4, [B

    iput-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbExtTier:[B

    .line 241
    iget-object v4, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;->mmbExtTier:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 243
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    invoke-direct {v2, v1, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 246
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    goto :goto_0
.end method

.method private static parseSearchAccumulatedCrIdData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .locals 8
    .param p0, "aData"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .prologue
    .line 425
    iget-object v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 426
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 427
    .local v1, "casRes":I
    if-eqz v1, :cond_0

    .line 428
    const-string v4, "casRes == %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 429
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 437
    :goto_0
    return-object v2

    .line 432
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 434
    .local v3, "flg":B
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 437
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    goto :goto_0
.end method

.method private static parseSimpleData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .locals 4
    .param p0, "aData"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .prologue
    .line 120
    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 121
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 123
    .local v1, "casRes":I
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;-><init>(ILjava/lang/Object;)V

    .line 126
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    return-object v2
.end method
