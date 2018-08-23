.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwBroadcastEvent.java"


# instance fields
.field public crid:Ljava/lang/String;

.field public duration:J

.field public endTime:J

.field public firstShowing:Z

.field public free:Z

.field public instanceDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInstanceDescription;

.field public live:Z

.field public repeatLabel:I

.field public serviceId:I

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v4, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->serviceId:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->crid:Ljava/lang/String;

    .line 28
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->startTime:J

    .line 31
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->endTime:J

    .line 34
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->duration:J

    .line 37
    iput-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->live:Z

    .line 40
    iput-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->firstShowing:Z

    .line 43
    iput-boolean v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->free:Z

    .line 46
    iput v4, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->repeatLabel:I

    return-void
.end method
