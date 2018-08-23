.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
.super Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
.source "MmbFcPgInfoMwDownloadContentsInformation.java"


# instance fields
.field public onDemandService:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;

.field public transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;-><init>()V

    .line 25
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->onDemandService:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;

    .line 28
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    return-void
.end method
