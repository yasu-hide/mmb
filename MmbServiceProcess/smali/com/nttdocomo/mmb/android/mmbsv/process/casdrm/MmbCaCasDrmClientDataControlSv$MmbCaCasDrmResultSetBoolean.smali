.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$MmbCaCasDrmResultSetBoolean;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientDataControlSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbCaCasDrmResultSetBoolean"
.end annotation


# instance fields
.field public mmbResult:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$MmbCaCasDrmResultSetBoolean;->mmbResult:Z

    .line 5276
    return-void
.end method
