.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueSchedule;
.super Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;
.source "MmbFcPgInfoMwSearchFieldValueSchedule.java"


# instance fields
.field public value:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;


# direct methods
.method public constructor <init>([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;)V
    .locals 1
    .param p1, "aValue"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    .prologue
    .line 27
    invoke-direct {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueSchedule;->value:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    .line 28
    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueSchedule;->value:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    .line 31
    :cond_0
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_SCHEDULE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueSchedule;->valueType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    .line 32
    return-void
.end method
