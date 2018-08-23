.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwInformationBase.java"


# instance fields
.field public basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

.field public crid:Ljava/lang/String;

.field public infoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

.field public memberOf:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwMemberOf;

.field public period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->INFORMATION_TYPE_UNDEFINED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->infoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    .line 28
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->crid:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    .line 34
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->memberOf:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwMemberOf;

    .line 37
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    return-void
.end method
