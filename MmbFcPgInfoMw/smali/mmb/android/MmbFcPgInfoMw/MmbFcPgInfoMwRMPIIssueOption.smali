.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwRMPIIssueOption.java"


# instance fields
.field public abroadEnabled:Z

.field public countsLimit:I

.field public endTime:J

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->startTime:J

    .line 26
    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->endTime:J

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->countsLimit:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->abroadEnabled:Z

    return-void
.end method
