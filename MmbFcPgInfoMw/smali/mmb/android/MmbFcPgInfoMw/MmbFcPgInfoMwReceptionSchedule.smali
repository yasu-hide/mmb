.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwReceptionSchedule.java"


# instance fields
.field public receptionTime:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->uri:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->receptionTime:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;

    return-void
.end method
