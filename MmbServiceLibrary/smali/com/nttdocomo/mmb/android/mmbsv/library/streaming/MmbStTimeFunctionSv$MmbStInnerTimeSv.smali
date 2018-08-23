.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;
.super Ljava/lang/Object;
.source "MmbStTimeFunctionSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmbStInnerTimeSv"
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private hour:I

.field private minute:I

.field private second:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "aTime"    # I

    .prologue
    const/16 v1, -0x3e8

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->setTime(I)Z

    move-result v0

    .line 144
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 146
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->hour:I

    .line 147
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->minute:I

    .line 148
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->second:I

    .line 153
    :cond_0
    return-void
.end method

.method private toIntegerFromBcd(I)I
    .locals 6
    .param p1, "aBcd"    # I

    .prologue
    const/16 v5, 0x9

    .line 238
    const/16 v2, -0x3e8

    .line 240
    .local v2, "result":I
    and-int/lit8 v1, p1, 0xf

    .line 243
    .local v1, "low":I
    if-ltz v1, :cond_0

    if-ge v5, v1, :cond_1

    :cond_0
    move v3, v2

    .line 267
    .end local v2    # "result":I
    .local v3, "result":I
    :goto_0
    return v3

    .line 251
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_1
    and-int/lit16 v4, p1, 0xf0

    shr-int/lit8 v0, v4, 0x4

    .line 253
    .local v0, "high":I
    if-ltz v0, :cond_2

    if-ge v5, v0, :cond_3

    :cond_2
    move v3, v2

    .line 257
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0

    .line 259
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_3
    mul-int/lit8 v0, v0, 0xa

    .line 262
    add-int v2, v1, v0

    move v3, v2

    .line 267
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_0
.end method


# virtual methods
.method checkHms()Z
    .locals 8

    .prologue
    const/16 v7, 0x3b

    const/16 v6, 0x30

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 326
    const/4 v0, 0x1

    .line 329
    .local v0, "result":Z
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->hour:I

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->minute:I

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->second:I

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v1

    .line 338
    :cond_1
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->minute:I

    if-ge v7, v2, :cond_2

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "02 aMinute 59 over = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->minute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    const/4 v0, 0x0

    .line 344
    :cond_2
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->second:I

    if-ge v7, v2, :cond_3

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "02 aSecond 59 over = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->second:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    const/4 v0, 0x0

    .line 350
    :cond_3
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->hour:I

    if-ge v6, v2, :cond_5

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "02 aHour 48 over = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->hour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    const/4 v0, 0x0

    :cond_4
    :goto_1
    move v1, v0

    .line 365
    goto :goto_0

    .line 353
    :cond_5
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->hour:I

    if-ne v6, v2, :cond_4

    .line 356
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->minute:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->second:I

    if-eqz v2, :cond_4

    .line 357
    const-string v2, "max time"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getHour()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->hour:I

    return v0
.end method

.method getMinute()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->minute:I

    return v0
.end method

.method getSecond()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->second:I

    return v0
.end method

.method setTime(I)Z
    .locals 5
    .param p1, "aTime"    # I

    .prologue
    .line 289
    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v0, v4, 0xff

    .line 290
    .local v0, "localhour":I
    int-to-short v4, v0

    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->toIntegerFromBcd(I)I

    move-result v4

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->hour:I

    .line 293
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v1, v4, 0xff

    .line 294
    .local v1, "localmin":I
    int-to-short v4, v1

    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->toIntegerFromBcd(I)I

    move-result v4

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->minute:I

    .line 297
    and-int/lit16 v2, p1, 0xff

    .line 298
    .local v2, "localsecond":I
    int-to-short v4, v2

    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->toIntegerFromBcd(I)I

    move-result v4

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->second:I

    .line 301
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->checkHms()Z

    move-result v3

    .line 306
    .local v3, "result":Z
    return v3
.end method
