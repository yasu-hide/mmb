.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;
.super Ljava/lang/Object;
.source "MmbCaCasDrmUtilitySv.java"


# static fields
.field private static final ALL_ENTITY_ID:[B

.field private static final DIGIT_CHAR:[C

.field public static final TIME_ZONE_TOKYO:Ljava/util/TimeZone;

.field public static final TIME_ZONE_UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->ALL_ENTITY_ID:[B

    .line 135
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->DIGIT_CHAR:[C

    .line 165
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->TIME_ZONE_UTC:Ljava/util/TimeZone;

    .line 168
    const-string v0, "Asia/Tokyo"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->TIME_ZONE_TOKYO:Ljava/util/TimeZone;

    return-void

    .line 132
    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
    .end array-data

    .line 135
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static checkBatteryStatus(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z
    .locals 1
    .param p0, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 831
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->checkBatteryStatus(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)Z

    move-result v0

    return v0
.end method

.method public static checkBatteryStatus(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;I)Z
    .locals 14
    .param p0, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p1, "aBattLevelMin"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v13, 0x1

    .line 771
    const/4 v7, 0x1

    .line 773
    .local v7, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v3

    .line 774
    .local v3, "conflictmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v6

    .line 777
    .local v6, "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getBatteryStatus()I

    move-result v2

    .line 778
    .local v2, "battStatus":I
    if-eq v2, v11, :cond_0

    if-eq v2, v13, :cond_0

    .line 781
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getBatteryLevel()I

    move-result v0

    .line 783
    .local v0, "battLevel":I
    const/4 v9, 0x7

    invoke-virtual {v6, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v8

    .line 785
    .local v8, "sbattLevelMin":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9, p1}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 787
    .local v1, "battLevelMin":I
    if-gt v0, v1, :cond_0

    .line 791
    const/4 v7, 0x0

    .line 804
    .end local v0    # "battLevel":I
    .end local v1    # "battLevelMin":I
    .end local v8    # "sbattLevelMin":Ljava/lang/String;
    :cond_0
    return v7

    .line 794
    .end local v2    # "battStatus":I
    .end local v3    # "conflictmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v6    # "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :catch_0
    move-exception v4

    .line 795
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v9, -0x80000000

    const-string v10, "Error occurred."

    invoke-direct {v5, v9, v10, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 798
    .local v5, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v9, "[%d] %s"

    new-array v10, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 799
    throw v5
.end method

.method public static checkLicenseId(Ljava/lang/String;)V
    .locals 5
    .param p0, "aLicenseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 925
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 929
    return-void

    .line 931
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v1, -0x1

    const-string v2, "LicenseId is out of range."

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 934
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s (%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 935
    throw v0
.end method

.method public static checkServiceFatalException(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;)V
    .locals 5
    .param p0, "aException"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    .prologue
    .line 649
    const/high16 v1, -0x1000000

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    if-eq v1, v2, :cond_0

    const/high16 v1, -0x80000000

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    if-ne v1, v2, :cond_1

    .line 651
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    .line 652
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "[%d] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 653
    throw v0

    .line 658
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_1
    return-void
.end method

.method public static getAllEntityId()[B
    .locals 1

    .prologue
    .line 735
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->ALL_ENTITY_ID:[B

    .line 739
    .local v0, "result":[B
    return-object v0
.end method

.method public static getAribParentalRationCS2PreferenceConstant(Ljava/lang/String;)I
    .locals 5
    .param p0, "aParentalGuidance"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xc

    .line 461
    const-string v2, "R-4"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 465
    const/4 v1, 0x4

    .line 555
    :cond_0
    :goto_0
    return v1

    .line 466
    :cond_1
    const-string v2, "R-5"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    const/4 v1, 0x5

    goto :goto_0

    .line 471
    :cond_2
    const-string v2, "R-6"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 475
    const/4 v1, 0x6

    goto :goto_0

    .line 476
    :cond_3
    const-string v2, "R-7"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 480
    const/4 v1, 0x7

    goto :goto_0

    .line 481
    :cond_4
    const-string v2, "R-8"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 485
    const/16 v1, 0x8

    goto :goto_0

    .line 486
    :cond_5
    const-string v2, "R-9"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 490
    const/16 v1, 0x9

    goto :goto_0

    .line 491
    :cond_6
    const-string v2, "R-10"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 495
    const/16 v1, 0xa

    goto :goto_0

    .line 496
    :cond_7
    const-string v2, "R-11"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 500
    const/16 v1, 0xb

    goto :goto_0

    .line 501
    :cond_8
    const-string v2, "PG-12"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    const-string v2, "R-12"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    const-string v1, "R-13"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 515
    const/16 v1, 0xd

    goto :goto_0

    .line 516
    :cond_9
    const-string v1, "R-14"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 520
    const/16 v1, 0xe

    goto :goto_0

    .line 521
    :cond_a
    const-string v1, "R-15"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 525
    const/16 v1, 0xf

    goto :goto_0

    .line 526
    :cond_b
    const-string v1, "R-16"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 530
    const/16 v1, 0x10

    goto/16 :goto_0

    .line 531
    :cond_c
    const-string v1, "R-17"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 535
    const/16 v1, 0x11

    goto/16 :goto_0

    .line 536
    :cond_d
    const-string v1, "R-18"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 540
    const/16 v1, 0x12

    goto/16 :goto_0

    .line 541
    :cond_e
    const-string v1, "R-19"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 545
    const/16 v1, 0x13

    goto/16 :goto_0

    .line 546
    :cond_f
    const-string v1, "R-20"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 550
    const/16 v1, 0x14

    goto/16 :goto_0

    .line 551
    :cond_10
    const-string v1, "G"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 555
    const v1, 0x7fffffff

    goto/16 :goto_0

    .line 557
    :cond_11
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x1000008

    const-string v2, "Invalid parental rate."

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 560
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s (%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    throw v0
.end method

.method public static getBcd(B)I
    .locals 4
    .param p0, "aValue"    # B

    .prologue
    .line 333
    ushr-int/lit8 v3, p0, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 334
    .local v2, "upper":I
    and-int/lit8 v0, p0, 0xf

    .line 335
    .local v0, "lower":I
    mul-int/lit8 v3, v2, 0xa

    add-int v1, v3, v0

    .line 339
    .local v1, "result":I
    return v1
.end method

.method public static getCarrierNumber(Ljava/lang/String;)I
    .locals 8
    .param p0, "aOperatorName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 601
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "operatorlow":Ljava/lang/String;
    const-string v5, "ntt docomo"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 616
    :goto_0
    return v2

    .line 607
    :cond_0
    const-string v5, "kddi"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 611
    goto :goto_0

    .line 612
    :cond_1
    const-string v5, "softbank"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    .line 616
    goto :goto_0

    .line 618
    :cond_2
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v5, -0x2000008

    const-string v6, "Invalid operator name."

    invoke-direct {v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 621
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    aput-object p0, v6, v4

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 623
    throw v0
.end method

.method public static getCrid2Authority(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x7

    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "crid://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 190
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    .line 191
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 201
    .end local v0    # "index":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDate([B)Ljava/util/Date;
    .locals 12
    .param p0, "aMjdByte"    # [B

    .prologue
    .line 270
    const/4 v5, 0x0

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v8, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    add-int v1, v5, v8

    .line 271
    .local v1, "mjd":I
    int-to-double v8, v1

    const-wide v10, 0x41424f8040000000L    # 2400000.5

    add-double v2, v8, v10

    .line 274
    .local v2, "jd":D
    const-wide v8, 0x41429ec5c0000000L    # 2440587.5

    sub-double v8, v2, v8

    const-wide v10, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v8, v10

    double-to-long v6, v8

    .line 275
    .local v6, "t":J
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->TIME_ZONE_TOKYO:Ljava/util/TimeZone;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 276
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 277
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 281
    .local v4, "result":Ljava/util/Date;
    return-object v4
.end method

.method public static getRtProgramId(Ljava/lang/String;)I
    .locals 8
    .param p0, "aLicenseId"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x10

    .line 958
    const/16 v4, 0xc

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 960
    .local v3, "rtpid":Ljava/lang/String;
    const/16 v4, 0x10

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 971
    .local v2, "result":I
    return v2

    .line 961
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 962
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v4, -0x1

    const-string v5, "LIT/LicenseID format is invalid."

    invoke-direct {v1, v4, v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 965
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v4, "[%d] %s (%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p0, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 966
    throw v1
.end method

.method public static getSecureClock(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J
    .locals 9
    .param p0, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v2

    .line 885
    .local v2, "preferenceModule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClockForCasdrm()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 889
    .local v4, "result":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 890
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v3, -0x1000000

    const-string v6, "Failed to get secure clock."

    invoke-direct {v1, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 894
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    throw v1

    .line 886
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v4    # "result":J
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-wide/high16 v4, -0x8000000000000000L

    .restart local v4    # "result":J
    goto :goto_0

    .line 900
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_0
    return-wide v4
.end method

.method public static getTermIdFromDictionary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "aUri"    # Ljava/lang/String;
    .param p1, "aDicName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2f

    .line 851
    const/4 v2, 0x0

    .line 852
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 853
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 854
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 855
    .local v0, "beforeLastSlash":I
    if-ltz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 856
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 862
    .end local v0    # "beforeLastSlash":I
    :cond_0
    return-object v2
.end method

.method public static getTime(Ljava/util/Date;[B)Ljava/util/Date;
    .locals 5
    .param p0, "aDate"    # Ljava/util/Date;
    .param p1, "aTimes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 303
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->TIME_ZONE_TOKYO:Ljava/util/TimeZone;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 304
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 305
    const/16 v2, 0xb

    aget-byte v3, p1, v4

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getBcd(B)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 306
    const/16 v2, 0xc

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getBcd(B)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 307
    const/16 v2, 0xd

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getBcd(B)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 308
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 309
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 313
    .local v1, "result":Ljava/util/Date;
    return-object v1
.end method

.method public static toByte(Ljava/lang/String;)[B
    .locals 7
    .param p0, "aValues"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 361
    :try_start_0
    const-string v3, "Shift_JIS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 365
    .local v2, "result":[B
    return-object v2

    .line 366
    .end local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v3, -0x80000000

    invoke-direct {v1, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 369
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    throw v1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 9
    .param p0, "aValues"    # [B

    .prologue
    .line 419
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v5, "result":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 421
    const/4 v6, 0x0

    .line 436
    :goto_0
    return-object v6

    .line 423
    :cond_0
    array-length v0, p0

    .line 424
    .local v0, "arrlen":I
    const/4 v3, 0x2

    .line 425
    .local v3, "charlen":I
    new-array v2, v3, [C

    .line 426
    .local v2, "charbuf":[C
    array-length v6, v2

    mul-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 427
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 428
    aget-byte v1, p0, v4

    .line 429
    .local v1, "b":B
    const/4 v6, 0x0

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->DIGIT_CHAR:[C

    and-int/lit16 v8, v1, 0xff

    shr-int/lit8 v8, v8, 0x4

    aget-char v7, v7, v8

    aput-char v7, v2, v6

    .line 430
    const/4 v6, 0x1

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->DIGIT_CHAR:[C

    and-int/lit8 v8, v1, 0xf

    aget-char v7, v7, v8

    aput-char v7, v2, v6

    .line 431
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 427
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 436
    .end local v1    # "b":B
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 7
    .param p0, "aValues"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 393
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "Shift_JIS"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .local v2, "result":Ljava/lang/String;
    return-object v2

    .line 398
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v3, -0x80000000

    invoke-direct {v1, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/Throwable;)V

    .line 401
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    throw v1
.end method
