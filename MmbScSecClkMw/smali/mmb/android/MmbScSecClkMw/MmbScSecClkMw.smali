.class public Lmmb/android/MmbScSecClkMw/MmbScSecClkMw;
.super Ljava/lang/Object;
.source "MmbScSecClkMw.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "MmbPoSecClkMp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public getTime()J
    .locals 1

    .prologue

    const-wide/16 v0, 0x1

    return-wide v0

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    return-wide v0
.end method
