.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbVgLogConstantsSv;
.super Ljava/lang/Object;
.source "MmbVgLogConstantsSv.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCategory(I)Z
    .locals 2
    .param p0, "aCategory"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "ret":Z
    const/16 v1, 0x65

    if-gt v1, p0, :cond_0

    const/16 v1, 0x67

    if-le v1, p0, :cond_0

    .line 61
    const/4 v0, 0x1

    .line 67
    :cond_0
    return v0
.end method
