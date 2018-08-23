.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$MmbCaCasDrmResultSetInteger;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientDataControlSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbCaCasDrmResultSetInteger"
.end annotation


# instance fields
.field public mmbResult:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5244
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$MmbCaCasDrmResultSetInteger;->mmbResult:I

    .line 5248
    return-void
.end method
