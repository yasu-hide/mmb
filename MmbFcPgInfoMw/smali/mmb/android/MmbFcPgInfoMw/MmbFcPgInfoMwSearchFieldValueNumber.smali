.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;
.super Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;
.source "MmbFcPgInfoMwSearchFieldValueNumber.java"


# instance fields
.field public value:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "aValue"    # J

    .prologue
    .line 29
    invoke-direct {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;-><init>()V

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->value:J

    .line 30
    iput-wide p1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->value:J

    .line 31
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->valueType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    .line 32
    return-void
.end method
