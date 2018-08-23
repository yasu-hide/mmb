.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1$1;
.super Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
.source "MmbFwExtMetaFcSearchSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1;)V
    .locals 1

    .prologue
    .line 713
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1$1;->this$2:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1;

    invoke-direct {p0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;-><init>()V

    .line 714
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1$1;->this$2:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1;->val$resultCrid:Ljava/lang/String;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1$1;->crid:Ljava/lang/String;

    .line 715
    return-void
.end method
