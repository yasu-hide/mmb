.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConstantsSv;
.super Ljava/lang/Object;
.source "MmbCfConstantsSv.java"


# static fields
.field public static final AREACODE_MCC_001:Ljava/lang/String; = "001"

.field public static final AREACODE_MCC_JPN:Ljava/lang/String; = "440"

.field public static final AREACODE_MCC_JPN_2:Ljava/lang/String; = "441"

.field public static final ASSIGN_ID:I = 0x1

.field public static final ASSIGN_ID_RELEASE:I = 0x0

.field public static final BATTERY_CHARGING:I = 0x1

.field public static final BATTERY_DISCHARGING:I = 0x3

.field public static final BATTERY_FULL:I = 0x2

.field public static final BATTERY_LIMIT:I = 0x14

.field public static final BATTERY_NOT_CHARGING:I = 0x0

.field public static final BATTERY_SERVICE_LIMIT:I = 0x5

.field public static final BATTERY_UNKNOWN:I = -0x1

.field public static final CALL_OTHER_APP:I = 0x0

.field public static final CALL_TIMER_THREAD:I = 0x1

.field public static final CONFLICT_RESULT_DECODER:I = 0xb

.field public static final CONFLICT_RESULT_INVALID_AUTO:I = 0x9

.field public static final CONFLICT_RESULT_LIBRARY:I = 0xa

.field public static final CONFLICT_RESULT_MAX:I = 0x2

.field public static final CONFLICT_RESULT_NO_MCC:I = 0x4

.field public static final CONFLICT_RESULT_NO_MEDIA:I = 0x7

.field public static final CONFLICT_RESULT_NO_SUPPORT_UIM:I = 0x6

.field public static final CONFLICT_RESULT_NO_UIM:I = 0x5

.field public static final CONFLICT_RESULT_NW_OUTSIDE:I = 0x3

.field public static final CONFLICT_RESULT_OK:I = 0x0

.field public static final CONFLICT_RESULT_REC_CONTENT_PLAYING:I = 0xd

.field public static final CONFLICT_RESULT_TS_DIFFER:I = 0x1

.field public static final CONFLICT_RESULT_TUNER:I = 0x8

.field public static final CONFLICT_RESULT_TUNER_USING:I = 0xc

.field private static final CONFLICT_TYPE_ALL_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONFLICT_TYPE_AUTO:I = 0x400

.field public static final CONFLICT_TYPE_BATTERY_ERROR:I = 0x0

.field public static final CONFLICT_TYPE_CF_DIFFER_TS:I = 0x3

.field public static final CONFLICT_TYPE_CF_END_REQUEST:I = 0x2

.field public static final CONFLICT_TYPE_CHECK_FOREIGN:I = 0x2000

.field public static final CONFLICT_TYPE_FC_COMPLEMENT_AUTO:I = 0x3c0c

.field public static final CONFLICT_TYPE_FC_COMPLEMENT_FDT_AUTO_SINGLE:I = 0x3c1e

.field public static final CONFLICT_TYPE_FC_COMPLEMENT_FDT_AUTO_WITH_AUTOCMPL:I = 0x3c1e

.field public static final CONFLICT_TYPE_FC_COMPLEMENT_FDT_MANUAL:I = 0x381e

.field public static final CONFLICT_TYPE_FC_COMPLEMENT_MANUAL:I = 0x380c

.field public static final CONFLICT_TYPE_FC_GET_AUTO:I = 0xad00

.field public static final CONFLICT_TYPE_FC_GET_MANUAL:I = 0xa900

.field public static final CONFLICT_TYPE_FC_VW_MP4:I = 0x216

.field public static final CONFLICT_TYPE_FC_VW_WEB:I = 0x218

.field public static final CONFLICT_TYPE_GET_LICENCE_AUTO:I = 0x3412

.field public static final CONFLICT_TYPE_GET_LICENCE_MANUAL:I = 0x3012

.field public static final CONFLICT_TYPE_GET_RECOMMEND_AUTO:I = 0x3414

.field public static final CONFLICT_TYPE_META_AIR_A_AUTO:I = 0xa502

.field public static final CONFLICT_TYPE_META_AIR_B_AUTO:I = 0xa504

.field public static final CONFLICT_TYPE_META_NET:I = 0x100e

.field private static final CONFLICT_TYPE_NAME_COMPLEMENT_FDT:I = 0x1e

.field private static final CONFLICT_TYPE_NAME_FC_COMPLEMENT:I = 0xc

