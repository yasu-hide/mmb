.class public Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictBaseSv;
.super Ljava/lang/Object;
.source "MmbCfConflictModuleSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmbCfConflictBaseSv"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executionConflict(II)I
    .locals 0
    .param p1, "aEvent"    # I
    .param p2, "aReturnValue"    # I

    .prologue
    .line 4743
    return p2
.end method
