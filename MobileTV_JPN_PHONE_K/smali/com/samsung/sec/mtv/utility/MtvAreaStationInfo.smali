.class public Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;
.super Ljava/lang/Object;
.source "MtvAreaStationInfo.java"


# static fields
.field public static final AREA_LOCAL:[[[Ljava/lang/String;

.field public static final AREA_LOCAL_ID:[[[I

.field public static final AREA_PROVINCES:[[Ljava/lang/String;

.field public static final AREA_REGION:[Ljava/lang/String;

.field public static final AREA_STATION:[[Ljava/lang/String;

.field public static final CHANNEL_NAME:I = 0x0

.field public static final GGUIDE_STATION_ARRAY_LENGTH:I = 0x4

.field public static final PHYSICAL_CH:I = 0x1

.field public static final PHYSICAL_STRING:I = 0x2

.field public static final SERVICE_ID_END:I = 0x4

.field public static final SERVICE_ID_START:I = 0x3

.field public static final STATION_ARRAY_LENGTH:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DTV_AREA_1"

    aput-object v1, v0, v6

    const-string v1, "DTV_AREA_2"

    aput-object v1, v0, v7

    const-string v1, "DTV_AREA_3"

    aput-object v1, v0, v8

    const-string v1, "DTV_AREA_4"

    aput-object v1, v0, v9

    const-string v1, "DTV_AREA_5"

    aput-object v1, v0, v10

    const/4 v1, 0x5

    const-string v2, "DTV_AREA_6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DTV_AREA_7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DTV_AREA_8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->AREA_REGION:[Ljava/lang/String;

    .line 10
    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DTV_AREA_1_1"

    aput-object v2, v1, v6

    const-string v2, "DTV_AREA_1_2"

    aput-object v2, v1, v7

    const-string v2, "DTV_AREA_1_3"

    aput-object v2, v1, v8

    const-string v2, "DTV_AREA_1_4"

    aput-object v2, v1, v9

    const-string v2, "DTV_AREA_1_5"

    aput-object v2, v1, v10

    const/4 v2, 0x5

    const-string v3, "DTV_AREA_1_6"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "DTV_AREA_1_7"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DTV_AREA_2_1"

    aput-object v2, v1, v6

    const-string v2, "DTV_AREA_2_2"

    aput-object v2, v1, v7

    const-string v2, "DTV_AREA_2_3"

    aput-object v2, v1, v8

    const-string v2, "DTV_AREA_2_4"

    aput-object v2, v1, v9

    const-string v2, "DTV_AREA_2_5"

    aput-object v2, v1, v10

    const/4 v2, 0x5

    const-string v3, "DTV_AREA_2_6"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "DTV_AREA_2_7"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DTV_AREA_3_1"

    aput-object v2, v1, v6

    const-string v2, "DTV_AREA_3_2"

    aput-object v2, v1, v7

    const-string v2, "DTV_AREA_3_3"

    aput-object v2, v1, v8

    const-string v2, "DTV_AREA_3_4"

    aput-object v2, v1, v9

    const-string v2, "DTV_AREA_3_5"

    aput-object v2, v1, v10

    const/4 v2, 0x5

    const-string v3, "DTV_AREA_3_6"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "DTV_AREA_4_1"

    aput-object v2, v1, v6

    const-string v2, "DTV_AREA_4_2"

    aput-object v2, v1, v7

    const-string v2, "DTV_AREA_4_3"

    aput-object v2, v1, v8

    const-string v2, "DTV_AREA_4_4"

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DTV_AREA_5_1"

    aput-object v2, v1, v6

    const-string v2, "DTV_AREA_5_2"

    aput-object v2, v1, v7

    const-string v2, "DTV_AREA_5_3"

    aput-object v2, v1, v8

    const-string v2, "DTV_AREA_5_4"

    aput-object v2, v1, v9

    const-string v2, "DTV_AREA_5_5"

    aput-object v2, v1, v10

    const/4 v2, 0x5

    const-string v3, "DTV_AREA_5_6"

    aput-object v3, v1, v2

    aput-object v1, v0, v10

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_AREA_6_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_6_2"

    aput-object v3, v2, v7

    const-string v3, "DTV_AREA_6_3"

    aput-object v3, v2, v8

    const-string v3, "DTV_AREA_6_4"

    aput-object v3, v2, v9

    const-string v3, "DTV_AREA_6_5"

    aput-object v3, v2, v10

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "DTV_AREA_7_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_7_2"

    aput-object v3, v2, v7

    const-string v3, "DTV_AREA_7_3"

    aput-object v3, v2, v8

    const-string v3, "DTV_AREA_7_4"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_AREA_8_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_8_2"

    aput-object v3, v2, v7

    const-string v3, "DTV_AREA_8_3"

    aput-object v3, v2, v8

    const-string v3, "DTV_AREA_8_4"

    aput-object v3, v2, v9

    const-string v3, "DTV_AREA_8_5"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_AREA_8_6"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "DTV_AREA_8_7"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "DTV_AREA_8_8"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->AREA_PROVINCES:[[Ljava/lang/String;

    .line 21
    const/16 v0, 0x8

    new-array v0, v0, [[[Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [[Ljava/lang/String;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_AREA_1_1_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_1_1_2"

    aput-object v3, v2, v7

    const-string v3, "DTV_AREA_1_1_3"

    aput-object v3, v2, v8

    const-string v3, "DTV_AREA_1_1_4"

    aput-object v3, v2, v9

    const-string v3, "DTV_AREA_1_1_5"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_AREA_1_1_6"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "DTV_AREA_1_1_7"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "DTV_AREA_1_1_8"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "DTV_AREA_1_1_9"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "DTV_AREA_1_1_10"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_AREA_1_1_11"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "DTV_AREA_1_1_12"

    aput-object v4, v2, v3

    aput-object v2, v1, v6

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "DTV_AREA_1_2_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_1_2_2"

    aput-object v3, v2, v7

    const-string v3, "DTV_AREA_1_2_3"

    aput-object v3, v2, v8

    aput-object v2, v1, v7

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "DTV_AREA_1_3_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_1_3_2"

    aput-object v3, v2, v7

    const-string v3, "DTV_AREA_1_3_3"

    aput-object v3, v2, v8

    aput-object v2, v1, v8

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "DTV_AREA_1_4_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_1_4_2"

    aput-object v3, v2, v7

    const-string v3, "DTV_AREA_1_4_3"

    aput-object v3, v2, v8

    aput-object v2, v1, v9

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "DTV_AREA_1_5_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_1_5_2"

    aput-object v3, v2, v7

    const-string v3, "DTV_AREA_1_5_3"

    aput-object v3, v2, v8

    aput-object v2, v1, v10

    const/4 v2, 0x5

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "DTV_AREA_1_6_1"

    aput-object v4, v3, v6

    const-string v4, "DTV_AREA_1_6_2"

    aput-object v4, v3, v7

    const-string v4, "DTV_AREA_1_6_3"

    aput-object v4, v3, v8

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "DTV_AREA_1_7_1"

    aput-object v4, v3, v6

    const-string v4, "DTV_AREA_1_7_2"

    aput-object v4, v3, v7

    const-string v4, "DTV_AREA_1_7_3"

    aput-object v4, v3, v8

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DTV_AREA_2_1_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_2_1_2"

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DTV_AREA_2_2_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_2_2_2"

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DTV_AREA_2_3_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_2_3_2"

    aput-object v3, v2, v7

    aput-object v2, v1, v8

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "DTV_AREA_2_4_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_2_4_2"

    aput-object v3, v2, v7

    const-string v3, "DTV_AREA_2_4_3"

    aput-object v3, v2, v8

    aput-object v2, v1, v9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DTV_AREA_2_5_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_2_5_2"

    aput-object v3, v2, v7

    aput-object v2, v1, v10

    const/4 v2, 0x5

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "DTV_AREA_2_6_1"

    aput-object v4, v3, v6

    const-string v4, "DTV_AREA_2_6_2"

    aput-object v4, v3, v7

    const-string v4, "DTV_AREA_2_6_3"

    aput-object v4, v3, v8

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "DTV_AREA_2_7_1"

    aput-object v4, v3, v6

    const-string v4, "DTV_AREA_2_7_2"

    aput-object v4, v3, v7

    const-string v4, "DTV_AREA_2_7_3"

    aput-object v4, v3, v8

    const-string v4, "DTV_AREA_2_7_4"

    aput-object v4, v3, v9

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DTV_AREA_3_1_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_3_1_2"

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DTV_AREA_3_2_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_3_2_2"

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DTV_AREA_3_3_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_3_3_2"

    aput-object v3, v2, v7

    aput-object v2, v1, v8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DTV_AREA_3_4_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_3_4_2"

    aput-object v3, v2, v7

    aput-object v2, v1, v9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "DTV_AREA_3_5_1"

    aput-object v3, v2, v6

    aput-object v2, v1, v10

    const/4 v2, 0x5

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "DTV_AREA_3_6_1"

    aput-object v4, v3, v6

    const-string v4, "DTV_AREA_3_6_2"

    aput-object v4, v3, v7

    const-string v4, "DTV_AREA_3_6_3"

    aput-object v4, v3, v8

    const-string v4, "DTV_AREA_3_6_4"

    aput-object v4, v3, v9

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    new-array v1, v10, [[Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "DTV_AREA_4_1_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_4_1_2"

    aput-object v3, v2, v7

    const-string v3, "DTV_AREA_4_1_3"

    aput-object v3, v2, v8

    aput-object v2, v1, v6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_AREA_4_2_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_4_2_2"

    aput-object v3, v2, v7

    const-string v3, "DTV_AREA_4_2_3"

    aput-object v3, v2, v8

    const-string v3, "DTV_AREA_4_2_4"

    aput-object v3, v2, v9

    const-string v3, "DTV_AREA_4_2_5"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_AREA_4_2_6"

    aput-object v4, v2, v3

    aput-object v2, v1, v7

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "DTV_AREA_4_3_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_4_3_2"

    aput-object v3, v2, v7

    const-string v3, "DTV_AREA_4_3_3"

    aput-object v3, v2, v8

    aput-object v2, v1, v8

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "DTV_AREA_4_4_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_4_4_2"

    aput-object v3, v2, v7

    const-string v3, "DTV_AREA_4_4_3"

    aput-object v3, v2, v8

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x6

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "DTV_AREA_5_1_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_5_1_2"

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "DTV_AREA_5_2_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_5_2_2"

    aput-object v3, v2, v7

    const-string v3, "DTV_AREA_5_2_3"

    aput-object v3, v2, v8

    aput-object v2, v1, v7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "DTV_AREA_5_3_1"

    aput-object v3, v2, v6

    aput-object v2, v1, v8

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "DTV_AREA_5_4_1"

    aput-object v3, v2, v6

    const-string v3, "DTV_AREA_5_4_2"

    aput-object v3, v2, v7

    const-string v3, "DTV_AREA_5_4_3"

    aput-object v3, v2, v8

    const-string v3, "DTV_AREA_5_4_4"

    aput-object v3, v2, v9

    aput-object v2, v1, v9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "DTV_AREA_5_5_1"

    aput-object v3, v2, v6

    aput-object v2, v1, v10

    const/4 v2, 0x5

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "DTV_AREA_5_6_1"

    aput-object v4, v3, v6

    const-string v4, "DTV_AREA_5_6_2"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    aput-object v1, v0, v10

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [[Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "DTV_AREA_6_1_1"

    aput-object v4, v3, v6

    aput-object v3, v2, v6

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "DTV_AREA_6_2_1"

    aput-object v4, v3, v6

    const-string v4, "DTV_AREA_6_2_2"

    aput-object v4, v3, v7

    aput-object v3, v2, v7

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "DTV_AREA_6_3_1"

    aput-object v4, v3, v6

    const-string v4, "DTV_AREA_6_3_2"

    aput-object v4, v3, v7

    const-string v4, "DTV_AREA_6_3_3"

    aput-object v4, v3, v8

    aput-object v3, v2, v8

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "DTV_AREA_6_4_1"

    aput-object v4, v3, v6

    const-string v4, "DTV_AREA_6_4_2"

    aput-object v4, v3, v7

    const-string v4, "DTV_AREA_6_4_3"

    aput-object v4, v3, v8

    const-string v4, "DTV_AREA_6_4_4"

    aput-object v4, v3, v9

    aput-object v3, v2, v9

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "DTV_AREA_6_5_1"

    aput-object v4, v3, v6

    const-string v4, "DTV_AREA_6_5_2"

    aput-object v4, v3, v7

    const-string v4, "DTV_AREA_6_5_3"

    aput-object v4, v3, v8

    const-string v4, "DTV_AREA_6_5_4"

    aput-object v4, v3, v9

    aput-object v3, v2, v10

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v10, [[Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "DTV_AREA_7_1_1"

    aput-object v4, v3, v6

    aput-object v3, v2, v6

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "DTV_AREA_7_2_1"

    aput-object v4, v3, v6

    const-string v4, "DTV_AREA_7_2_2"

    aput-object v4, v3, v7

    aput-object v3, v2, v7

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "DTV_AREA_7_3_1"

    aput-object v4, v3, v6

    const-string v4, "DTV_AREA_7_3_2"

    aput-object v4, v3, v7

    const-string v4, "DTV_AREA_7_3_3"

    aput-object v4, v3, v8

    const-string v4, "DTV_AREA_7_3_4"

    aput-object v4, v3, v9

    aput-object v3, v2, v8

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "DTV_AREA_7_4_1"

    aput-object v4, v3, v6

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    new-array v2, v2, [[Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "DTV_AREA_8_1_1"

    aput-object v4, v3, v6

    const-string v4, "DTV_AREA_8_1_2"

    aput-object v4, v3, v7

    const-string v4, "DTV_AREA_8_1_3"

    aput-object v4, v3, v8

    const-string v4, "DTV_AREA_8_1_4"

    aput-object v4, v3, v9

    const-string v4, "DTV_AREA_8_1_5"

    aput-object v4, v3, v10

    aput-object v3, v2, v6

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "DTV_AREA_8_2_1"

    aput-object v4, v3, v6

    aput-object v3, v2, v7

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "DTV_AREA_8_3_1"

    aput-object v4, v3, v6

    const-string v4, "DTV_AREA_8_3_2"

    aput-object v4, v3, v7

    const-string v4, "DTV_AREA_8_3_3"

    aput-object v4, v3, v8

    aput-object v3, v2, v8

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "DTV_AREA_8_4_1"

    aput-object v4, v3, v6

    aput-object v3, v2, v9

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "DTV_AREA_8_5_1"

    aput-object v4, v3, v6

    const-string v4, "DTV_AREA_8_5_2"

    aput-object v4, v3, v7

    aput-object v3, v2, v10

    const/4 v3, 0x5

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "DTV_AREA_8_6_1"

    aput-object v5, v4, v6

    const-string v5, "DTV_AREA_8_6_2"

    aput-object v5, v4, v7

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "DTV_AREA_8_7_1"

    aput-object v5, v4, v6

    const-string v5, "DTV_AREA_8_7_2"

    aput-object v5, v4, v7

    const-string v5, "DTV_AREA_8_7_3"

    aput-object v5, v4, v8

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "DTV_AREA_8_8_1"

    aput-object v5, v4, v6

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->AREA_LOCAL:[[[Ljava/lang/String;

    .line 71
    const/16 v0, 0x8

    new-array v0, v0, [[[I

    const/4 v1, 0x7

    new-array v1, v1, [[I

    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v6

    new-array v2, v9, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v7

    new-array v2, v9, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v8

    new-array v2, v9, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v9

    new-array v2, v9, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v10

    const/4 v2, 0x5

    new-array v3, v9, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v9, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v1, v1, [[I

    new-array v2, v8, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v6

    new-array v2, v8, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v7

    new-array v2, v8, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v8

    new-array v2, v9, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v9

    new-array v2, v8, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v10

    const/4 v2, 0x5

    new-array v3, v9, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v10, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [[I

    new-array v2, v8, [I

    fill-array-data v2, :array_e

    aput-object v2, v1, v6

    new-array v2, v8, [I

    fill-array-data v2, :array_f

    aput-object v2, v1, v7

    new-array v2, v8, [I

    fill-array-data v2, :array_10

    aput-object v2, v1, v8

    new-array v2, v8, [I

    fill-array-data v2, :array_11

    aput-object v2, v1, v9

    new-array v2, v7, [I

    const/16 v3, 0x39

    aput v3, v2, v6

    aput-object v2, v1, v10

    const/4 v2, 0x5

    new-array v3, v10, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    new-array v1, v10, [[I

    new-array v2, v9, [I

    fill-array-data v2, :array_13

    aput-object v2, v1, v6

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_14

    aput-object v2, v1, v7

    new-array v2, v9, [I

    fill-array-data v2, :array_15

    aput-object v2, v1, v8

    new-array v2, v9, [I

    fill-array-data v2, :array_16

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x6

    new-array v1, v1, [[I

    new-array v2, v8, [I

    fill-array-data v2, :array_17

    aput-object v2, v1, v6

    new-array v2, v9, [I

    fill-array-data v2, :array_18

    aput-object v2, v1, v7

    new-array v2, v7, [I

    const/16 v3, 0x52

    aput v3, v2, v6

    aput-object v2, v1, v8

    new-array v2, v10, [I

    fill-array-data v2, :array_19

    aput-object v2, v1, v9

    new-array v2, v7, [I

    const/16 v3, 0x57

    aput v3, v2, v6

    aput-object v2, v1, v10

    const/4 v2, 0x5

    new-array v3, v8, [I

    fill-array-data v3, :array_1a

    aput-object v3, v1, v2

    aput-object v1, v0, v10

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [[I

    new-array v3, v7, [I

    const/16 v4, 0x5a

    aput v4, v3, v6

    aput-object v3, v2, v6

    new-array v3, v8, [I

    fill-array-data v3, :array_1b

    aput-object v3, v2, v7

    new-array v3, v9, [I

    fill-array-data v3, :array_1c

    aput-object v3, v2, v8

    new-array v3, v10, [I

    fill-array-data v3, :array_1d

    aput-object v3, v2, v9

    new-array v3, v10, [I

    fill-array-data v3, :array_1e

    aput-object v3, v2, v10

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v10, [[I

    new-array v3, v7, [I

    const/16 v4, 0x68

    aput v4, v3, v6

    aput-object v3, v2, v6

    new-array v3, v8, [I

    fill-array-data v3, :array_1f

    aput-object v3, v2, v7

    new-array v3, v10, [I

    fill-array-data v3, :array_20

    aput-object v3, v2, v8

    new-array v3, v7, [I

    const/16 v4, 0x6f

    aput v4, v3, v6

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    new-array v2, v2, [[I

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_21

    aput-object v3, v2, v6

    new-array v3, v7, [I

    const/16 v4, 0x75

    aput v4, v3, v6

    aput-object v3, v2, v7

    new-array v3, v9, [I

    fill-array-data v3, :array_22

    aput-object v3, v2, v8

    new-array v3, v7, [I

    const/16 v4, 0x79

    aput v4, v3, v6

    aput-object v3, v2, v9

    new-array v3, v8, [I

    fill-array-data v3, :array_23

    aput-object v3, v2, v10

    const/4 v3, 0x5

    new-array v4, v8, [I

    fill-array-data v4, :array_24

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v9, [I

    fill-array-data v4, :array_25

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v7, [I

    const/16 v5, 0x81

    aput v5, v4, v6

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->AREA_LOCAL_ID:[[[I

    .line 130
    const/16 v0, 0x40

    new-array v0, v0, [[Ljava/lang/String;

    const/16 v1, 0x78

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DTV_CHANNEL_NAME_001"

    aput-object v2, v1, v6

    const-string v2, "19"

    aput-object v2, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v8

    const-string v2, "2990"

    aput-object v2, v1, v9

    const-string v2, "2997"

    aput-object v2, v1, v10

    const/4 v2, 0x5

    const-string v3, "DTV_CHANNEL_NAME_002"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "13"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "2"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "2988"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "298F"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "DTV_CHANNEL_NAME_003"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "15"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "3"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "2980"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "2987"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "DTV_CHANNEL_NAME_005"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "21"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "5"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "2998"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "299F"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "DTV_CHANNEL_NAME_006"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "23"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "29A0"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "29A7"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "DTV_CHANNEL_NAME_007"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "14"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "29B0"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "29B7"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "DTV_CHANNEL_NAME_008"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "25"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "29A8"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "29AF"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0x78

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DTV_CHANNEL_NAME_001"

    aput-object v2, v1, v6

    const-string v2, "19"

    aput-object v2, v1, v7

    const-string v2, "9"

    aput-object v2, v1, v8

    const-string v2, "3190"

    aput-object v2, v1, v9

    const-string v2, "3197"

    aput-object v2, v1, v10

    const/4 v2, 0x5

    const-string v3, "DTV_CHANNEL_NAME_009"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "13"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "10"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "3188"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "318F"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "DTV_CHANNEL_NAME_010"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "15"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "11"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "3180"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "3187"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "DTV_CHANNEL_NAME_005"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "23"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "12"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "3198"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "319F"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "DTV_CHANNEL_NAME_006"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "14"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "13"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "31A0"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "31A7"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "DTV_CHANNEL_NAME_007"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "21"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "14"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "31B0"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "31B7"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "DTV_CHANNEL_NAME_008"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "25"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "15"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "31A8"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "31AF"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0x78

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DTV_CHANNEL_NAME_001"

    aput-object v2, v1, v6

    const-string v2, "32"

    aput-object v2, v1, v7

    const-string v2, "16"

    aput-object v2, v1, v8

    const-string v2, "3D90"

    aput-object v2, v1, v9

    const-string v2, "3D97"

    aput-object v2, v1, v10

    const/4 v2, 0x5

    const-string v3, "DTV_CHANNEL_NAME_011"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "23"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "17"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "3D88"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "3D8F"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "DTV_CHANNEL_NAME_012"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "30"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "18"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "3D80"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "3D87"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "DTV_CHANNEL_NAME_005"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "29"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "19"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "3D98"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "3D9F"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "DTV_CHANNEL_NAME_006"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "31"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "20"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "3DA0"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "3DA7"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "DTV_CHANNEL_NAME_007"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "25"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "21"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "3DB0"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "3DB7"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "DTV_CHANNEL_NAME_008"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "33"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "22"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "3DA8"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "3DA7"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0x78

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DTV_CHANNEL_NAME_001"

    aput-object v2, v1, v6

    const-string v2, "19"

    aput-object v2, v1, v7

    const-string v2, "23"

    aput-object v2, v1, v8

    const-string v2, "3590"

    aput-object v2, v1, v9

    const-string v2, "3597"

    aput-object v2, v1, v10

    const/4 v2, 0x5

    const-string v3, "DTV_CHANNEL_NAME_013"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "13"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "24"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "3588"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "358F"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "DTV_CHANNEL_NAME_014"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "15"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "25"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "3580"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "3587"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "DTV_CHANNEL_NAME_005"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "21"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "26"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "3598"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "359F"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "DTV_CHANNEL_NAME_006"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "23"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "27"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "35A0"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "35A7"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "DTV_CHANNEL_NAME_007"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "17"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "28"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "35B0"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "35B7"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "DTV_CHANNEL_NAME_008"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "25"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "29"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "35A8"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "35AF"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/16 v1, 0x78

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DTV_CHANNEL_NAME_001"

    aput-object v2, v1, v6

    const-string v2, "45"

    aput-object v2, v1, v7

    const-string v2, "30"

    aput-object v2, v1, v8

    const-string v2, "3990"

    aput-object v2, v1, v9

    const-string v2, "3997"

    aput-object v2, v1, v10

    const/4 v2, 0x5

    const-string v3, "DTV_CHANNEL_NAME_015"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "29"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "31"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "3988"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "398F"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "DTV_CHANNEL_NAME_016"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "33"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "32"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "3980"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "3987"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "DTV_CHANNEL_NAME_005"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "31"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "33"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "3998"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "399F"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "DTV_CHANNEL_NAME_006"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "36"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "34"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "39A0"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "39A7"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "DTV_CHANNEL_NAME_007"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "41"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "35"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "39B0"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "39B7"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "DTV_CHANNEL_NAME_008"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "43"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "36"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "39A8"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "39AF"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "DTV_CHANNEL_NAME_004"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "4"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "FFFF"

    aput-object v3, v1, v2

    aput-object v1, v0, v10

    const/4 v1, 0x5

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_001"

    aput-object v3, v2, v6

    const-string v3, "22"

    aput-object v3, v2, v7

    const-string v3, "37"

    aput-object v3, v2, v8

    const-string v3, "4190"

    aput-object v3, v2, v9

    const-string v3, "4197"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_017"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "16"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "38"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "4188"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "418F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_018"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "39"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "4180"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "4187"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_005"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "31"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "40"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "4198"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "419F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_006"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "20"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "41"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "41A0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "41A7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_007"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "26"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "42"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "41B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "41B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_008"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "33"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "43"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "41A8"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "41AF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_001"

    aput-object v3, v2, v6

    const-string v3, "17"

    aput-object v3, v2, v7

    const-string v3, "44"

    aput-object v3, v2, v8

    const-string v3, "2D90"

    aput-object v3, v2, v9

    const-string v3, "2D97"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_019"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "14"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "45"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "2D88"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "2D8F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_020"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "46"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "2D80"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "2D87"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_005"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "15"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "47"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "2D98"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "2D9F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_006"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "48"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "2DA0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "2DA7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_007"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "19"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "49"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "2DB0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "2DB7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_008"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "50"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "2DA8"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "2DAF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_001"

    aput-object v3, v2, v6

    const-string v3, "41"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "4190"

    aput-object v3, v2, v9

    const-string v3, "4197"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_017"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "43"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "4188"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "418F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_018"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "4180"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "4187"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_005"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "45"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "4198"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "419F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_006"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "38"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "41A0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "41A7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_007"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "42"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "41B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "41B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_008"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "40"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "41A8"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "41AF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_001"

    aput-object v3, v2, v6

    const-string v3, "17"

    aput-object v3, v2, v7

    const-string v3, "44"

    aput-object v3, v2, v8

    const-string v3, "2990"

    aput-object v3, v2, v9

    const-string v3, "2997"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_002"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "29"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "2988"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "298F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_003"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "31"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "2980"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "2987"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_005"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "33"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "2998"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "299F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_006"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "20"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "29A0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "29A7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_007"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "30"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "29B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "29B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_008"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "29A8"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "29AF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_001"

    aput-object v3, v2, v6

    const-string v3, "41"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "3190"

    aput-object v3, v2, v9

    const-string v3, "3197"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_009"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "20"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "3188"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "318F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_010"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "28"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "3180"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "3187"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_005"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "32"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "3198"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "319F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_006"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "31A0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "31A7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_008"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "31"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "31A8"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "31AF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_001"

    aput-object v3, v2, v6

    const-string v3, "16"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "3190"

    aput-object v3, v2, v9

    const-string v3, "3197"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_009"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "20"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "3188"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "318F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_010"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "44"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "3180"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "3187"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_005"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "32"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "3198"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "319F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_006"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "42"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "31A0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "31A7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_008"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "31A8"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "31AF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_001"

    aput-object v3, v2, v6

    const-string v3, "22"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const-string v3, "3D90"

    aput-object v3, v2, v9

    const-string v3, "3D97"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_011"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "13"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "3D88"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "3D8F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_012"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "3D80"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "3D87"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_005"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "16"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "3D98"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "3D9F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_006"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "20"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "3DA0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "3DA7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_007"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "14"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "3DB0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "3DB7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_008"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "3DA8"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "3DA7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x77

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_021"

    aput-object v3, v2, v6

    const-string v3, "28"

    aput-object v3, v2, v7

    const-string v3, "51"

    aput-object v3, v2, v8

    const-string v3, "5990"

    aput-object v3, v2, v9

    const-string v3, "5997"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_022"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "13"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "52"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "5988"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "598F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_023"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "16"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "53"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "5980"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "5987"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_024"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "32"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "54"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "59A0"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "59A7"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_025"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "30"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "55"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "5998"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "599F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x77

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_021"

    aput-object v3, v2, v6

    const-string v3, "22"

    aput-object v3, v2, v7

    const-string v3, "51"

    aput-object v3, v2, v8

    const-string v3, "5990"

    aput-object v3, v2, v9

    const-string v3, "5997"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_022"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "14"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "52"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "5988"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "598F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_023"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "20"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "56"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "5980"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "5987"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_024"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "54"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "59A0"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "59A7"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_025"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "55"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "5998"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "599F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x77

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_021"

    aput-object v3, v2, v6

    const-string v3, "43"

    aput-object v3, v2, v7

    const-string v3, "51"

    aput-object v3, v2, v8

    const-string v3, "5990"

    aput-object v3, v2, v9

    const-string v3, "5997"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_022"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "47"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "52"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "5988"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "598F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_023"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "42"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "56"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "5980"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "5987"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_024"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "41"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "54"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "59A0"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "59A7"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_025"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "45"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "55"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "5998"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "599F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x77

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_026"

    aput-object v3, v2, v6

    const-string v3, "14"

    aput-object v3, v2, v7

    const-string v3, "57"

    aput-object v3, v2, v8

    const-string v3, "5180"

    aput-object v3, v2, v9

    const-string v3, "5187"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_027"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "13"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "58"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "5188"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "518F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_028"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "59"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "5198"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "519F"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_029"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "60"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "51A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "51AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_030"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "16"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "61"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "5190"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "5197"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_031"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "20"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "62"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "51A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "51A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x77

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_026"

    aput-object v3, v2, v6

    const-string v3, "14"

    aput-object v3, v2, v7

    const-string v3, "57"

    aput-object v3, v2, v8

    const-string v3, "5180"

    aput-object v3, v2, v9

    const-string v3, "5187"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_027"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "13"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "58"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "5188"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "518F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_028"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "59"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "5198"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "519F"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_029"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "60"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "51A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "51AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_030"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "20"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "61"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "5190"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "5197"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_031"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "16"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "62"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "51A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "51A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x77

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_026"

    aput-object v3, v2, v6

    const-string v3, "23"

    aput-object v3, v2, v7

    const-string v3, "57"

    aput-object v3, v2, v8

    const-string v3, "5180"

    aput-object v3, v2, v9

    const-string v3, "5187"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_027"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "21"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "58"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "5188"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "518F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_028"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "17"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "59"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "5198"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "519F"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_029"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "19"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "60"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "51A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "51AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_030"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "15"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "61"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "5190"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "5197"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_031"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "50"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "62"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "51A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "51A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x77

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_032"

    aput-object v3, v2, v6

    const-string v3, "19"

    aput-object v3, v2, v7

    const-string v3, "63"

    aput-object v3, v2, v8

    const-string v3, "4590"

    aput-object v3, v2, v9

    const-string v3, "4597"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_033"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "13"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "64"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "4588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "458F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_034"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "17"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "65"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "4580"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "4587"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_035"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "66"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "45A0"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "45A7"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_036"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "28"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "67"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "45A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "45AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_037"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "68"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "4598"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "459F"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x77

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_032"

    aput-object v3, v2, v6

    const-string v3, "19"

    aput-object v3, v2, v7

    const-string v3, "63"

    aput-object v3, v2, v8

    const-string v3, "4590"

    aput-object v3, v2, v9

    const-string v3, "4597"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_033"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "14"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "64"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "4588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "458F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_034"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "17"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "65"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "4580"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "4587"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_035"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "66"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "45A0"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "45A7"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_036"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "28"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "67"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "45A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "45AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_037"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "68"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "4598"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "459F"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x77

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_032"

    aput-object v3, v2, v6

    const-string v3, "23"

    aput-object v3, v2, v7

    const-string v3, "63"

    aput-object v3, v2, v8

    const-string v3, "4590"

    aput-object v3, v2, v9

    const-string v3, "4597"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_033"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "13"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "64"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "4588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "458F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_034"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "15"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "65"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "4580"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "4587"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_035"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "27"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "66"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "45A0"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "45A7"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_036"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "30"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "67"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "45A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "45AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_037"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "68"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "4598"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "459F"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_038"

    aput-object v3, v2, v6

    const-string v3, "15"

    aput-object v3, v2, v7

    const-string v3, "69"

    aput-object v3, v2, v8

    const-string v3, "4980"

    aput-object v3, v2, v9

    const-string v3, "4987"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_039"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "13"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "70"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "4988"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "498F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_040"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "17"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "71"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "4990"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "4997"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_041"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "29"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "72"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "49A0"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "49A7"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_042"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "73"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "4998"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "499F"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_038"

    aput-object v3, v2, v6

    const-string v3, "15"

    aput-object v3, v2, v7

    const-string v3, "69"

    aput-object v3, v2, v8

    const-string v3, "4980"

    aput-object v3, v2, v9

    const-string v3, "4987"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_039"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "14"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "70"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "4988"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "498F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_040"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "17"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "71"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "4990"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "4997"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_041"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "20"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "72"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "49A0"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "49A7"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_042"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "73"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "4998"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "499F"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_038"

    aput-object v3, v2, v6

    const-string v3, "23"

    aput-object v3, v2, v7

    const-string v3, "69"

    aput-object v3, v2, v8

    const-string v3, "4980"

    aput-object v3, v2, v9

    const-string v3, "4987"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_039"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "19"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "70"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "4988"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "498F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_040"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "71"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "4990"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "4997"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_041"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "33"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "72"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "49A0"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "49A7"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_042"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "26"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "73"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "4998"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "499F"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_043"

    aput-object v3, v2, v6

    const-string v3, "14"

    aput-object v3, v2, v7

    const-string v3, "74"

    aput-object v3, v2, v8

    const-string v3, "4D80"

    aput-object v3, v2, v9

    const-string v3, "4D87"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_044"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "13"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "75"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "4D88"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "4D8F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_045"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "16"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "76"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "4D90"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "4D97"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_046"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "77"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "4D98"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "4D9F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_047"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "20"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "78"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "4DA0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "4DA7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_048"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "79"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "4DA8"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "4DAF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_043"

    aput-object v3, v2, v6

    const-string v3, "34"

    aput-object v3, v2, v7

    const-string v3, "74"

    aput-object v3, v2, v8

    const-string v3, "4D80"

    aput-object v3, v2, v9

    const-string v3, "4D87"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_044"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "32"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "75"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "4D88"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "4D8F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_045"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "16"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "76"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "4D90"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "4D97"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_046"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "77"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "4D98"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "4D9F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_047"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "20"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "78"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "4DA0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "4DA7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_048"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "27"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "79"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "4DA8"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "4DAF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_043"

    aput-object v3, v2, v6

    const-string v3, "28"

    aput-object v3, v2, v7

    const-string v3, "74"

    aput-object v3, v2, v8

    const-string v3, "4D80"

    aput-object v3, v2, v9

    const-string v3, "4D87"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_044"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "24"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "75"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "4D88"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "4D8F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_045"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "32"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "76"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "4D90"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "4D97"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_046"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "34"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "77"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "4D98"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "4D9F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_047"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "37"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "78"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "4DA0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "4DA7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_048"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "40"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "79"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "4DA8"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "4DAF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_049"

    aput-object v3, v2, v6

    const-string v3, "15"

    aput-object v3, v2, v7

    const-string v3, "80"

    aput-object v3, v2, v8

    const-string v3, "5580"

    aput-object v3, v2, v9

    const-string v3, "5587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_050"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "14"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "81"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "5588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "558F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_051"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "27"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "82"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "5598"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "559F"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_052"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "29"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "83"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "55A0"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "55A7"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_053"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "26"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "84"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "55A8"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "55AF"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_054"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "85"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "5590"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "5597"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_049"

    aput-object v3, v2, v6

    const-string v3, "16"

    aput-object v3, v2, v7

    const-string v3, "80"

    aput-object v3, v2, v8

    const-string v3, "5580"

    aput-object v3, v2, v9

    const-string v3, "5587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_050"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "14"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "81"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "5588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "558F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_051"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "82"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "5598"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "559F"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_052"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "30"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "83"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "55A0"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "55A7"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_053"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "20"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "84"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "55A8"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "55AF"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_054"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "85"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "5590"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "5597"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_049"

    aput-object v3, v2, v6

    const-string v3, "16"

    aput-object v3, v2, v7

    const-string v3, "80"

    aput-object v3, v2, v8

    const-string v3, "5580"

    aput-object v3, v2, v9

    const-string v3, "5587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_050"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "13"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "81"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "5588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "558F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_051"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "17"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "82"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "5598"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "559F"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_052"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "28"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "83"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "55A0"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "55A7"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_053"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "26"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "84"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "55A8"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "55AF"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_054"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "85"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "5590"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "5597"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_055"

    aput-object v3, v2, v6

    const-string v3, "20"

    aput-object v3, v2, v7

    const-string v3, "117"

    aput-object v3, v2, v8

    const-string v3, "6980"

    aput-object v3, v2, v9

    const-string v3, "6987"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "13"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "14"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "17"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "15"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "19"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_055"

    aput-object v3, v2, v6

    const-string v3, "20"

    aput-object v3, v2, v7

    const-string v3, "117"

    aput-object v3, v2, v8

    const-string v3, "6980"

    aput-object v3, v2, v9

    const-string v3, "6987"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "52"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "14"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "37"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "15"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "19"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_062"

    aput-object v3, v2, v6

    const-string v3, "47"

    aput-object v3, v2, v7

    const-string v3, "124"

    aput-object v3, v2, v8

    const-string v3, "0580"

    aput-object v3, v2, v9

    const-string v3, "0587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "39"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_063"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "29"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "125"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "71B8"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "71BF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "34"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "17"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "15"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "35"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_062"

    aput-object v3, v2, v6

    const-string v3, "47"

    aput-object v3, v2, v7

    const-string v3, "124"

    aput-object v3, v2, v8

    const-string v3, "0580"

    aput-object v3, v2, v9

    const-string v3, "0587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "39"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_063"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "29"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "125"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "71B8"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "71BF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "19"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "17"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "15"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "35"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_062"

    aput-object v3, v2, v6

    const-string v3, "37"

    aput-object v3, v2, v7

    const-string v3, "124"

    aput-object v3, v2, v8

    const-string v3, "0580"

    aput-object v3, v2, v9

    const-string v3, "0587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "39"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_064"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "19"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "126"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "65B8"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "65BF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "33"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "43"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "36"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "45"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "42"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_062"

    aput-object v3, v2, v6

    const-string v3, "37"

    aput-object v3, v2, v7

    const-string v3, "124"

    aput-object v3, v2, v8

    const-string v3, "0580"

    aput-object v3, v2, v9

    const-string v3, "0587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "26"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_064"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "19"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "65B8"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "65BF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_062"

    aput-object v3, v2, v6

    const-string v3, "27"

    aput-object v3, v2, v7

    const-string v3, "124"

    aput-object v3, v2, v8

    const-string v3, "0580"

    aput-object v3, v2, v9

    const-string v3, "0587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "26"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_065"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "32"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "127"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "75B8"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "75BF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "128"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_062"

    aput-object v3, v2, v6

    const-string v3, "27"

    aput-object v3, v2, v7

    const-string v3, "124"

    aput-object v3, v2, v8

    const-string v3, "0580"

    aput-object v3, v2, v9

    const-string v3, "0587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "26"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_065"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "32"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "127"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "75B8"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "75BF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_066"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "28"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "128"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "05C0"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "05C7"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_062"

    aput-object v3, v2, v6

    const-string v3, "13"

    aput-object v3, v2, v7

    const-string v3, "124"

    aput-object v3, v2, v8

    const-string v3, "0580"

    aput-object v3, v2, v9

    const-string v3, "0587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "26"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_065"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "32"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "127"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "75B8"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "75BF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "128"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_062"

    aput-object v3, v2, v6

    const-string v3, "27"

    aput-object v3, v2, v7

    const-string v3, "124"

    aput-object v3, v2, v8

    const-string v3, "0580"

    aput-object v3, v2, v9

    const-string v3, "0587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "26"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_067"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "30"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "129"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "6DB8"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "6DBF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "128"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_062"

    aput-object v3, v2, v6

    const-string v3, "34"

    aput-object v3, v2, v7

    const-string v3, "124"

    aput-object v3, v2, v8

    const-string v3, "0580"

    aput-object v3, v2, v9

    const-string v3, "0587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "26"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_067"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "30"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "129"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "6DB8"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "6DBF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "128"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_062"

    aput-object v3, v2, v6

    const-string v3, "27"

    aput-object v3, v2, v7

    const-string v3, "124"

    aput-object v3, v2, v8

    const-string v3, "0580"

    aput-object v3, v2, v9

    const-string v3, "0587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "26"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_068"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "16"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "130"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "5DB8"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "5DBF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "128"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_062"

    aput-object v3, v2, v6

    const-string v3, "27"

    aput-object v3, v2, v7

    const-string v3, "124"

    aput-object v3, v2, v8

    const-string v3, "0580"

    aput-object v3, v2, v9

    const-string v3, "0587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "26"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "128"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_062"

    aput-object v3, v2, v6

    const-string v3, "27"

    aput-object v3, v2, v7

    const-string v3, "124"

    aput-object v3, v2, v8

    const-string v3, "0580"

    aput-object v3, v2, v9

    const-string v3, "0587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "26"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "128"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_062"

    aput-object v3, v2, v6

    const-string v3, "27"

    aput-object v3, v2, v7

    const-string v3, "124"

    aput-object v3, v2, v8

    const-string v3, "0580"

    aput-object v3, v2, v9

    const-string v3, "0587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "26"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_069"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "131"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "61B8"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "61BF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "128"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_062"

    aput-object v3, v2, v6

    const-string v3, "19"

    aput-object v3, v2, v7

    const-string v3, "124"

    aput-object v3, v2, v8

    const-string v3, "0580"

    aput-object v3, v2, v9

    const-string v3, "0587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "26"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_069"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "131"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "61B8"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "61BF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_066"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "28"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "128"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "05C0"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "05C7"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_062"

    aput-object v3, v2, v6

    const-string v3, "19"

    aput-object v3, v2, v7

    const-string v3, "124"

    aput-object v3, v2, v8

    const-string v3, "0580"

    aput-object v3, v2, v9

    const-string v3, "0587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "26"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_069"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "131"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "61B8"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "61BF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_062"

    aput-object v3, v2, v6

    const-string v3, "19"

    aput-object v3, v2, v7

    const-string v3, "124"

    aput-object v3, v2, v8

    const-string v3, "0580"

    aput-object v3, v2, v9

    const-string v3, "0587"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_056"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "26"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "118"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "058F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_069"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "131"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "61B8"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "61BF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_057"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "119"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0590"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0597"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_058"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "120"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "05A8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "05AF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_059"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "121"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0598"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "059F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_060"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "122"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "05B0"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "05B7"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_061"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "21"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "123"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "05A0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "05A7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_070"

    aput-object v3, v2, v6

    const-string v3, "15"

    aput-object v3, v2, v7

    const-string v3, "86"

    aput-object v3, v2, v8

    const-string v3, "7D80"

    aput-object v3, v2, v9

    const-string v3, "7D87"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_071"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "13"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "87"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "7D88"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "7D8F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_072"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "26"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "88"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "7DA0"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "7DA7"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_073"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "89"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "7DA8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "7DAF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_074"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "17"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "90"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "7D90"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "7D97"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_075"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "19"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "91"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "7D98"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "7D9F"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_070"

    aput-object v3, v2, v6

    const-string v3, "16"

    aput-object v3, v2, v7

    const-string v3, "86"

    aput-object v3, v2, v8

    const-string v3, "7D80"

    aput-object v3, v2, v9

    const-string v3, "7D87"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_071"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "14"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "87"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "7D88"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "7D8F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_072"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "31"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "7DA0"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "7DA7"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_073"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "39"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "7DA8"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "7DAF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_074"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "90"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "7D90"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "7D97"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_075"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "91"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "7D98"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "7D9F"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_076"

    aput-object v3, v2, v6

    const-string v3, "28"

    aput-object v3, v2, v7

    const-string v3, "102"

    aput-object v3, v2, v8

    const-string v3, "9590"

    aput-object v3, v2, v9

    const-string v3, "9597"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_077"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "24"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "103"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "9588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "958F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_078"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "27"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "104"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "9580"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "9587"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_079"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "105"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "95A0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "95A7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_080"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "106"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "9598"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "959F"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_076"

    aput-object v3, v2, v6

    const-string v3, "38"

    aput-object v3, v2, v7

    const-string v3, "102"

    aput-object v3, v2, v8

    const-string v3, "9590"

    aput-object v3, v2, v9

    const-string v3, "9597"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_077"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "37"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "103"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "9588"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "958F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_078"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "36"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "104"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "9580"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "9587"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_079"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "47"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "105"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "95A0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "95A7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_080"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "40"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "106"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "9598"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "959F"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_081"

    aput-object v3, v2, v6

    const-string v3, "15"

    aput-object v3, v2, v7

    const-string v3, "107"

    aput-object v3, v2, v8

    const-string v3, "8980"

    aput-object v3, v2, v9

    const-string v3, "8987"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_082"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "13"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "108"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8988"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "898F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_083"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "17"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "109"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "8990"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "8997"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_084"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "110"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "8998"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "899F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_085"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "14"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "111"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "89A0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "89A7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_086"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "16"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "112"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "89A8"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "89AF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_081"

    aput-object v3, v2, v6

    const-string v3, "52"

    aput-object v3, v2, v7

    const-string v3, "107"

    aput-object v3, v2, v8

    const-string v3, "8980"

    aput-object v3, v2, v9

    const-string v3, "8987"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_082"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "44"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "108"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8988"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "898F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_083"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "30"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "109"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "8990"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "8997"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_084"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "42"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "110"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "8998"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "899F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_085"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "20"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "111"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "89A0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "89A7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_086"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "39"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "112"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "89A8"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "89AF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_087"

    aput-object v3, v2, v6

    const-string v3, "19"

    aput-object v3, v2, v7

    const-string v3, "113"

    aput-object v3, v2, v8

    const-string v3, "9180"

    aput-object v3, v2, v9

    const-string v3, "9187"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_088"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "21"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "114"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "9188"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "918F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_089"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "20"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "115"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "9190"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "9197"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_090"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "116"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "9198"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "919F"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_087"

    aput-object v3, v2, v6

    const-string v3, "24"

    aput-object v3, v2, v7

    const-string v3, "113"

    aput-object v3, v2, v8

    const-string v3, "9180"

    aput-object v3, v2, v9

    const-string v3, "9187"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_088"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "27"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "114"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "9188"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "918F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_089"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "28"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "115"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "9190"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "9197"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_090"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "26"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "116"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "9198"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "919F"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_091"

    aput-object v3, v2, v6

    const-string v3, "21"

    aput-object v3, v2, v7

    const-string v3, "92"

    aput-object v3, v2, v8

    const-string v3, "8180"

    aput-object v3, v2, v9

    const-string v3, "8187"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_092"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "23"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "93"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "8188"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "818F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_093"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "25"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "94"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "8190"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "8197"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_094"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "27"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "95"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "8198"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "819F"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_095"

    aput-object v3, v2, v6

    const-string v3, "17"

    aput-object v3, v2, v7

    const-string v3, "96"

    aput-object v3, v2, v8

    const-string v3, "7980"

    aput-object v3, v2, v9

    const-string v3, "7987"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_096"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "13"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "97"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "7988"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "798F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_097"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "14"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "98"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "7990"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "7997"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_098"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "99"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "7998"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "799F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_099"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "16"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "100"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "79A0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "79A7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_100"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "15"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "101"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "79A8"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "79AF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_095"

    aput-object v3, v2, v6

    const-string v3, "46"

    aput-object v3, v2, v7

    const-string v3, "96"

    aput-object v3, v2, v8

    const-string v3, "7980"

    aput-object v3, v2, v9

    const-string v3, "7987"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_096"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "48"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "97"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "7988"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "798F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_097"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "35"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "98"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "7990"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "7997"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_098"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "33"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "99"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "7998"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "799F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_099"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "36"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "100"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "79A0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "79A7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_100"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "49"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "101"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "79A8"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "79AF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_095"

    aput-object v3, v2, v6

    const-string v3, "28"

    aput-object v3, v2, v7

    const-string v3, "96"

    aput-object v3, v2, v8

    const-string v3, "7980"

    aput-object v3, v2, v9

    const-string v3, "7987"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_096"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "32"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "97"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "7988"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "798F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_097"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "98"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "7990"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "7997"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_098"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "99"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "7998"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "799F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_099"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "23"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "100"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "79A0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "79A7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_100"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "26"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "101"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "79A8"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "79AF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_095"

    aput-object v3, v2, v6

    const-string v3, "47"

    aput-object v3, v2, v7

    const-string v3, "96"

    aput-object v3, v2, v8

    const-string v3, "7980"

    aput-object v3, v2, v9

    const-string v3, "7987"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_096"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "38"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "97"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "7988"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "798F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_097"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "44"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "98"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "7990"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "7997"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_098"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "41"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "99"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "7998"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "799F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_099"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "51"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "100"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "79A0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "79A7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_100"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "49"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "101"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "79A8"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "79AF"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_101"

    aput-object v3, v2, v6

    const-string v3, "21"

    aput-object v3, v2, v7

    const-string v3, "138"

    aput-object v3, v2, v8

    const-string v3, "0D90"

    aput-object v3, v2, v9

    const-string v3, "0D97"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_102"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "13"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "139"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0D88"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "0D8F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_103"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "29"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "146"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "9D80"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "9D87"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_104"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "19"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "141"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0DA8"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0DAF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_105"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "142"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "0D98"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "0D9F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_106"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "22"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "143"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0DA0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "0DA7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_107"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "30"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "147"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "9DB0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "9DB7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_101"

    aput-object v3, v2, v6

    const-string v3, "15"

    aput-object v3, v2, v7

    const-string v3, "138"

    aput-object v3, v2, v8

    const-string v3, "0D90"

    aput-object v3, v2, v9

    const-string v3, "0D97"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_102"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "31"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "139"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0D88"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "0D8F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_103"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "29"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "146"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "9D80"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "9D87"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_104"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "17"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "141"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0DA8"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0DAF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_105"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "16"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "142"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "0D98"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "0D9F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_106"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "14"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "143"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0DA0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "0DA7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_107"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "30"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "147"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "9DB0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "9DB7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DTV_CHANNEL_NAME_101"

    aput-object v3, v2, v6

    const-string v3, "15"

    aput-object v3, v2, v7

    const-string v3, "138"

    aput-object v3, v2, v8

    const-string v3, "0D90"

    aput-object v3, v2, v9

    const-string v3, "0D97"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "DTV_CHANNEL_NAME_102"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "31"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "139"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0D88"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "0D8F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "DTV_CHANNEL_NAME_103"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "24"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "146"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "9D80"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "9D87"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "DTV_CHANNEL_NAME_104"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "17"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "141"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0DA8"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0DAF"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DTV_CHANNEL_NAME_105"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "16"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "142"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "0D98"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "0D9F"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "DTV_CHANNEL_NAME_106"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "14"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "143"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0DA0"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "0DA7"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "DTV_CHANNEL_NAME_107"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "32"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "147"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "9DB0"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "9DB7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "DTV_CHANNEL_NAME_004"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string v4, "-1"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "FFFF"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->AREA_STATION:[[Ljava/lang/String;

    return-void

    .line 71
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_1
    .array-data 4
        0xd
        0xe
        0xf
    .end array-data

    :array_2
    .array-data 4
        0x10
        0x11
        0x12
    .end array-data

    :array_3
    .array-data 4
        0x13
        0x14
        0x15
    .end array-data

    :array_4
    .array-data 4
        0x16
        0x17
        0x18
    .end array-data

    :array_5
    .array-data 4
        0x19
        0x1a
        0x1b
    .end array-data

    :array_6
    .array-data 4
        0x1c
        0x1d
        0x1e
    .end array-data

    :array_7
    .array-data 4
        0x1f
        0x20
    .end array-data

    :array_8
    .array-data 4
        0x21
        0x22
    .end array-data

    :array_9
    .array-data 4
        0x23
        0x24
    .end array-data

    :array_a
    .array-data 4
        0x25
        0x26
        0x27
    .end array-data

    :array_b
    .array-data 4
        0x28
        0x29
    .end array-data

    :array_c
    .array-data 4
        0x2a
        0x2b
        0x2c
    .end array-data

    :array_d
    .array-data 4
        0x2d
        0x2e
        0x2f
        0x30
    .end array-data

    :array_e
    .array-data 4
        0x31
        0x32
    .end array-data

    :array_f
    .array-data 4
        0x33
        0x34
    .end array-data

    :array_10
    .array-data 4
        0x35
        0x36
    .end array-data

    :array_11
    .array-data 4
        0x37
        0x38
    .end array-data

    :array_12
    .array-data 4
        0x3a
        0x3b
        0x3c
        0x3d
    .end array-data

    :array_13
    .array-data 4
        0x3e
        0x3f
        0x40
    .end array-data

    :array_14
    .array-data 4
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
    .end array-data

    :array_15
    .array-data 4
        0x47
        0x48
        0x49
    .end array-data

    :array_16
    .array-data 4
        0x4a
        0x4b
        0x4c
    .end array-data

    :array_17
    .array-data 4
        0x4d
        0x4e
    .end array-data

    :array_18
    .array-data 4
        0x4f
        0x50
        0x51
    .end array-data

    :array_19
    .array-data 4
        0x53
        0x54
        0x55
        0x56
    .end array-data

    :array_1a
    .array-data 4
        0x58
        0x59
    .end array-data

    :array_1b
    .array-data 4
        0x5b
        0x5c
    .end array-data

    :array_1c
    .array-data 4
        0x5d
        0x5e
        0x5f
    .end array-data

    :array_1d
    .array-data 4
        0x60
        0x61
        0x62
        0x63
    .end array-data

    :array_1e
    .array-data 4
        0x64
        0x65
        0x66
        0x67
    .end array-data

    :array_1f
    .array-data 4
        0x69
        0x6a
    .end array-data

    :array_20
    .array-data 4
        0x6b
        0x6c
        0x6d
        0x6e
    .end array-data

    :array_21
    .array-data 4
        0x70
        0x71
        0x72
        0x73
        0x74
    .end array-data

    :array_22
    .array-data 4
        0x76
        0x77
        0x78
    .end array-data

    :array_23
    .array-data 4
        0x7a
        0x7b
    .end array-data

    :array_24
    .array-data 4
        0x7c
        0x7d
    .end array-data

    :array_25
    .array-data 4
        0x7e
        0x7f
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringByResourceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.samsung.sec.mtv:string/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 203
    .local v1, "tmpResId":I
    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_0
    return-object v0
.end method
