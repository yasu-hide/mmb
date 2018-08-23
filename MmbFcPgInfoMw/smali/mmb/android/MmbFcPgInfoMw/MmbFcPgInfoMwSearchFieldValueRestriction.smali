.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueRestriction;
.super Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;
.source "MmbFcPgInfoMwSearchFieldValueRestriction.java"


# instance fields
.field public value:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;


# direct methods
.method public constructor <init>([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;)V
    .locals 1
    .param p1, "aValue"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;

    .prologue
    .line 27
    invoke-direct {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueRestriction;->value:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;

    .line 28
    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueRestriction;->value:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;

    .line 31
    :cond_0
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_RESTRICTION:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueRestriction;->valueType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    .line 32
    return-void
.end method
