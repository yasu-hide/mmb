.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelComplementTask;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;
.source "MmbFcSyncCancelManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbSyncCancelComplementTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelComplementTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;

    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;)V

    return-void
.end method


# virtual methods
.method protected requestCancelImpl(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 672
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelComplementTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mContentModule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementNotice()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->getRepairCallback(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v0

    .line 674
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    if-eqz v0, :cond_1

    .line 675
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelComplementTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mContentModule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v1

    .line 676
    .local v1, "state":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 678
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelComplementTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mIpcStub:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->cancelComplement(Ljava/lang/String;)V

    .line 684
    .end local v1    # "state":I
    :cond_1
    return-object v0
.end method
