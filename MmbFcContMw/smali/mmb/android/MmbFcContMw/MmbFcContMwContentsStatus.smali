.class public Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;
.super Ljava/lang/Object;
.source "MmbFcContMwContentsStatus.java"


# instance fields
.field public contProgress:I

.field public contSize:I

.field public contStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;->contProgress:I

    .line 28
    iput v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;->contSize:I

    .line 31
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_UNMANAGED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    iput-object v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;->contStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    return-void
.end method
