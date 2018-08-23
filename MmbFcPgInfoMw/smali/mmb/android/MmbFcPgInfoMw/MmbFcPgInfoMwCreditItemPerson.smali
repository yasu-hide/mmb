.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItemPerson;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwCreditItemPerson.java"


# instance fields
.field public personName:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItemPerson;->type:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItemPerson;->personName:Ljava/lang/String;

    return-void
.end method
