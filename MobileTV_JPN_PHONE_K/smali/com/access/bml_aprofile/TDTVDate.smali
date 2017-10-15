.class public Lcom/access/bml_aprofile/TDTVDate;
.super Ljava/lang/Object;
.source "TDTVDate.java"


# instance fields
.field public mDay:B

.field public mDayOfWeek:B

.field public mHour:B

.field public mMillisecond:S

.field public mMinute:B

.field public mMonth:B

.field public mSecond:B

.field public mYear:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(SBBBBBBS)V
    .locals 0
    .param p1, "year"    # S
    .param p2, "month"    # B
    .param p3, "day"    # B
    .param p4, "dayOfWeek"    # B
    .param p5, "hour"    # B
    .param p6, "minute"    # B
    .param p7, "second"    # B
    .param p8, "millisecond"    # S

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-short p1, p0, Lcom/access/bml_aprofile/TDTVDate;->mYear:S

    .line 46
    iput-byte p2, p0, Lcom/access/bml_aprofile/TDTVDate;->mMonth:B

    .line 47
    iput-byte p3, p0, Lcom/access/bml_aprofile/TDTVDate;->mDay:B

    .line 48
    iput-byte p4, p0, Lcom/access/bml_aprofile/TDTVDate;->mDayOfWeek:B

    .line 49
    iput-byte p5, p0, Lcom/access/bml_aprofile/TDTVDate;->mHour:B

    .line 50
    iput-byte p6, p0, Lcom/access/bml_aprofile/TDTVDate;->mMinute:B

    .line 51
    iput-byte p7, p0, Lcom/access/bml_aprofile/TDTVDate;->mSecond:B

    .line 52
    iput-short p8, p0, Lcom/access/bml_aprofile/TDTVDate;->mMillisecond:S

    .line 53
    return-void
.end method
