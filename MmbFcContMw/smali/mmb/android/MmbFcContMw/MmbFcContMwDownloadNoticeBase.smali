.class public Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;
.super Ljava/lang/Object;
.source "MmbFcContMwDownloadNoticeBase.java"


# instance fields
.field public crid:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;->crid:Ljava/lang/String;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;->type:I

    return-void
.end method
