.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwPurchaseInformation.java"


# instance fields
.field public crid:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public end:J

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nameTag:Ljava/lang/String;

.field public price:J

.field public serverURL:Ljava/lang/String;

.field public start:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->start:J

    .line 26
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->end:J

    .line 29
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->id:Ljava/lang/String;

    .line 32
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->price:J

    .line 35
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->currency:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->type:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->name:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->serverURL:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->nameTag:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->crid:Ljava/lang/String;

    return-void
.end method
