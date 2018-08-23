.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwOnDemandProgram.java"


# instance fields
.field public crid:Ljava/lang/String;

.field public duration:J

.field public end:J

.field public start:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;->crid:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;->url:Ljava/lang/String;

    .line 28
    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;->duration:J

    .line 31
    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;->start:J

    .line 34
    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;->end:J

    return-void
.end method
