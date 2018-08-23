.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwOnDemandService.java"


# instance fields
.field public program:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;

.field public serviceId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;->serviceId:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;->program:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandProgram;

    return-void
.end method
