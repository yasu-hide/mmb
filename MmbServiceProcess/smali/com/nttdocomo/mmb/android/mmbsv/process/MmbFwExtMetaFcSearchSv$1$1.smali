.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1;
.super Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;
.source "MmbFwExtMetaFcSearchSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1;)V
    .locals 1

    .prologue
    .line 711
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1;

    invoke-direct {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;-><init>()V

    .line 712
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    invoke-direct {v0}, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1;->contentsState:Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    .line 713
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1$1;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1$1;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .line 716
    return-void
.end method
