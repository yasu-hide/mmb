.class public Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
.super Ljava/lang/Object;
.source "MmbFcContMwRepairParts.java"


# instance fields
.field public contentLocation:Ljava/lang/String;

.field public missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->contentLocation:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    return-void
.end method
