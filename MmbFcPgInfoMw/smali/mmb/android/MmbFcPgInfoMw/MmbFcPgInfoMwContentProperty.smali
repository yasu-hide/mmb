.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwContentProperty.java"


# instance fields
.field public contentType:Ljava/lang/String;

.field public fileFormat:Ljava/lang/String;

.field public fileSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->contentType:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->fileFormat:Ljava/lang/String;

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->fileSize:J

    return-void
.end method
