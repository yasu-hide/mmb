.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwDownloadNotice.java"


# instance fields
.field public crid:Ljava/lang/String;

.field public type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwAcquireNoticeType;

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->crid:Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadNotice;->value:I

    return-void
.end method
