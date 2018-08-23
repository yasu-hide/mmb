.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbForceCancelDownloadTerminationSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
.source "MmbFcContentsModuleSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmbForceCancelDownloadTerminationSv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)V
    .locals 1
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 5283
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbForceCancelDownloadTerminationSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 5284
    const/16 v0, 0xc

    invoke-direct {p0, p1, p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;I)V

    .line 5285
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 5302
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->execute()V

    .line 5304
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbForceCancelDownloadTerminationSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbForceCancelDownloadTerminationSv;->mCrid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschedAcquisition(Ljava/lang/String;)I

    .line 5306
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbForceCancelDownloadTerminationSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbForceCancelDownloadTerminationSv;->mCrid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeLastSchduleStateMap(Ljava/lang/String;)V

    .line 5308
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbForceCancelDownloadTerminationSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    if-eqz v1, :cond_0

    .line 5310
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbForceCancelDownloadTerminationSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbForceCancelDownloadTerminationSv;->mCrid:Ljava/lang/String;

    const/16 v3, 0x21

    invoke-interface {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;->onDownloadStateChange(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5319
    :cond_0
    :goto_0
    return-void

    .line 5312
    :catch_0
    move-exception v0

    .line 5313
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
