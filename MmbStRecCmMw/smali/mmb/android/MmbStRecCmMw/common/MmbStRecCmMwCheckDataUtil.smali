.class public Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;
.super Ljava/lang/Object;
.source "MmbStRecCmMwCheckDataUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StRecCmClient"

.field private static log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    invoke-direct {v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;-><init>()V

    sput-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCrid(Ljava/lang/String;)I
    .locals 5
    .param p0, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 263
    if-nez p0, :cond_0

    .line 264
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    invoke-virtual {v1, v2, p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    :goto_0
    return v0

    .line 269
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_2

    .line 271
    :cond_1
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "false by crid length -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkGenres([Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;)I
    .locals 7
    .param p0, "aGenre"    # [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 430
    if-nez p0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v2

    .line 434
    :cond_1
    array-length v1, p0

    .line 437
    .local v1, "genrecount":I
    if-ltz v1, :cond_2

    const/16 v4, 0xa

    if-le v1, v4, :cond_3

    .line 439
    :cond_2
    sget-object v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "StRecCmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "false by Genre range -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 440
    goto :goto_0

    .line 443
    :cond_3
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 445
    aget-object v4, p0, v0

    if-nez v4, :cond_4

    .line 446
    sget-object v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "StRecCmClient"

    invoke-virtual {v2, v4, p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    move v2, v3

    .line 447
    goto :goto_0

    .line 451
    :cond_4
    aget-object v4, p0, v0

    iget v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mType:I

    if-ltz v4, :cond_5

    aget-object v4, p0, v0

    iget v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mType:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_6

    .line 453
    :cond_5
    sget-object v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "StRecCmClient"

    invoke-virtual {v2, v4, p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    move v2, v3

    .line 454
    goto :goto_0

    .line 458
    :cond_6
    aget-object v4, p0, v0

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mGenre:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 459
    aget-object v4, p0, v0

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mGenre:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x80

    if-le v4, v5, :cond_7

    .line 460
    sget-object v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "StRecCmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "false by Genred length -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p0, v0

    iget-object v6, v6, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mGenre:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 461
    goto :goto_0

    .line 443
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static checkKeywords([Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;)I
    .locals 7
    .param p0, "aKeyword"    # [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 383
    if-nez p0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v2

    .line 387
    :cond_1
    array-length v1, p0

    .line 390
    .local v1, "keywordcount":I
    if-ltz v1, :cond_2

    const/16 v4, 0xf

    if-le v1, v4, :cond_3

    .line 392
    :cond_2
    sget-object v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "StRecCmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "false by keword range -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 393
    goto :goto_0

    .line 396
    :cond_3
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 398
    aget-object v4, p0, v0

    if-nez v4, :cond_4

    .line 399
    sget-object v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "StRecCmClient"

    invoke-virtual {v2, v4, p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    move v2, v3

    .line 400
    goto :goto_0

    .line 404
    :cond_4
    aget-object v4, p0, v0

    iget v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mType:I

    if-ltz v4, :cond_5

    aget-object v4, p0, v0

    iget v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mType:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_6

    .line 406
    :cond_5
    sget-object v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "StRecCmClient"

    invoke-virtual {v2, v4, p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    move v2, v3

    .line 407
    goto :goto_0

    .line 411
    :cond_6
    aget-object v4, p0, v0

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mKeyword:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 412
    aget-object v4, p0, v0

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mKeyword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x78

    if-le v4, v5, :cond_7

    .line 413
    sget-object v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "StRecCmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "false by Keyword length -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p0, v0

    iget-object v6, v6, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mKeyword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 414
    goto :goto_0

    .line 396
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static checkMediaTitleImage(Ljava/lang/String;)I
    .locals 4
    .param p0, "aMediaTitleImage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 330
    if-nez p0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_0

    .line 336
    sget-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "StRecCmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "false by MediaTitleImage length -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static checkMeta(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;)I
    .locals 5
    .param p0, "aMeta"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    .prologue
    const/4 v1, -0x1

    .line 47
    sget-object v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "StRecCmClient"

    const-string v4, "checkMeta() : START"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v0, -0x1

    .line 50
    .local v0, "result":I
    if-nez p0, :cond_1

    .line 51
    sget-object v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "StRecCmClient"

    const-string v4, "false by meda -> null"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    :goto_0
    return v1

    .line 56
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mCrid:Ljava/lang/String;

    invoke-static {v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkCrid(Ljava/lang/String;)I

    move-result v0

    .line 57
    if-eq v0, v1, :cond_0

    .line 62
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mTitle:Ljava/lang/String;

    invoke-static {v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkTitle(Ljava/lang/String;)I

    move-result v0

    .line 63
    if-eq v0, v1, :cond_0

    .line 68
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mSubTitle:Ljava/lang/String;

    invoke-static {v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkSubTitle(Ljava/lang/String;)I

    move-result v0

    .line 69
    if-eq v0, v1, :cond_0

    .line 74
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mMediaTitleImage:Ljava/lang/String;

    invoke-static {v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkMediaTitleImage(Ljava/lang/String;)I

    move-result v0

    .line 75
    if-eq v0, v1, :cond_0

    .line 80
    iget-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramStartTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkProgramStartTime(Ljava/lang/Long;)I

    move-result v0

    .line 81
    if-eq v0, v1, :cond_0

    .line 86
    iget-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramEndTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkProgramEndTime(Ljava/lang/Long;)I

    move-result v0

    .line 87
    if-eq v0, v1, :cond_0

    .line 92
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mKeyword:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;

    invoke-static {v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkKeywords([Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;)I

    move-result v0

    .line 93
    if-eq v0, v1, :cond_0

    .line 98
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mGenre:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;

    invoke-static {v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkGenres([Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;)I

    move-result v0

    .line 99
    if-eq v0, v1, :cond_0

    .line 104
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mProgramSummary:[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    invoke-static {v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkProgramSummarys([Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;)I

    move-result v0

    .line 105
    if-eq v0, v1, :cond_0

    .line 110
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mParentalControlInformation:Ljava/lang/String;

    invoke-static {v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkParentalControlInformation(Ljava/lang/String;)I

    move-result v0

    .line 111
    if-eq v0, v1, :cond_0

    .line 116
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPrice:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    invoke-static {v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkPrice(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;)I

    move-result v0

    .line 117
    if-eq v0, v1, :cond_0

    .line 122
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;->mPurchaseType:Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    invoke-static {v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkPurchaseType(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;)I

    move-result v0

    .line 123
    if-eq v0, v1, :cond_0

    .line 127
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    const-string v3, "checkMeta() : END"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkMountState(I)I
    .locals 5
    .param p0, "aMountState"    # I

    .prologue
    const/4 v0, -0x1

    .line 216
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    const-string v3, "checkMountState() : START"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    .line 221
    :cond_0
    sget-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "StRecCmClient"

    const-string v2, "checkMountState() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    .line 225
    :cond_1
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MountState -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static checkParentalControlInformation(Ljava/lang/String;)I
    .locals 5
    .param p0, "aParentalControlInformation"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 524
    if-nez p0, :cond_0

    .line 525
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ParentalControlInformation -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    :goto_0
    return v0

    .line 530
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_2

    .line 532
    :cond_1
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "false by ParentalControlInformation length -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 536
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkPrgNo(I)I
    .locals 4
    .param p0, "aPrgNo"    # I

    .prologue
    .line 169
    sget-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "StRecCmClient"

    const-string v2, "checkPrgNo() : START"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    .line 173
    sget-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "StRecCmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrgNo -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    const/4 v0, -0x1

    .line 178
    :goto_0
    return v0

    .line 177
    :cond_0
    sget-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "StRecCmClient"

    const-string v2, "checkPrgNo() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkPrgNoList([I)I
    .locals 7
    .param p0, "aPrgNo"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 188
    sget-object v4, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "StRecCmClient"

    const-string v6, "checkPrgNoList() : START"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    if-nez p0, :cond_0

    .line 192
    sget-object v3, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "StRecCmClient"

    const-string v5, "checkPrgNoList() : END"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return v2

    .line 197
    :cond_0
    array-length v1, p0

    .line 198
    .local v1, "programnocount":I
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 199
    aget v4, p0, v0

    invoke-static {v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkPrgNo(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 200
    sget-object v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "StRecCmClient"

    invoke-virtual {v2, v4, p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    move v2, v3

    .line 201
    goto :goto_0

    .line 198
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_2
    sget-object v3, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "StRecCmClient"

    const-string v5, "checkPrgNoList() : END"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static checkPrice(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;)I
    .locals 6
    .param p0, "aPrice"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;

    .prologue
    const/4 v0, -0x1

    .line 546
    if-nez p0, :cond_0

    .line 548
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Price -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    .line 559
    :goto_0
    return v0

    .line 553
    :cond_0
    iget-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mPrice:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mCurrency:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 555
    :cond_1
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    invoke-virtual {v1, v2, p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 559
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkProgramEndTime(Ljava/lang/Long;)I
    .locals 4
    .param p0, "aProgramEndTime"    # Ljava/lang/Long;

    .prologue
    .line 367
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 368
    sget-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "StRecCmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProgramEndTime -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    .line 369
    const/4 v0, -0x1

    .line 372
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkProgramStartTime(Ljava/lang/Long;)I
    .locals 4
    .param p0, "aProgramStartTime"    # Ljava/lang/Long;

    .prologue
    .line 351
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 352
    sget-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "StRecCmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProgramStartTime -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    const/4 v0, -0x1

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkProgramSummarys([Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;)I
    .locals 7
    .param p0, "aProgramSummary"    # [Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 477
    if-nez p0, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v2

    .line 481
    :cond_1
    array-length v1, p0

    .line 484
    .local v1, "programsummarycount":I
    if-ltz v1, :cond_2

    if-le v1, v6, :cond_3

    .line 486
    :cond_2
    sget-object v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "StRecCmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "false by ProgramSummary range -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 487
    goto :goto_0

    .line 490
    :cond_3
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 492
    aget-object v4, p0, v0

    if-nez v4, :cond_4

    .line 493
    sget-object v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "StRecCmClient"

    invoke-virtual {v2, v4, p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    move v2, v3

    .line 494
    goto :goto_0

    .line 498
    :cond_4
    aget-object v4, p0, v0

    iget v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;->mLength:I

    if-ltz v4, :cond_5

    aget-object v4, p0, v0

    iget v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;->mLength:I

    if-le v4, v6, :cond_6

    .line 500
    :cond_5
    sget-object v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "StRecCmClient"

    invoke-virtual {v2, v4, p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    move v2, v3

    .line 501
    goto :goto_0

    .line 505
    :cond_6
    aget-object v4, p0, v0

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;->mSynopsis:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 506
    aget-object v4, p0, v0

    iget-object v4, v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;->mSynopsis:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x4c8

    if-le v4, v5, :cond_7

    .line 507
    sget-object v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "StRecCmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "false by ProgramSummary length -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p0, v0

    iget-object v6, v6, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwProgramSummary;->mSynopsis:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 508
    goto :goto_0

    .line 490
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static checkPurchaseType(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;)I
    .locals 5
    .param p0, "aPurchaseType"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;

    .prologue
    const/4 v3, 0x3

    const/4 v0, -0x1

    .line 570
    if-nez p0, :cond_0

    .line 571
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseType -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    :goto_0
    return v0

    .line 576
    :cond_0
    iget v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mPurchaseType:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    iget v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mPurchaseType:I

    if-le v1, v3, :cond_2

    .line 578
    :cond_1
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    invoke-virtual {v1, v2, p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 583
    :cond_2
    iget v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mName:I

    if-ltz v1, :cond_3

    iget v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPurchaseType;->mName:I

    if-le v1, v3, :cond_4

    .line 585
    :cond_3
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    invoke-virtual {v1, v2, p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 589
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkSort(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;)I
    .locals 5
    .param p0, "aSort"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 138
    sget-object v2, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "StRecCmClient"

    const-string v4, "checkSort() : START"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    if-nez p0, :cond_0

    .line 142
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    invoke-virtual {v1, v2, p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    :goto_0
    return v0

    .line 147
    :cond_0
    iget v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;->mColumn:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 148
    sget-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    invoke-virtual {v0, v2, p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 149
    goto :goto_0

    .line 153
    :cond_1
    iget v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;->mOrder:I

    if-eq v2, v1, :cond_2

    .line 154
    sget-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    invoke-virtual {v0, v2, p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 155
    goto :goto_0

    .line 158
    :cond_2
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    const-string v3, "checkSort() : END"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static checkSubTitle(Ljava/lang/String;)I
    .locals 4
    .param p0, "aSubTitle"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 309
    if-nez p0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x12c

    if-le v1, v2, :cond_0

    .line 315
    sget-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "StRecCmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "false by SubTitle length -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static checkThumbnail(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;)I
    .locals 5
    .param p0, "aThumbnail"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;

    .prologue
    const/4 v0, -0x1

    .line 235
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    const-string v3, "checkThumbnail() : START"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    if-eqz p0, :cond_0

    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;->mThumbnail:[B

    if-nez v1, :cond_1

    .line 238
    :cond_0
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    const-string v3, "false by thmbnail -> null"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_0
    return v0

    .line 241
    :cond_1
    iget v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;->mPrgNo:I

    invoke-static {v1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->checkPrgNo(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thumbnail prgNo error  prgNo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;->mPrgNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;->mThumbnail:[B

    array-length v0, v0

    const v1, 0x64000

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;->mThumbnail:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_4

    .line 247
    :cond_3
    sget-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "StRecCmClient"

    const-string v2, "Thumbnail size error"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    const/4 v0, -0x3

    goto :goto_0

    .line 251
    :cond_4
    sget-object v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "StRecCmClient"

    const-string v2, "checkThumbnail() : END"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkTitle(Ljava/lang/String;)I
    .locals 5
    .param p0, "aTitle"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 286
    if-nez p0, :cond_0

    .line 287
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    invoke-virtual {v1, v2, p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    :goto_0
    return v0

    .line 292
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x12c

    if-le v1, v2, :cond_2

    .line 294
    :cond_1
    sget-object v1, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCheckDataUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "StRecCmClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "false by Title length -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