.field private static final CONFLICT_TYPE_NAME_FC_GET:I = 0x0

.field private static final CONFLICT_TYPE_NAME_FC_VW_MP4:I = 0x16

.field private static final CONFLICT_TYPE_NAME_FC_VW_WEB:I = 0x18

.field private static final CONFLICT_TYPE_NAME_GET_LICENCE:I = 0x12

.field private static final CONFLICT_TYPE_NAME_GET_RECOMMEND:I = 0x14

.field private static final CONFLICT_TYPE_NAME_META_AIR_A:I = 0x2

.field private static final CONFLICT_TYPE_NAME_META_AIR_B:I = 0x4

.field private static final CONFLICT_TYPE_NAME_META_NET:I = 0xe

.field private static final CONFLICT_TYPE_NAME_REC_PLAYING:I = 0x1c

.field private static final CONFLICT_TYPE_NAME_SCAN:I = 0xa

.field private static final CONFLICT_TYPE_NAME_SEND_LOG:I = 0x10

.field private static final CONFLICT_TYPE_NAME_STREAMING:I = 0x6

.field private static final CONFLICT_TYPE_NAME_STREAMING_REC:I = 0x1a

.field private static final CONFLICT_TYPE_NAME_TUNING:I = 0x8

.field public static final CONFLICT_TYPE_REC_PLAYING:I = 0x8a1c

.field public static final CONFLICT_TYPE_SCAN:I = 0xa10a

.field public static final CONFLICT_TYPE_SEND_LOG_AUTO:I = 0x3410

.field public static final CONFLICT_TYPE_STREAMING:I = 0xa306

.field public static final CONFLICT_TYPE_STREAMING_REC:I = 0xa91a

.field public static final CONFLICT_TYPE_ST_REC:I = 0x8000

.field public static final CONFLICT_TYPE_SYSTEM_ERROR:I = 0x1

.field public static final CONFLICT_TYPE_TUNING:I = 0x108

.field public static final CONFLICT_TYPE_USE_DECORDER:I = 0x200

.field public static final CONFLICT_TYPE_USE_HTTP:I = 0x1000

.field public static final CONFLICT_TYPE_USE_SD_CORD:I = 0x800

.field public static final CONFLICT_TYPE_USE_TUNNER:I = 0x100

.field public static final INTENT_ACTION:Ljava/lang/String; = "com.nttdocomo.mmb.android.mmbsv.process.arbitration.MmbCfConflictModuleSv"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final NETWORK_3G_ONLY_CONNECTED:I = 0x1

.field public static final NETWORK_BOTH_CONNECTED:I = 0x0

.field public static final NETWORK_BOTH_DISCONNECTED:I = 0x3

.field public static final NETWORK_WIFI_ONLY_CONNECTED:I = 0x2

.field private static final ONFLICT_TYPE_MAX_VALUE:I = 0x3

.field public static final RELEASE_FAILED:I = -0x1

.field public static final RELEASE_RUNNING:I = 0x2

.field public static final RELEASE_SUCCESS:I = 0x0

.field public static final RELEASE_TIMEOUT:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x3c1e

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const v3, 0xa900

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0xad00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0xa502

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0xa504

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0xa10a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0xa306

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x108

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x380c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x3c0c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x100e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x3410

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x3012

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x3412

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x3414

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x216

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x218

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const v3, 0xa91a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const v3, 0x8a1c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const/16 v3, 0x381e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConstantsSv;->CONFLICT_TYPE_ALL_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isErrorCodeValue(I)Z
    .locals 2
    .param p0, "aErrorCode"    # I

    .prologue
    .line 546
    if-ltz p0, :cond_0

    const/4 v1, 0x3

    if-gt p0, v1, :cond_0

    .line 548
    const/4 v0, 0x1

    .line 555
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 550
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public static isErrorCodeValueTuner(I)Z
    .locals 2
    .param p0, "aErrorCode"    # I

    .prologue
    .line 573
    if-ltz p0, :cond_0

    const/4 v1, 0x1

    if-gt p0, v1, :cond_0

    .line 575
    const/4 v0, 0x1

    .line 582
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 577
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public static isServiceTypeValue(I)Z
    .locals 4
    .param p0, "aServiceType"    # I

    .prologue
    .line 519
    const/4 v1, -0x1

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConstantsSv;->CONFLICT_TYPE_ALL_LIST:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 520
    const/4 v0, 0x1

    .line 527
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 522
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method
