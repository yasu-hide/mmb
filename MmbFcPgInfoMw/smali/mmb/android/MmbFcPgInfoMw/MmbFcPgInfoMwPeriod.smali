.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwPeriod.java"


# instance fields
.field public end:J

.field public start:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->type:Ljava/lang/String;

    .line 26
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->start:J

    .line 29
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->end:J

    return-void
.end method
