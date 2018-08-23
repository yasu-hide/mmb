.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwBaseVersion.java"


# instance fields
.field public major_version:I

.field public minor_version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->major_version:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I

    return-void
.end method
