.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwALayerEnvironment.java"


# instance fields
.field public ipaddress:Ljava/lang/String;

.field public port:I

.field public serviceId:I

.field public tsi_primary:I

.field public tsi_secondary:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;->serviceId:I

    .line 23
    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;->port:I

    .line 25
    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;->tsi_primary:I

    .line 27
    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;->tsi_secondary:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwALayerEnvironment;->ipaddress:Ljava/lang/String;

    return-void
.end method
