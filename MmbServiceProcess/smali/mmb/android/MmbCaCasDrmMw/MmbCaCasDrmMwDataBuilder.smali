.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwDataBuilder.java"


# direct methods
.method private static varargs buildAuthenticateData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 2
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    .line 159
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 162
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 165
    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 167
    return-object v0
.end method

.method static varargs buildData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 1
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    sparse-switch p0, :sswitch_data_0

    .line 126
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildSimpleData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 44
    :sswitch_0
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildAuthenticateData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 45
    goto :goto_0

    .line 49
    :sswitch_1
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildRegisterKlData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 50
    goto :goto_0

    .line 54
    :sswitch_2
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildUpdateEmmData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 55
    goto :goto_0

    .line 59
    :sswitch_3
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildGetTierInfoData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 60
    goto :goto_0

    .line 64
    :sswitch_4
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildGetLicenseInfoData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 65
    goto :goto_0

    .line 69
    :sswitch_5
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildGetRequestLicenseInfoData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 70
    goto :goto_0

    .line 74
    :sswitch_6
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildRegisterLicenseData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 75
    goto :goto_0

    .line 79
    :sswitch_7
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildDeleteLicenseInfoData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 80
    goto :goto_0

    .line 84
    :sswitch_8
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildDeleteAllLicenseInfoData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 85
    goto :goto_0

    .line 89
    :sswitch_9
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildDeleteInvalidLicenseInfoData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 90
    goto :goto_0

    .line 94
    :sswitch_a
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildRegisterAccumulatedCrIdData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 95
    goto :goto_0

    .line 99
    :sswitch_b
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildDeleteAccumulatedCrIdData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 100
    goto :goto_0

    .line 104
    :sswitch_c
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildSearchAccumulatedCrIdData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 105
    goto :goto_0

    .line 109
    :sswitch_d
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildSecureAccessData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 110
    goto :goto_0

    .line 115
    :sswitch_e
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildRegisterLicenseMaxNumber(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 116
    goto :goto_0

    .line 120
    :sswitch_f
    invoke-static {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->buildRegisterPreviewInfoMaxNumber(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 121
    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6 -> :sswitch_2
        0x8 -> :sswitch_3
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xc -> :sswitch_6
        0xd -> :sswitch_7
        0xe -> :sswitch_8
        0xf -> :sswitch_9
        0x11 -> :sswitch_a
        0x12 -> :sswitch_b
        0x1d -> :sswitch_d
        0x22 -> :sswitch_c
        0x61 -> :sswitch_e
        0x62 -> :sswitch_f
    .end sparse-switch
.end method

.method private static varargs buildDeleteAccumulatedCrIdData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 5
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    .line 476
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 479
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 482
    const/4 v4, 0x0

    aget-object v4, p1, v4

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 483
    .local v1, "crId":[B
    array-length v4, v1

    add-int/lit8 v4, v4, 0x4

    new-array v3, v4, [B

    .line 484
    .local v3, "value":[B
    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 485
    .local v0, "bb":Ljava/nio/ByteBuffer;
    array-length v4, v1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 486
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 487
    iput-object v3, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 489
    return-object v2
.end method

.method private static varargs buildDeleteAllLicenseInfoData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 7
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 383
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 386
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 390
    aget-object v5, p1, v6

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 391
    .local v3, "entityId":B
    const/4 v5, 0x1

    aget-object v5, p1, v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    .line 392
    .local v0, "authority":[B
    if-nez v0, :cond_0

    .line 393
    const-string v5, "null == authority"

    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 394
    const/4 v5, 0x5

    new-array v4, v5, [B

    .line 395
    .local v4, "value":[B
    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 396
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 397
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 405
    :goto_0
    iput-object v4, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 407
    return-object v2

    .line 399
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v4    # "value":[B
    :cond_0
    array-length v5, v0

    add-int/lit8 v5, v5, 0x5

    new-array v4, v5, [B

    .line 400
    .restart local v4    # "value":[B
    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 401
    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 402
    array-length v5, v0

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 403
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private static varargs buildDeleteInvalidLicenseInfoData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 7
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 419
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 422
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 425
    const/4 v5, 0x0

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 426
    .local v3, "entityId":B
    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 427
    .local v1, "cal":Ljava/util/Calendar;
    aget-object v5, p1, v6

    check-cast v5, Ljava/util/Date;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 428
    const/16 v5, 0x8

    new-array v4, v5, [B

    .line 429
    .local v4, "value":[B
    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 430
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 431
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-short v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 432
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 433
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 434
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 435
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 436
    const/16 v5, 0xd

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 437
    iput-object v4, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 439
    return-object v2
.end method

.method private static varargs buildDeleteLicenseInfoData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 6
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    .line 356
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 359
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 362
    const/4 v5, 0x0

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 363
    .local v3, "entityId":B
    const/4 v5, 0x1

    aget-object v5, p1, v5

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 364
    .local v1, "crId":[B
    array-length v5, v1

    add-int/lit8 v5, v5, 0x5

    new-array v4, v5, [B

    .line 365
    .local v4, "value":[B
    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 366
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 367
    array-length v5, v1

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 368
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 369
    iput-object v4, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 371
    return-object v2
.end method

.method private static varargs buildGetLicenseInfoData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 6
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    .line 267
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 270
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 273
    const/4 v5, 0x0

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 274
    .local v3, "entityId":B
    const/4 v5, 0x1

    aget-object v5, p1, v5

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 275
    .local v1, "crId":[B
    array-length v5, v1

    add-int/lit8 v5, v5, 0x5

    new-array v4, v5, [B

    .line 276
    .local v4, "value":[B
    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 277
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 278
    array-length v5, v1

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 279
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 280
    iput-object v4, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 282
    return-object v2
.end method

.method private static varargs buildGetRequestLicenseInfoData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 8
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    .line 294
    new-instance v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 297
    .local v3, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 300
    const/4 v6, 0x0

    aget-object v6, p1, v6

    check-cast v6, [B

    move-object v2, v6

    check-cast v2, [B

    .line 301
    .local v2, "crId":[B
    const/4 v6, 0x1

    aget-object v6, p1, v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .line 302
    .local v0, "areaCode":[B
    const/4 v6, 0x2

    aget-object v6, p1, v6

    check-cast v6, [B

    move-object v4, v6

    check-cast v4, [B

    .line 303
    .local v4, "msgId":[B
    array-length v6, v2

    add-int/lit8 v6, v6, 0x4

    array-length v7, v0

    add-int/2addr v6, v7

    array-length v7, v4

    add-int/2addr v6, v7

    new-array v5, v6, [B

    .line 304
    .local v5, "value":[B
    invoke-static {v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 305
    .local v1, "bb":Ljava/nio/ByteBuffer;
    array-length v6, v2

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 306
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 307
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 308
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 309
    iput-object v5, v3, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 311
    return-object v3
.end method

.method private static varargs buildGetTierInfoData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 5
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    .line 243
    new-instance v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 246
    .local v1, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 249
    const/4 v4, 0x0

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 250
    .local v2, "entityId":B
    const/4 v4, 0x1

    new-array v3, v4, [B

    .line 251
    .local v3, "value":[B
    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 252
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 253
    iput-object v3, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 255
    return-object v1
.end method

.method private static varargs buildRegisterAccumulatedCrIdData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 5
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    .line 451
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 454
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 457
    const/4 v4, 0x0

    aget-object v4, p1, v4

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 458
    .local v1, "crId":[B
    array-length v4, v1

    add-int/lit8 v4, v4, 0x4

    new-array v3, v4, [B

    .line 459
    .local v3, "value":[B
    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 460
    .local v0, "bb":Ljava/nio/ByteBuffer;
    array-length v4, v1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 461
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 462
    iput-object v3, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 464
    return-object v2
.end method

.method private static varargs buildRegisterKlData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 8
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    .line 179
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 182
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 185
    const/4 v7, 0x0

    aget-object v7, p1, v7

    check-cast v7, [B

    move-object v5, v7

    check-cast v5, [B

    .line 188
    .local v5, "receiverId":[B
    const/4 v7, 0x1

    aget-object v7, p1, v7

    invoke-static {v7}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 189
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v1, 0x0

    .line 190
    .local v1, "cryptAllLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 191
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    array-length v7, v7

    add-int/2addr v1, v7

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    :cond_0
    array-length v7, v5

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v1

    new-array v6, v7, [B

    .line 196
    .local v6, "value":[B
    invoke-static {v6}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 197
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 198
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 199
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 200
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 202
    :cond_1
    iput-object v6, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 204
    return-object v2
.end method

.method private static varargs buildRegisterLicenseData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 7
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    .line 323
    new-instance v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 326
    .local v1, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 329
    const/4 v5, 0x0

    aget-object v2, p1, v5

    check-cast v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;

    .line 330
    .local v2, "info":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;
    iget-object v5, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCrId:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x5

    iget-object v6, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCasClientId:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iget-object v6, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbReceiverId:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iget-object v6, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbMessageId:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iget-object v6, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCryptInfo:[B

    array-length v6, v6

    add-int v3, v5, v6

    .line 333
    .local v3, "length":I
    new-array v4, v3, [B

    .line 334
    .local v4, "value":[B
    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 335
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-byte v5, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbEntityId:B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 336
    iget-object v5, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCrId:[B

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 337
    iget-object v5, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCrId:[B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 338
    iget-object v5, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCasClientId:[B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 339
    iget-object v5, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbReceiverId:[B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 340
    iget-object v5, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbMessageId:[B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 341
    iget-object v5, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;->mmbCryptInfo:[B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 342
    iput-object v4, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 344
    return-object v1
.end method

.method private static varargs buildRegisterLicenseMaxNumber(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 6
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    .line 557
    new-instance v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 560
    .local v1, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 563
    const/4 v5, 0x0

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 565
    .local v2, "entityId":B
    const/4 v3, 0x1

    .line 566
    .local v3, "length":I
    new-array v4, v3, [B

    .line 567
    .local v4, "value":[B
    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 568
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 569
    iput-object v4, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 571
    return-object v1
.end method

.method private static varargs buildRegisterPreviewInfoMaxNumber(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 6
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    .line 583
    new-instance v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 586
    .local v1, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 589
    const/4 v5, 0x0

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 591
    .local v2, "entityId":B
    const/4 v3, 0x1

    .line 592
    .local v3, "length":I
    new-array v4, v3, [B

    .line 593
    .local v4, "value":[B
    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 594
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 595
    iput-object v4, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 597
    return-object v1
.end method

.method private static varargs buildSearchAccumulatedCrIdData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 5
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    .line 501
    new-instance v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 504
    .local v2, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 507
    const/4 v4, 0x0

    aget-object v4, p1, v4

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 508
    .local v1, "crId":[B
    array-length v4, v1

    add-int/lit8 v4, v4, 0x4

    new-array v3, v4, [B

    .line 509
    .local v3, "value":[B
    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 510
    .local v0, "bb":Ljava/nio/ByteBuffer;
    array-length v4, v1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 511
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 512
    iput-object v3, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 514
    return-object v2
.end method

.method private static varargs buildSecureAccessData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 7
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 526
    new-instance v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 529
    .local v1, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 532
    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 533
    .local v2, "onoff":Z
    new-array v3, v5, [B

    .line 534
    .local v3, "value":[B
    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 535
    .local v0, "bb":Ljava/nio/ByteBuffer;
    if-ne v2, v5, :cond_0

    .line 536
    const-string v4, "onoff == true"

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 542
    :goto_0
    iput-object v3, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 544
    return-object v1

    .line 539
    :cond_0
    const-string v4, "onoff == false"

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private static varargs buildSimpleData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 1
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    .line 142
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 145
    .local v0, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 147
    return-object v0
.end method

.method private static varargs buildUpdateEmmData(B[Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .locals 6
    .param p0, "aType"    # B
    .param p1, "aData"    # [Ljava/lang/Object;

    .prologue
    .line 216
    new-instance v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    invoke-direct {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;-><init>()V

    .line 219
    .local v1, "data":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {p0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V

    .line 222
    const/4 v5, 0x0

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 223
    .local v3, "entityId":B
    const/4 v5, 0x1

    aget-object v5, p1, v5

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    .line 224
    .local v2, "emmData":[B
    array-length v5, v2

    add-int/lit8 v5, v5, 0x5

    new-array v4, v5, [B

    .line 225
    .local v4, "value":[B
    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataBuilder;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 226
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 227
    array-length v5, v2

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 228
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 229
    iput-object v4, v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    .line 231
    return-object v1
.end method

.method protected static getByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "aBuffer"    # [B

    .prologue
    .line 621
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 622
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 624
    return-object v0
.end method

.method protected static setType(BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)V
    .locals 2
    .param p0, "aType"    # B
    .param p1, "aData"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .prologue
    .line 609
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mType:[B

    .line 610
    iget-object v0, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mType:[B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 611
    return-void
.end method
