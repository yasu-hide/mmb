.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;
.super Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
.source "MmbFcPgInfoMwRealTimeContentsInformation.java"


# instance fields
.field public broadcastEvent:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;

.field public serviceInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;-><init>()V

    .line 25
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;->serviceInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwServiceInformation;

    .line 28
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;->broadcastEvent:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;

    return-void
.end method
