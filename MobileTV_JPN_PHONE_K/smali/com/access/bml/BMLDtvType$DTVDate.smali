.class public Lcom/access/bml/BMLDtvType$DTVDate;
.super Ljava/lang/Object;
.source "BMLDtvType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLDtvType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DTVDate"
.end annotation


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
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
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
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-short p1, p0, Lcom/access/bml/BMLDtvType$DTVDate;->mYear:S

    .line 59
    iput-byte p2, p0, Lcom/access/bml/BMLDtvType$DTVDate;->mMonth:B

    .line 60
    iput-byte p3, p0, Lcom/access/bml/BMLDtvType$DTVDate;->mDay:B

    .line 61
    iput-byte p4, p0, Lcom/access/bml/BMLDtvType$DTVDate;->mDayOfWeek:B

    .line 62
    iput-byte p5, p0, Lcom/access/bml/BMLDtvType$DTVDate;->mHour:B

    .line 63
    iput-byte p6, p0, Lcom/access/bml/BMLDtvType$DTVDate;->mMinute:B

    .line 64
    iput-byte p7, p0, Lcom/access/bml/BMLDtvType$DTVDate;->mSecond:B

    .line 65
    iput-short p8, p0, Lcom/access/bml/BMLDtvType$DTVDate;->mMillisecond:S

    .line 66
    return-void
.end method
