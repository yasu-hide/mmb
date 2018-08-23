.class Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil$1;
.super Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;
.source "MmbFcPgInfoMwAbstractSocketUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil$1;->this$0:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;

    invoke-direct {p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;-><init>()V

    return-void
.end method


# virtual methods
.method public mmbGetTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil$1;->this$0:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
