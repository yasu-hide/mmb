.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwUtil;
.super Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;
.source "MmbFcContMwUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MmbFcContMwClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public mmbGetTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "MmbFcContMwClient"

    return-object v0
.end method
