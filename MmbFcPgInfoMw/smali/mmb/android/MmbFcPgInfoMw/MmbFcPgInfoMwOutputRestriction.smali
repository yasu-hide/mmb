.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwOutputRestriction.java"


# instance fields
.field public mode:Ljava/lang/String;

.field public port:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;->port:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOutputRestriction;->mode:Ljava/lang/String;

    return-void
.end method