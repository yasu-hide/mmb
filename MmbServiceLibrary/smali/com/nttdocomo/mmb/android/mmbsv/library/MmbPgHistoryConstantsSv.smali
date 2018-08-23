.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPgHistoryConstantsSv;
.super Ljava/lang/Object;
.source "MmbPgHistoryConstantsSv.java"


# static fields
.field public static final CATEGORY_AUTO_DELETE:I = 0x2

.field public static final CATEGORY_AUTO_DELETE_FROM_SERVER:I = 0x3

.field public static final CATEGORY_FC_RESERVATION:I = 0x1

.field private static final CATEGORY_MAX:I = 0x5

.field public static final CATEGORY_REC_RESERVATION:I = 0x4

.field public static final CATEGORY_ST_RESERVATION:I = 0x0

.field public static final REASON_AGE_LIMIT:I = 0x17

.field public static final REASON_BROADCAST_END:I = 0xd

.field public static final REASON_CANCELED:I = 0x11

.field public static final REASON_COMPETITION:I = 0x2

.field public static final REASON_COMPETITION_MAX:I = 0x7

.field public static final REASON_EXPIRATION:I = 0x9

.field public static final REASON_FAILED_DECODE:I = 0xe

.field public static final REASON_FATAL:I = 0x8

.field public static final REASON_FILE_DATA_ERROR:I = 0x14

.field public static final REASON_FILE_ERROR:I = 0xf

.field public static final REASON_FROM_SERVER:I = 0xa

.field public static final REASON_INTERRUPTION:I = 0x10

.field public static final REASON_LOCATION_ERROR:I = 0x6

.field public static final REASON_LOW_BATTERY:I = 0x13

.field private static final REASON_MAX:I = 0x18

.field public static final REASON_MEMORY_OVERFLOW:I = 0x3

.field public static final REASON_NOT_LICENSE:I = 0x16

.field public static final REASON_OUTSIDE:I = 0x1

.field public static final REASON_POWER_OFF:I = 0x0

.field public static final REASON_PROGRAM_ABORT:I = 0x15

.field public static final REASON_SCAN_ERROR:I = 0xb

.field public static final REASON_SD_ERROR:I = 0x4

.field public static final REASON_SD_WRITE_ERROR:I = 0x12

.field public static final REASON_SYSTEM_ERROR:I = 0xc

.field public static final REASON_UIM_ERROR:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCategory(I)Z
    .locals 2
    .param p0, "aCategory"    # I

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 187
    .local v0, "ret":Z
    if-ltz p0, :cond_0

    const/4 v1, 0x5

    if-le v1, p0, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 195
    :cond_0
    return v0
.end method

.method public static isReason(I)Z
    .locals 2
    .param p0, "aReason"    # I

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 215
    .local v0, "ret":Z
    if-ltz p0, :cond_0

    const/16 v1, 0x18

    if-le v1, p0, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 223
    :cond_0
    return v0
.end method
