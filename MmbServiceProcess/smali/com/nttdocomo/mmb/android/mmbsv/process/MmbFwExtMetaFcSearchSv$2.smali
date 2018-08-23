.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$2;
.super Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
.source "MmbFwExtMetaFcSearchSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->createGetExtFcDetailParams()[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

.field final synthetic val$fcResult:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 725
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$2;->val$fcResult:Ljava/util/Map;

    invoke-direct {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;-><init>()V

    .line 726
    const-string v0, "display"

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$2;->type:Ljava/lang/String;

    .line 727
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$2;->val$fcResult:Ljava/util/Map;

    const-string v1, "fcPeriodDispStart"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$2;->start:J

    .line 728
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$2;->val$fcResult:Ljava/util/Map;

    const-string v1, "fcPeriodDispEnd"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$2;->end:J

    .line 729
    return-void
.end method
