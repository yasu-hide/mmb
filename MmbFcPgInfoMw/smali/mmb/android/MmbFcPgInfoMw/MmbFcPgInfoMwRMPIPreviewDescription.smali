.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIPreviewDescription;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwRMPIPreviewDescription.java"


# instance fields
.field public countsLimit:I

.field public intervalEnd:J

.field public totalTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIPreviewDescription;->countsLimit:I

    .line 26
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIPreviewDescription;->totalTime:J

    .line 29
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIPreviewDescription;->intervalEnd:J

    return-void
.end method
