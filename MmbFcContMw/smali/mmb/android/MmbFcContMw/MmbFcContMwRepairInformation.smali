.class public Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;
.super Ljava/lang/Object;
.source "MmbFcContMwRepairInformation.java"


# instance fields
.field public allRepair:Z

.field public crid:Ljava/lang/String;

.field public receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

.field public repairParts:[Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->crid:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->allRepair:Z

    .line 31
    iput-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->repairParts:[Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    .line 34
    iput-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    return-void
.end method
