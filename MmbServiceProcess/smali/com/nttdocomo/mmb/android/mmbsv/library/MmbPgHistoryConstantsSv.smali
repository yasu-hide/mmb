.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPgHistoryConstantsSv;
.super Ljava/lang/Object;
.source "MmbPgHistoryConstantsSv.java"


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
    .line 181
    const/4 v0, 0x0

    .line 187
    .local v0, "ret":Z
    if-ltz p0, :cond_0

    const/4 v1, 0x5

    if-le v1, p0, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 195
    :cond_0
    return v0
.end method

.method public static isReason(I)Z
    .locals 2
    .param p0, "aReason"    # I

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 215
    .local v0, "ret":Z
    if-ltz p0, :cond_0

    const/16 v1, 0x18

    if-le v1, p0, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 223
    :cond_0
    return v0
.end method
