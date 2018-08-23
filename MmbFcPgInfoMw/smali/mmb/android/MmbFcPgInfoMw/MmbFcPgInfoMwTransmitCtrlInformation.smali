.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwTransmitCtrlInformation.java"


# instance fields
.field public crid:Ljava/lang/String;

.field public postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

.field public postReceptionReport:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostReceptionReport;

.field public sdp:Ljava/lang/String;

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->version:J

    .line 26
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->crid:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    .line 41
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postReceptionReport:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostReceptionReport;

    return-void
.end method
