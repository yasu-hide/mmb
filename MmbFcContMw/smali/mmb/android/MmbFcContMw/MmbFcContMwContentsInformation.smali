.class public Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;
.super Ljava/lang/Object;
.source "MmbFcContMwContentsInformation.java"


# instance fields
.field public contentsState:Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

.field public downloadedTime:J

.field public exportPath:Ljava/lang/String;

.field public exported:Z

.field public filesize:J

.field public info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

.field public played:Z

.field public repairsize:J

.field public resumeType:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

.field public transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->played:Z

    .line 29
    iput-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->downloadedTime:J

    .line 32
    iput-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->filesize:J

    .line 35
    iput-wide v2, p0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->repairsize:J

    .line 38
    iput-boolean v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->exported:Z

    .line 41
    iput-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->exportPath:Ljava/lang/String;

    .line 44
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->RESUME_NODATA:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    iput-object v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->resumeType:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    .line 47
    iput-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->contentsState:Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    .line 50
    iput-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .line 53
    iput-object v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    return-void
.end method
