.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwRMPIDescription.java"


# instance fields
.field public countsLimit:I

.field public countsThreshold:I

.field public issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

.field public preview:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIPreviewDescription;

.field public trickPlayEnabled:Z

.field public validityIntervalEnd:J

.field public validityIntervalStart:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->countsLimit:I

    .line 26
    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->countsThreshold:I

    .line 29
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->validityIntervalStart:J

    .line 32
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->validityIntervalEnd:J

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->trickPlayEnabled:Z

    .line 38
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->preview:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIPreviewDescription;

    .line 41
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    return-void
.end method
