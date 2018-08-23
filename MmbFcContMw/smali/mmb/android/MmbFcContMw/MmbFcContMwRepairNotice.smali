.class public Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;
.super Ljava/lang/Object;
.source "MmbFcContMwRepairNotice.java"


# instance fields
.field public crid:Ljava/lang/String;

.field public progress:I

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->crid:Ljava/lang/String;

    .line 26
    iput v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->progress:I

    .line 29
    iput v1, p0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->result:I

    return-void
.end method
