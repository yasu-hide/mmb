.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3$1;
.super Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;
.source "MmbFwExtMetaFcSearchSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;)V
    .locals 2

    .prologue
    .line 735
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;

    invoke-direct {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;-><init>()V

    .line 736
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;->val$fcResult:Ljava/util/Map;

    const-string v1, "fcDlInfoMRepairStart"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3$1;->manualRepairStartDate:J

    .line 737
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;->val$fcResult:Ljava/util/Map;

    const-string v1, "fcDlInfoMRepairEnd"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3$1;->manualRepairEndDate:J

    .line 738
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;->val$fcResult:Ljava/util/Map;

    const-string v1, "fcDlInfoAtAutoStore"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3$1;->autoRepairAutoStorePercentage:B

    .line 739
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;->val$fcResult:Ljava/util/Map;

    const-string v1, "fcDlInfoAtManualStore"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3$1;->autoRepairManualStorePercentage:B

    .line 740
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;->val$fcResult:Ljava/util/Map;

    const-string v1, "fcDlInfoMtAutoStore"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3$1;->manualRepairAutoStorePercentage:B

    .line 741
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;->val$fcResult:Ljava/util/Map;

    const-string v1, "fcDlInfoMtManualStore"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3$1;->manualRepairManualStorePercentage:B

    .line 742
    return-void
.end method
