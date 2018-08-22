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


# virtual methods
.method native getSysTime()J
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lmmb/android/MmbScSecClkMw/MmbScSecClkMw;->getSysTime()J

    move-result-wide v0

    .line 37
    .local v0, "secTime":J
    return-wide v0
.end method
