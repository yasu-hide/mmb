.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;
.super Ljava/lang/Object;
.source "MmbStSectionFunctionSv.java"


# static fields
.field private static final BROADCASTER_ID_DEFAULT:I = 0x1

.field private static final DEFAULT_AUDIO_COMPONENT:S = 0x10s

.field private static final DEFAULT_VIDEO_COMPONENT:S = 0x0s

.field private static final EIT_F:I = 0x1

.field private static final EIT_P:I = 0x0

.field private static final PMT_INVALID_DATA:C = '\u00ff'

.field private static final PMT_VALID_DATA_FLAG:C = '\u0001'

.field private static final SECOND_AUDIO_COMPONENT:S = 0x11s

.field private static final SERVICE_TYPE_NON:S = -0x1s

.field private static final STREAM_TYPE_AUDIO:S = 0xfs


# instance fields
.field private bitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;

.field private eitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;

.field private mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

.field private nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

.field private pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

.field private sdtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;


# direct methods
.method constructor <init>(Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;)V
    .locals 1
    .param p1, "aMwInstance"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .line 139
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .line 140
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    .line 141
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    .line 142
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->bitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;

    .line 143
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->eitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;

    .line 144
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->sdtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;

    .line 148
    return-void
.end method

.method private checkCurrentProgramInfo(JLmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;)Z
    .locals 11
    .param p1, "aSecureClock"    # J
    .param p3, "aEit"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;

    .prologue
    .line 252
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;-><init>()V

    .line 253
    .local v1, "timefunc":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;
    iget-wide v4, p3, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mStart_time:J

    iget v6, p3, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mDuration:I

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->checkOnAir(JJI)J

    move-result-wide v8

    .line 254
    .local v8, "onair":J
    const/4 v0, 0x0

    .line 257
    .local v0, "ret":Z
    const-wide/16 v2, 0x2

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 265
    :cond_0
    return v0
.end method

