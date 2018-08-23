.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueCredit;
.super Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;
.source "MmbFcPgInfoMwSearchFieldValueCredit.java"


# instance fields
.field public value:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;


# direct methods
.method public constructor <init>([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;)V
    .locals 1
    .param p1, "aValue"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;

    .prologue
    .line 29
    invoke-direct {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueCredit;->value:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;

    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueCredit;->value:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;

    .line 33
    :cond_0
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_CREDIT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueCredit;->valueType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    .line 34
    return-void
.end method
