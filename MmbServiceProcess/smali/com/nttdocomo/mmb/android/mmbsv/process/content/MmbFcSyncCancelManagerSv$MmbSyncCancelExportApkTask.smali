.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelExportApkTask;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelExportTask;
.source "MmbFcSyncCancelManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbSyncCancelExportApkTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelExportApkTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;

    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelExportTask;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;)V

    return-void
.end method


# virtual methods
.method protected doRequestCancel(Ljava/lang/String;)Z
    .locals 2
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 617
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelExportApkTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->terminateApk()Z

    move-result v0

    .line 621
    .local v0, "result":Z
    return v0
.end method

.method protected isProcessing(Ljava/lang/String;)Z
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 604
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelExportApkTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mContentModule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 609
    .local v0, "result":Z
    :goto_0
    return v0

    .line 604
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
