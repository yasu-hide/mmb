.class public Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
.super Ljava/lang/Exception;
.source "MmbFcPgInfoMwReturnException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected error:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;)V
    .locals 1
    .param p1, "aType"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    .prologue
    .line 29
    invoke-virtual {p1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;->error:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    .line 31
    return-void
.end method


# virtual methods
.method public getError()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;->error:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    return-object v0
.end method
