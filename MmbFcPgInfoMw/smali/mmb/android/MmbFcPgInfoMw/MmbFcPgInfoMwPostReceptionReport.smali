.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostReceptionReport;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwPostReceptionReport.java"


# instance fields
.field public offsetTime:J

.field public randomTimePeriod:J

.field public receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

.field public reportType:I

.field public samplePercentage:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostReceptionReport;->reportType:I

    .line 26
    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostReceptionReport;->samplePercentage:I

    .line 29
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostReceptionReport;->offsetTime:J

    .line 32
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostReceptionReport;->randomTimePeriod:J

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostReceptionReport;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    return-void
.end method
