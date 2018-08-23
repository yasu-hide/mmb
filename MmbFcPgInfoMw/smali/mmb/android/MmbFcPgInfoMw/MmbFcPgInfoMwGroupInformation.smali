.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGroupInformation;
.super Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
.source "MmbFcPgInfoMwGroupInformation.java"


# instance fields
.field public creditsItem:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;

.field public promotional:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;-><init>()V

    .line 23
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGroupInformation;->promotional:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwGroupInformation;->creditsItem:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;

    return-void
.end method
