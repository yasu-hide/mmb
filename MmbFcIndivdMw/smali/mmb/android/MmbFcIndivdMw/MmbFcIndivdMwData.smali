.class public Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwData;
.super Ljava/lang/Object;
.source "MmbFcIndivdMwData.java"


# instance fields
.field public mmbData:[B

.field public mmbReturnValue:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwData;->mmbReturnValue:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;

    .line 25
    iput-object v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwData;->mmbData:[B

    return-void
.end method
