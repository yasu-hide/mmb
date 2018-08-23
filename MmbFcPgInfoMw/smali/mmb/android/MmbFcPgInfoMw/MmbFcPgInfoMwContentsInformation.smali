.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwContentsInformation.java"


# instance fields
.field public crid:Ljava/lang/String;

.field public endTime:J

.field public infoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

.field public startTime:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->INFORMATION_TYPE_UNDEFINED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->infoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    .line 28
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->crid:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->title:Ljava/lang/String;

    .line 34
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->startTime:J

    .line 37
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->endTime:J

    return-void
.end method
