.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwCreditItem.java"


# instance fields
.field public charactor:Ljava/lang/String;

.field public person:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItemPerson;

.field public role:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;->role:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;->person:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItemPerson;

    .line 28
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwCreditItem;->charactor:Ljava/lang/String;

    return-void
.end method