.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwPostFileRepair.java"


# instance fields
.field public autoRepairAutoStorePercentage:B

.field public autoRepairManualStorePercentage:B

.field public manualRepairAutoStorePercentage:B

.field public manualRepairEndDate:J

.field public manualRepairManualStorePercentage:B

.field public manualRepairStartDate:J

.field public offsetTime:J

.field public randomTimePeriod:J

.field public receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-byte v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->autoRepairAutoStorePercentage:B

    .line 26
    iput-byte v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->autoRepairManualStorePercentage:B

    .line 29
    iput-byte v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairAutoStorePercentage:B

    .line 32
    iput-byte v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairManualStorePercentage:B

    .line 35
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->offsetTime:J

    .line 38
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->randomTimePeriod:J

    .line 41
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairStartDate:J

    .line 44
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairEndDate:J

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    return-void
.end method
