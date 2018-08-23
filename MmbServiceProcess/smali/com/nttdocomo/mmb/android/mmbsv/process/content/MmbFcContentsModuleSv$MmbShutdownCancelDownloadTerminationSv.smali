.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbShutdownCancelDownloadTerminationSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
.source "MmbFcContentsModuleSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmbShutdownCancelDownloadTerminationSv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)V
    .locals 1
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 5349
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbShutdownCancelDownloadTerminationSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 5350
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;I)V

    .line 5351
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .prologue
    .line 5369
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbShutdownCancelDownloadTerminationSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbShutdownCancelDownloadTerminationSv;->mCrid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v1

    .line 5371
    .local v1, "state":I
    const/16 v3, -0x15

    if-ne v3, v1, :cond_1

    .line 5398
    :cond_0
    :goto_0
    return-void

    .line 5377
    :cond_1
    const-string v3, "DownloadCancel CRID:%s Reason:by cancelDownloadShutdown(String aCrid) operation  (don\'t saved history)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbShutdownCancelDownloadTerminationSv;->mCrid:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5379
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbShutdownCancelDownloadTerminationSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbShutdownCancelDownloadTerminationSv;->mCrid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->releaseDownloadingCrid(Ljava/lang/String;)V

    .line 5381
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbShutdownCancelDownloadTerminationSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbShutdownCancelDownloadTerminationSv;->mCrid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadProgressOff(Ljava/lang/String;)V

    .line 5384
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbShutdownCancelDownloadTerminationSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbShutdownCancelDownloadTerminationSv;->mCrid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeDownloadContentState(Ljava/lang/String;)I

    .line 5386
    const/4 v3, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 5390
    .local v2, "stateList":[I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbShutdownCancelDownloadTerminationSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getProcessingList([I)Ljava/util/List;

    move-result-object v0

    .line 5391
    .local v0, "downloadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 5392
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbShutdownCancelDownloadTerminationSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifySignalLevelOff()V

    goto :goto_0

    .line 5386
    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method
