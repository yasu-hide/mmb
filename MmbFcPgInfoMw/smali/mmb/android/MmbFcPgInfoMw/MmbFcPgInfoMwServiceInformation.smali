.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwServiceInformation.java"


# instance fields
.field public serviceId:I

.field public serviceLogo:[Ljava/lang/String;

.field public serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;->serviceId:I

    .line 25
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;->serviceName:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;->serviceLogo:[Ljava/lang/String;

    return-void
.end method