.method private checkEitAddList(IZJLmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;)Z
    .locals 15
    .param p1, "aPFAterFlag"    # I
    .param p2, "aEitPSet"    # Z
    .param p3, "aSecureClock"    # J
    .param p5, "aEit"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;

    .prologue
    .line 285
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;-><init>()V

    .line 286
    .local v3, "timefunc":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;
    move-object/from16 v0, p5

    iget-wide v6, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mStart_time:J

    move-object/from16 v0, p5

    iget v8, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mDuration:I

    move-wide/from16 v4, p3

    invoke-virtual/range {v3 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->checkOnAir(JJI)J

    move-result-wide v10

    .line 287
    .local v10, "onair":J
    const/4 v2, 0x0

    .line 290
    .local v2, "ret":Z
    const-wide/16 v4, 0x2

    cmp-long v4, v4, v10

    if-nez v4, :cond_1

    .line 291
    const/4 v2, 0x1

    .line 333
    :cond_0
    :goto_0
    return v2

    .line 294
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 318
    const-wide/16 v4, 0x1

    cmp-long v4, v4, v10

    if-nez v4, :cond_0

    .line 320
    move-object/from16 v0, p5

    iget-wide v4, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mStart_time:J

    move-object/from16 v0, p5

    iget v6, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mDuration:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->getEventMSec(JI)J

    move-result-wide v12

    .line 322
    .local v12, "timecheck":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v12

    if-gez v4, :cond_0

    .line 323
    const/4 v2, 0x1

    goto :goto_0

    .line 296
    .end local v12    # "timecheck":J
    :pswitch_0
    const-wide/16 v4, 0x1

    cmp-long v4, v4, v10

    if-nez v4, :cond_0

    .line 298
    const/4 v2, 0x1

    goto :goto_0

    .line 304
    :pswitch_1
    const-wide/16 v4, -0x3e9

    cmp-long v4, v4, v10

    if-nez v4, :cond_2

    .line 306
    if-eqz p2, :cond_0

    .line 307
    const/4 v2, 0x1

    goto :goto_0

    .line 309
    :cond_2
    const-wide/16 v4, 0x1

    cmp-long v4, v4, v10

    if-nez v4, :cond_0

    .line 311
    const/4 v2, 0x1

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private convertToUniCode([SC)Ljava/lang/String;
    .locals 7
    .param p1, "aStream"    # [S
    .param p2, "aStreamLength"    # C

    .prologue
    const/4 v6, 0x0

    .line 1958
    const/4 v1, 0x0

    .line 1960
    .local v1, "convertedename":Ljava/lang/String;
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1961
    :cond_0
    const-string v5, "aStream is null or aStreamLength is zero"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    .line 1987
    .end local v1    # "convertedename":Ljava/lang/String;
    .local v2, "convertedename":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1970
    .end local v2    # "convertedename":Ljava/lang/String;
    .restart local v1    # "convertedename":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->convertTos16([SC)[B

    move-result-object v0

    .line 1972
    .local v0, "bytearray":[B
    const-string v5, "X-ARIB-TR-B33"

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetProviderSv;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    .line 1974
    .local v3, "dec":Ljava/nio/charset/CharsetDecoder;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .end local v0    # "bytearray":[B
    .end local v3    # "dec":Ljava/nio/charset/CharsetDecoder;
    :goto_1
    move-object v2, v1

    .line 1987
    .end local v1    # "convertedename":Ljava/lang/String;
    .restart local v2    # "convertedename":Ljava/lang/String;
    goto :goto_0

    .line 1976
    .end local v2    # "convertedename":Ljava/lang/String;
    .restart local v1    # "convertedename":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1977
    .local v4, "exception":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    .line 1978
    const-string v5, "IndexOutOfBoundsException"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1979
    .end local v4    # "exception":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v4

    .line 1980
    .local v4, "exception":Ljava/nio/charset/CharacterCodingException;
    const/4 v1, 0x0

    .line 1981
    const-string v5, "CharacterCodingException"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private convertTos16([SC)[B
    .locals 3
    .param p1, "aStream"    # [S
    .param p2, "aStreamLength"    # C

    .prologue
    .line 1928
    new-array v0, p2, [B

    .line 1930
    .local v0, "bytearray":[B
    const/4 v1, 0x0

    .local v1, "loopcnt":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 1931
    aget-short v2, p1, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1930
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1937
    :cond_0
    return-object v0
.end method

.method private getBit()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 753
    new-instance v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;

    invoke-direct {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;-><init>()V

    .line 758
    .local v0, "bit":Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2, v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->getBit(Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;)I

    move-result v1

    .line 764
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 765
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v2, v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v2

    .line 768
    :cond_0
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->bitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;

    .line 774
    return-void
.end method

.method private getEit()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 831
    new-instance v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;

    invoke-direct {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;-><init>()V

    .line 836
    .local v0, "eit":Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2, v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->getEit(Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;)I

    move-result v1

    .line 842
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 843
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v2, v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v2

    .line 846
    :cond_0
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->eitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;

    .line 852
    return-void
.end method

.method private getEventInfo(Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;
    .locals 11
    .param p1, "aEitdata"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 399
    if-nez p1, :cond_1

    move-object v1, v5

    .line 481
    :cond_0
    :goto_0
    return-object v1

    .line 407
    :cond_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;-><init>()V

    .line 408
    .local v1, "info":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;
    iput v10, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbEventId:I

    .line 409
    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbStartTime:J

    .line 410
    iput v10, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbDuration:I

    .line 411
    iput v10, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbFreeCaMode:I

    .line 412
    const-string v6, ""

    iput-object v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbEventName:Ljava/lang/String;

    .line 413
    const-string v6, ""

    iput-object v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbEventDetail:Ljava/lang/String;

    .line 416
    iget v6, p1, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mDuration:I

    if-eqz v6, :cond_0

    .line 426
    iget-char v6, p1, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mEvent_name_char_length:C

    if-eqz v6, :cond_0

    .line 437
    iget v6, p1, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mEvent_id:I

    iput v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbEventId:I

    .line 439
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;-><init>()V

    .line 442
    .local v4, "timefunc":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;
    iget-wide v6, p1, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mStart_time:J

    invoke-virtual {v4, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->getEventMSec(J)J

    move-result-wide v2

    .line 444
    .local v2, "startutc":J
    const-wide/16 v6, -0x3e8

    cmp-long v6, v6, v2

    if-nez v6, :cond_2

    .line 445
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event Start time err : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mStart_time:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v5

    .line 446
    goto :goto_0

    .line 448
    :cond_2
    const-wide/16 v6, -0x3e9

    cmp-long v6, v6, v2

    if-nez v6, :cond_3

    .line 450
    sget-wide v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStConstantsSv;->PROGRAM_START_TIME_UNDECIDED:J

    .line 453
    :cond_3
    iput-wide v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbStartTime:J

    .line 456
    iget v6, p1, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mDuration:I

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->getEventSec(I)I

    move-result v0

    .line 458
    .local v0, "durationsec":I
    const/16 v6, -0x3e8

    if-ne v6, v0, :cond_4

    .line 459
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event Duration err :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mDuration:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v5

    .line 460
    goto/16 :goto_0

    .line 462
    :cond_4
    const/16 v5, -0x3e9

    if-ne v5, v0, :cond_5

    .line 464
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStConstantsSv;->PROGRAM_DURATION_UNDECIDED:I

    .line 467
    :cond_5
    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbDuration:I

    .line 470
    iget-char v5, p1, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mFree_ca_mode:C

    iput v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbFreeCaMode:I

    .line 472
    iget-object v5, p1, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mEvent_name_char:[S

    iget-char v6, p1, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mEvent_name_char_length:C

    invoke-direct {p0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->convertToUniCode([SC)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbEventName:Ljava/lang/String;

    .line 475
    iget-object v5, p1, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mText_char:[S

    iget-short v6, p1, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;->mText_char_length:S

    int-to-char v6, v6

    invoke-direct {p0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->convertToUniCode([SC)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbEventDetail:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private getNit()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 713
    new-instance v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    invoke-direct {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;-><init>()V

    .line 718
    .local v0, "nit":Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2, v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->getNit(Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;)I

    move-result v1

    .line 724
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 726
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 727
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v2, v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v2

    .line 729
    :cond_0
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    .line 735
    return-void
.end method

.method private getPartialReception(I)Z
    .locals 5
    .param p1, "aServiceId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1489
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    if-nez v4, :cond_1

    .line 1538
    :cond_0
    :goto_0
    return v3

    .line 1499
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNit_second_loop:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 1509
    const/4 v3, 0x0

    .line 1512
    .local v3, "partialreception":Z
    const/4 v0, 0x0

    .local v0, "loop":I
    :goto_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNit_second_loop:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1515
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNit_second_loop:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;

    .line 1518
    .local v2, "nit2nd":Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;
    const/4 v1, 0x0

    .local v1, "loop2":I
    :goto_2
    iget-char v4, v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mPartialreception_service_id_count:C

    if-ge v1, v4, :cond_3

    .line 1521
    iget-object v4, v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mPartialreception_service_id:[I

    aget v4, v4, v1

    if-ne p1, v4, :cond_2

    .line 1526
    const/4 v3, 0x1

    .line 1530
    goto :goto_0

    .line 1518
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1512
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getPmt()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 674
    new-instance v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    invoke-direct {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;-><init>()V

    .line 679
    .local v0, "pmt":Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2, v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->getPmt(Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;)I

    move-result v1

    .line 685
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 686
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v2, v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v2

    .line 689
    :cond_0
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    .line 695
    return-void
.end method

.method private getSdt()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 792
    new-instance v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;

    invoke-direct {v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;-><init>()V

    .line 797
    .local v1, "sdt":Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->mwInstance:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v2, v1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->getSdt(Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;)I

    move-result v0

    .line 803
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 804
    const-string v2, "error(%d)"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 805
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v2, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v2

    .line 807
    :cond_0
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->sdtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;

    .line 813
    return-void
.end method

.method private getServiceList()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1692
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->bitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;

    if-nez v8, :cond_2

    :cond_0
    move-object v5, v7

    .line 1772
    :cond_1
    :goto_0
    return-object v5

    .line 1702
    :cond_2
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;-><init>()V

    .line 1705
    .local v5, "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-short v8, v8, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNetwork_id:S

    iput-short v8, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkId:S

    .line 1707
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-object v8, v8, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNetwork_name:[S

    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-char v9, v9, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNetwork_name_length:C

    invoke-direct {p0, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->convertToUniCode([SC)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkName:Ljava/lang/String;

    .line 1711
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->bitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;

    iget-object v8, v8, Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;->mBit_second_loop:Ljava/util/List;

    if-nez v8, :cond_3

    .line 1712
    const-string v8, "bitInfo.mBit_second_loop null"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v7

    .line 1716
    goto :goto_0

    .line 1719
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    .line 1722
    const/4 v2, 0x0

    .local v2, "loopcnt":I
    :goto_1
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->bitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;

    iget-object v7, v7, Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;->mBit_second_loop:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 1723
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->bitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;

    iget-object v7, v7, Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;->mBit_second_loop:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwBitSecond;

    .line 1725
    .local v0, "bit2nd":Lmmb/android/MmbStCtlMw/MmbStCtlMwBitSecond;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;-><init>()V

    .line 1728
    .local v1, "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    iget-short v7, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwBitSecond;->mBroadcaster_id:S

    iput-short v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterId:S

    .line 1730
    iget-object v7, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwBitSecond;->mBroadcaster_name:[S

    iget-char v8, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwBitSecond;->mBroadcaster_name_length:C

    invoke-direct {p0, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->convertToUniCode([SC)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterName:Ljava/lang/String;

    .line 1733
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    .line 1736
    const/4 v3, 0x0

    .local v3, "loopcnt2":I
    :goto_2
    iget-char v7, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwBitSecond;->mService_count:C

    if-ge v3, v7, :cond_5

    .line 1739
    iget-object v7, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwBitSecond;->mService_id:[I

    aget v7, v7, v3

    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getServiceTypeInNit(I)S

    move-result v6

    .line 1742
    .local v6, "servicetype":S
    const/4 v7, -0x1

    if-eq v7, v6, :cond_4

    .line 1743
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;-><init>()V

    .line 1745
    .local v4, "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    iget-object v7, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwBitSecond;->mService_id:[I

    aget v7, v7, v3

    iput v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    .line 1747
    iput-short v6, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceType:S

    .line 1749
    iget-object v7, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwBitSecond;->mService_id:[I

    aget v7, v7, v3

    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getPartialReception(I)Z

    move-result v7

    iput-boolean v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbPartialReception:Z

    .line 1752
    const-string v7, ""

    iput-object v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceName:Ljava/lang/String;

    .line 1754
    const-string v7, ""

    iput-object v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceProviderName:Ljava/lang/String;

    .line 1755
    iget-object v7, v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwBitSecond;->mService_id:[I

    aget v7, v7, v3

    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getTransportStreamId(I)I

    move-result v7

    iput v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbTsId:I

    .line 1758
    iget-object v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1736
    .end local v4    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1764
    .end local v6    # "servicetype":S
    :cond_5
    iget-object v7, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1722
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getServiceName(I)Ljava/lang/String;
    .locals 5
    .param p1, "aServiceId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1369
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->sdtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;

    if-nez v3, :cond_1

    .line 1408
    :cond_0
    :goto_0
    return-object v2

    .line 1379
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->sdtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;

    iget-object v3, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;->mSdt_service_loop:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 1389
    const/4 v2, 0x0

    .line 1392
    .local v2, "servicename":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "loopcnt":I
    :goto_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->sdtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;

    iget-object v3, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;->mSdt_service_loop:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1395
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->sdtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;

    iget-object v3, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;->mSdt_service_loop:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdtService;

    .line 1398
    .local v1, "sdttable":Lmmb/android/MmbStCtlMw/MmbStCtlMwSdtService;
    iget v3, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdtService;->mService_id:I

    if-ne p1, v3, :cond_2

    .line 1399
    iget-object v3, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdtService;->mService_name:[S

    iget-char v4, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdtService;->mService_name_length:C

    invoke-direct {p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->convertToUniCode([SC)Ljava/lang/String;

    move-result-object v2

    .line 1401
    goto :goto_0

    .line 1392
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getServiceProviderName(I)Ljava/lang/String;
    .locals 5
    .param p1, "aServiceId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1429
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->sdtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;

    if-nez v3, :cond_1

    .line 1468
    :cond_0
    :goto_0
    return-object v2

    .line 1439
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->sdtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;

    iget-object v3, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;->mSdt_service_loop:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 1449
    const/4 v2, 0x0

    .line 1452
    .local v2, "serviceprovidername":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "loopcnt":I
    :goto_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->sdtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;

    iget-object v3, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;->mSdt_service_loop:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1455
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->sdtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;

    iget-object v3, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;->mSdt_service_loop:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdtService;

    .line 1458
    .local v1, "sdttable":Lmmb/android/MmbStCtlMw/MmbStCtlMwSdtService;
    iget v3, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdtService;->mService_id:I

    if-ne p1, v3, :cond_2

    .line 1459
    iget-object v3, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdtService;->mService_provider_name:[S

    iget-char v4, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdtService;->mService_provider_name_length:C

    invoke-direct {p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->convertToUniCode([SC)Ljava/lang/String;

    move-result-object v2

    .line 1461
    goto :goto_0

    .line 1452
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getServiceTypeInNit(I)S
    .locals 5
    .param p1, "aServiceId"    # I

    .prologue
    const/4 v3, -0x1

    .line 1624
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    if-nez v4, :cond_1

    .line 1672
    :cond_0
    :goto_0
    return v3

    .line 1634
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNit_second_loop:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 1644
    const/4 v3, -0x1

    .line 1647
    .local v3, "servicetype":S
    const/4 v0, 0x0

    .local v0, "loopcnt":I
    :goto_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNit_second_loop:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1650
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNit_second_loop:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;

    .line 1653
    .local v2, "nit2nd":Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;
    const/4 v1, 0x0

    .local v1, "loopcnt2":I
    :goto_2
    iget-char v4, v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mServicelist_count:C

    if-ge v1, v4, :cond_3

    .line 1655
    iget-object v4, v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mServicelist_service_id:[I

    aget v4, v4, v1

    if-ne p1, v4, :cond_2

    .line 1660
    iget-object v4, v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mServicelist_service_type:[S

    aget-short v3, v4, v1

    .line 1664
    goto :goto_0

    .line 1653
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1647
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getTransportStreamId(I)I
    .locals 6
    .param p1, "aServiceId"    # I

    .prologue
    .line 1558
    const/4 v3, 0x0

    .line 1561
    .local v3, "tsid":I
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    if-nez v5, :cond_0

    move v4, v3

    .line 1607
    .end local v3    # "tsid":I
    .local v4, "tsid":I
    :goto_0
    return v4

    .line 1571
    .end local v4    # "tsid":I
    .restart local v3    # "tsid":I
    :cond_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-object v5, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNit_second_loop:Ljava/util/List;

    if-nez v5, :cond_1

    move v4, v3

    .line 1578
    .end local v3    # "tsid":I
    .restart local v4    # "tsid":I
    goto :goto_0

    .line 1582
    .end local v4    # "tsid":I
    .restart local v3    # "tsid":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "loop":I
    :goto_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-object v5, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNit_second_loop:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 1585
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-object v5, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNit_second_loop:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;

    .line 1588
    .local v2, "nit2nd":Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;
    const/4 v1, 0x0

    .local v1, "loop2":I
    :goto_2
    iget-char v5, v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mServicelist_count:C

    if-ge v1, v5, :cond_3

    .line 1591
    iget-object v5, v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mServicelist_service_id:[I

    aget v5, v5, v1

    if-ne p1, v5, :cond_2

    .line 1595
    iget v3, v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mTransport_stream_id:I

    move v4, v3

    .line 1599
    .end local v3    # "tsid":I
    .restart local v4    # "tsid":I
    goto :goto_0

    .line 1588
    .end local v4    # "tsid":I
    .restart local v3    # "tsid":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1582
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "loop2":I
    .end local v2    # "nit2nd":Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;
    :cond_4
    move v4, v3

    .line 1607
    .end local v3    # "tsid":I
    .restart local v4    # "tsid":I
    goto :goto_0
.end method

.method private isEitInfo()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 352
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->eitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;

    if-nez v2, :cond_0

    .line 353
    const-string v1, "eitInfo null"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    :goto_0
    return v0

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->eitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;

    iget-object v2, v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;->mEit_program_info:Ljava/util/List;

    if-nez v2, :cond_1

    .line 361
    const-string v1, "eitInfo.mEit_program_info null"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 368
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->eitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;

    iget-object v2, v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;->mEit_program_info:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 369
    const-string v2, "eitInfo.mEit_program_info.size() zero(%d)"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->eitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;

    iget-object v3, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;->mEit_program_info:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 379
    goto :goto_0
.end method


# virtual methods
.method protected deleteBitInformation()V
    .locals 1

    .prologue
    .line 1036
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->bitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;

    .line 1041
    return-void
.end method

.method protected deleteEitInformation()V
    .locals 1

    .prologue
    .line 1082
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->eitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;

    .line 1087
    return-void
.end method

.method protected deleteNitInformation()V
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    .line 1018
    return-void
.end method

.method protected deletePmtInformation()V
    .locals 1

    .prologue
    .line 990
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    .line 995
    return-void
.end method

.method protected deleteSdtInformation()V
    .locals 1

    .prologue
    .line 1059
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->sdtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;

    .line 1064
    return-void
.end method

.method protected getAudioLanguageNum()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 502
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    if-nez v3, :cond_1

    .line 503
    const-string v3, "pmtInfo null"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    :cond_0
    :goto_0
    return v0

    .line 511
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-object v2, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPmt_second_loop:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;

    .line 512
    .local v2, "secondpmt":Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;
    if-nez v2, :cond_2

    .line 513
    const-string v3, "PMT second loop null"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 520
    :cond_2
    const/4 v0, 0x0

    .line 522
    .local v0, "audionum":I
    const/4 v1, 0x0

    .local v1, "loopcnt":I
    :goto_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-char v3, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPmt_second_loop_count:C

    if-ge v1, v3, :cond_0

    .line 524
    const/16 v3, 0xf

    iget-object v4, v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;->mStream_type:[S

    aget-short v4, v4, v1

    if-ne v3, v4, :cond_3

    .line 525
    add-int/lit8 v0, v0, 0x1

    .line 522
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected getCopyControlInfo()Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0xff

    .line 2005
    const/4 v0, 0x0

    .line 2006
    .local v0, "copycontrolinfo":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    if-eqz v4, :cond_4

    .line 2007
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;

    .end local v0    # "copycontrolinfo":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;
    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;-><init>()V

    .line 2009
    .restart local v0    # "copycontrolinfo":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-char v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mCopy_descriptor_flag:C

    if-ne v6, v4, :cond_0

    .line 2010
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-char v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mCopy_control_type:C

    iput-char v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbCopyControlType:C

    .line 2011
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-char v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mDigital_recording_control_data:C

    iput-char v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbDigitalRecordingControlData:C

    .line 2013
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-char v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mAps_control_data:C

    iput-char v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbAPSControlData:C

    .line 2020
    :goto_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-char v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mContent_descriptor_flag:C

    if-ne v6, v4, :cond_1

    .line 2021
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-char v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mEncryption_mode:C

    iput-char v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbEncryptionMode:C

    .line 2022
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-char v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mCopy_restriction_mode:C

    iput-char v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbCopyRestrictionMode:C

    .line 2027
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbComponentDetail:Ljava/util/List;

    .line 2030
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-char v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPmt_second_loop_count:C

    if-eqz v4, :cond_4

    .line 2031
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2034
    .local v2, "detaildata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;>;"
    const/4 v3, 0x0

    .local v3, "loopcnt":C
    :goto_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-char v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPmt_second_loop_count:C

    if-ge v3, v4, :cond_3

    .line 2035
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;-><init>()V

    .line 2037
    .local v1, "data":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPmt_second_loop:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;->mComponent_tag:[S

    aget-short v4, v4, v3

    iput-short v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;->mmbComponentTag:S

    .line 2039
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPmt_second_loop:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;->mCopy_descriptor_flag:[C

    aget-char v4, v4, v3

    if-ne v6, v4, :cond_2

    .line 2041
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPmt_second_loop:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;->mDigital_recording_control_data:[C

    aget-char v4, v4, v3

    iput-char v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;->mmbDigitalRecordingControlData:C

    .line 2043
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPmt_second_loop:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;->mCopy_control_type:[C

    aget-char v4, v4, v3

    iput-char v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;->mmbCopyControlType:C

    .line 2045
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPmt_second_loop:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;->mAps_control_data:[C

    aget-char v4, v4, v3

    iput-char v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;->mmbAPSControlData:C

    .line 2052
    :goto_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2034
    add-int/lit8 v4, v3, 0x1

    int-to-char v3, v4

    goto :goto_2

    .line 2015
    .end local v1    # "data":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;
    .end local v2    # "detaildata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;>;"
    .end local v3    # "loopcnt":C
    :cond_0
    iput-char v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbCopyControlType:C

    .line 2016
    iput-char v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbDigitalRecordingControlData:C

    .line 2017
    iput-char v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbAPSControlData:C

    goto :goto_0

    .line 2024
    :cond_1
    iput-char v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbEncryptionMode:C

    .line 2025
    iput-char v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbCopyRestrictionMode:C

    goto :goto_1

    .line 2048
    .restart local v1    # "data":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;
    .restart local v2    # "detaildata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;>;"
    .restart local v3    # "loopcnt":C
    :cond_2
    iput-char v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;->mmbDigitalRecordingControlData:C

    .line 2049
    iput-char v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;->mmbCopyControlType:C

    .line 2050
    iput-char v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;->mmbAPSControlData:C

    goto :goto_3

    .line 2054
    .end local v1    # "data":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;
    :cond_3
    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;->mmbComponentDetail:Ljava/util/List;

    .line 2060
    .end local v2    # "detaildata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationEachComponentSp;>;"
    .end local v3    # "loopcnt":C
    :cond_4
    return-object v0
.end method

.method protected getParentalRate()I
    .locals 3

    .prologue
    .line 1880
    const/4 v0, -0x1

    .line 1883
    .local v0, "parentalrate":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    if-eqz v1, :cond_0

    .line 1885
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-char v2, v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mCa_descriptor_flag:C

    if-ne v1, v2, :cond_0

    .line 1887
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-char v2, v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPrivate_data_byte:C

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-char v1, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPrivate_data_byte:C

    const/16 v2, 0x11

    if-gt v1, v2, :cond_0

    .line 1888
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-char v0, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPrivate_data_byte:C

    .line 1890
    add-int/lit8 v0, v0, 0x3

    .line 1907
    :cond_0
    return v0
.end method

.method protected getPrimaryAudioComponentTag()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 552
    const/16 v2, 0xff

    .line 553
    .local v2, "result":I
    const/4 v0, 0x0

    .line 554
    .local v0, "defaultcomp":Z
    const/4 v4, 0x0

    .line 556
    .local v4, "secondcomp":Z
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    if-nez v6, :cond_0

    .line 557
    const-string v6, "PMT first loop null"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    .line 603
    .end local v2    # "result":I
    .local v3, "result":I
    :goto_0
    return v3

    .line 565
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-object v6, v6, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPmt_second_loop:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;

    if-nez v6, :cond_1

    .line 566
    const-string v6, "PMT second loop null"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    .line 570
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 573
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_1
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-object v5, v6, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPmt_second_loop:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;

    .line 576
    .local v5, "secondpmt":Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;
    const/4 v1, 0x0

    .local v1, "loopcnt":I
    :goto_1
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-char v6, v6, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPmt_second_loop_count:C

    if-ge v1, v6, :cond_2

    .line 578
    const/16 v6, 0x10

    iget-object v7, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;->mComponent_tag:[S

    aget-short v7, v7, v1

    if-ne v6, v7, :cond_4

    .line 580
    const/16 v2, 0x10

    .line 581
    const/4 v0, 0x1

    .line 593
    :cond_2
    if-nez v0, :cond_3

    .line 594
    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 596
    const/16 v2, 0x11

    :cond_3
    move v3, v2

    .line 603
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 583
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_4
    const/16 v6, 0x11

    iget-object v7, v5, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;->mComponent_tag:[S

    aget-short v7, v7, v1

    if-ne v6, v7, :cond_5

    .line 584
    const-string v6, "Warning!! Audio Component exists only 0x11 in PMT"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    const/4 v4, 0x1

    .line 576
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected getProgramInformation(IJ)Ljava/util/List;
    .locals 10
    .param p1, "aCondition"    # I
    .param p2, "aSecureClock"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 177
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->isEitInfo()Z

    move-result v1

    if-eq v9, v1, :cond_1

    .line 178
    const/4 v7, 0x0

    .line 232
    :cond_0
    :goto_0
    return-object v7

    .line 181
    :cond_1
    const/4 v7, 0x0

    .line 183
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    const/4 v3, 0x0

    .line 184
    .local v3, "eitpset":Z
    const/4 v8, 0x0

    .line 187
    .local v8, "ret":Z
    const/4 v2, 0x0

    .local v2, "loopcnt":I
    :goto_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->eitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;

    iget-object v1, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;->mEit_program_info:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->eitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;

    iget-object v1, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;->mEit_program_info:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;

    .line 192
    .local v6, "eitdata":Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;
    const-wide/16 v4, 0x0

    cmp-long v1, v4, p2

    if-eqz v1, :cond_4

    .line 193
    if-nez p1, :cond_3

    .line 194
    invoke-direct {p0, p2, p3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->checkCurrentProgramInfo(JLmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;)Z

    move-result v8

    .line 200
    :goto_2
    if-eq v9, v8, :cond_4

    .line 187
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v1, p0

    move-wide v4, p2

    .line 197
    invoke-direct/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->checkEitAddList(IZJLmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;)Z

    move-result v8

    goto :goto_2

    .line 206
    :cond_4
    invoke-direct {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getEventInfo(Lmmb/android/MmbStCtlMw/MmbStCtlMwEitProgramInfo;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;

    move-result-object v0

    .line 208
    .local v0, "info":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;
    if-eqz v0, :cond_6

    .line 211
    if-nez v7, :cond_5

    .line 213
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    :cond_5
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    if-nez v2, :cond_6

    .line 218
    const/4 v3, 0x1

    .line 223
    :cond_6
    if-eq v9, p1, :cond_2

    goto :goto_0
.end method

.method protected getServiceListForScan()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .locals 1

    .prologue
    .line 1268
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getServiceList()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    move-result-object v0

    .line 1273
    .local v0, "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    return-object v0
.end method

.method protected getServiceListForWatching()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1295
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getServiceList()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    move-result-object v3

    .line 1297
    .local v3, "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    if-nez v3, :cond_1

    .line 1298
    const-string v8, "servicelist null"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v7

    .line 1348
    .end local v3    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    :cond_0
    :goto_0
    return-object v3

    .line 1305
    .restart local v3    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    :cond_1
    iget-object v8, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    if-nez v8, :cond_2

    .line 1306
    const-string v8, "servicelist.mmbBroadcasterDataList null"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v7

    .line 1310
    goto :goto_0

    .line 1314
    :cond_2
    const/4 v1, 0x0

    .local v1, "loopcnt":I
    :goto_1
    iget-object v7, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 1317
    iget-object v7, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    .line 1319
    .local v0, "broadcastlist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    iget-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    if-nez v7, :cond_4

    .line 1314
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1327
    :cond_4
    const/4 v2, 0x0

    .local v2, "loopcnt2":I
    :goto_2
    iget-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 1330
    iget-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    .line 1333
    .local v6, "srvdatalist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    iget v7, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    .line 1334
    .local v4, "servicename":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 1335
    iput-object v4, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceName:Ljava/lang/String;

    .line 1338
    :cond_5
    iget v7, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getServiceProviderName(I)Ljava/lang/String;

    move-result-object v5

    .line 1339
    .local v5, "serviceprovidername":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 1340
    iput-object v5, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceProviderName:Ljava/lang/String;

    .line 1327
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method protected getServiceListFromNitInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .locals 9

    .prologue
    .line 1794
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    if-nez v7, :cond_0

    .line 1801
    const/4 v5, 0x0

    .line 1861
    :goto_0
    return-object v5

    .line 1805
    :cond_0
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;-><init>()V

    .line 1808
    .local v5, "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-short v7, v7, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNetwork_id:S

    iput-short v7, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkId:S

    .line 1810
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-object v7, v7, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNetwork_name:[S

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-char v8, v8, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNetwork_name_length:C

    invoke-direct {p0, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->convertToUniCode([SC)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkName:Ljava/lang/String;

    .line 1813
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    .line 1814
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;-><init>()V

    .line 1817
    .local v0, "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    const/4 v7, 0x1

    iput-short v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterId:S

    .line 1819
    const-string v7, " "

    iput-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterName:Ljava/lang/String;

    .line 1821
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    .line 1824
    const/4 v1, 0x0

    .local v1, "loopcnt":I
    :goto_1
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-object v7, v7, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNit_second_loop:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 1825
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    iget-object v7, v7, Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;->mNit_second_loop:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;

    .line 1828
    .local v3, "nit2nd":Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;
    const/4 v2, 0x0

    .local v2, "loopcnt2":I
    :goto_2
    iget-char v7, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mServicelist_count:C

    if-ge v2, v7, :cond_2

    .line 1829
    iget-object v7, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mServicelist_service_type:[S

    aget-short v6, v7, v2

    .line 1832
    .local v6, "servicetype":S
    const/4 v7, -0x1

    if-eq v7, v6, :cond_1

    .line 1833
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;-><init>()V

    .line 1835
    .local v4, "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    iget-object v7, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mServicelist_service_id:[I

    aget v7, v7, v2

    iput v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    .line 1837
    iput-short v6, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceType:S

    .line 1839
    const-string v7, ""

    iput-object v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceName:Ljava/lang/String;

    .line 1841
    const-string v7, ""

    iput-object v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceProviderName:Ljava/lang/String;

    .line 1843
    iget v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getPartialReception(I)Z

    move-result v7

    iput-boolean v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbPartialReception:Z

    .line 1845
    iget v7, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mTransport_stream_id:I

    iput v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbTsId:I

    .line 1847
    iget-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1828
    .end local v4    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1824
    .end local v6    # "servicetype":S
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1855
    .end local v2    # "loopcnt2":I
    .end local v3    # "nit2nd":Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;
    :cond_3
    iget-object v7, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1856
    const/4 v0, 0x0

    .line 1861
    goto/16 :goto_0
.end method

.method protected getTsidOfSdt()I
    .locals 2

    .prologue
    .line 2079
    const/4 v0, 0x0

    .line 2081
    .local v0, "tsid":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->sdtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;

    if-eqz v1, :cond_0

    .line 2083
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->sdtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;

    iget v0, v1, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;->mTransport_stream_id:I

    .line 2089
    :cond_0
    return v0
.end method

.method protected isBitInformation()Z
    .locals 2

    .prologue
    .line 1173
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->bitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;

    if-eqz v1, :cond_0

    .line 1174
    const/4 v0, 0x1

    .line 1182
    .local v0, "result":Z
    :goto_0
    return v0

    .line 1176
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method protected isCheckExistenceDefaultVideoComponentInPmt()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 622
    const/4 v1, 0x0

    .line 624
    .local v1, "result":Z
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    if-nez v4, :cond_0

    .line 625
    const-string v4, "PMT first loop null"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    .line 654
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 632
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-object v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPmt_second_loop:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;

    if-nez v4, :cond_1

    .line 633
    const-string v4, "PMT second loop null"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    .line 637
    .restart local v2    # "result":I
    goto :goto_0

    .line 640
    .end local v2    # "result":I
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-object v3, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPmt_second_loop:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;

    .line 643
    .local v3, "secondpmt":Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;
    const/4 v0, 0x0

    .local v0, "loopcnt":I
    :goto_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    iget-char v4, v4, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;->mPmt_second_loop_count:C

    if-ge v0, v4, :cond_2

    .line 645
    iget-object v4, v3, Lmmb/android/MmbStCtlMw/MmbStCtlMwPmtSecond;->mComponent_tag:[S

    aget-short v4, v4, v0

    if-nez v4, :cond_3

    .line 646
    const/4 v1, 0x1

    :cond_2
    move v2, v1

    .line 654
    .restart local v2    # "result":I
    goto :goto_0

    .line 643
    .end local v2    # "result":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected isEitInformation()Z
    .locals 2

    .prologue
    .line 1237
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->eitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;

    if-eqz v1, :cond_0

    .line 1238
    const/4 v0, 0x1

    .line 1246
    .local v0, "result":Z
    :goto_0
    return v0

    .line 1240
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method protected isNitInformation()Z
    .locals 2

    .prologue
    .line 1141
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->nitInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    if-eqz v1, :cond_0

    .line 1142
    const/4 v0, 0x1

    .line 1150
    .local v0, "result":Z
    :goto_0
    return v0

    .line 1144
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method protected isPmtInformation()Z
    .locals 2

    .prologue
    .line 1109
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->pmtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    if-eqz v1, :cond_0

    .line 1110
    const/4 v0, 0x1

    .line 1118
    .local v0, "result":Z
    :goto_0
    return v0

    .line 1112
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method protected isSdtInformation()Z
    .locals 2

    .prologue
    .line 1205
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->sdtInfo:Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;

    if-eqz v1, :cond_0

    .line 1206
    const/4 v0, 0x1

    .line 1214
    .local v0, "result":Z
    :goto_0
    return v0

    .line 1208
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method protected onBitUpdated()V
    .locals 0

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getBit()V

    .line 972
    return-void
.end method

.method protected onEitUpdated()V
    .locals 0

    .prologue
    .line 919
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getEit()V

    .line 924
    return-void
.end method

.method protected onNitUpdated()V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getNit()V

    .line 900
    return-void
.end method

.method protected onPmtUpdated()V
    .locals 0

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getPmt()V

    .line 876
    return-void
.end method

.method protected onSdtUpdated()V
    .locals 0

    .prologue
    .line 943
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSectionFunctionSv;->getSdt()V

    .line 948
    return-void
.end method
