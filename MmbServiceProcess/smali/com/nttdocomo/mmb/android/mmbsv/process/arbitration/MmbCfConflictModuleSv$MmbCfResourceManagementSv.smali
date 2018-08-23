.class public Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
.super Ljava/lang/Object;
.source "MmbCfConflictModuleSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmbCfResourceManagementSv"
.end annotation


# instance fields
.field public mmbAssignObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

.field public mmbResourceStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbAssignObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    return-void
.end method
