.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwScheduledBroadcast.java"


# instance fields
.field public endTime:J

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;->startTime:J

    .line 25
    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwScheduledBroadcast;->endTime:J

    return-void
.end method
