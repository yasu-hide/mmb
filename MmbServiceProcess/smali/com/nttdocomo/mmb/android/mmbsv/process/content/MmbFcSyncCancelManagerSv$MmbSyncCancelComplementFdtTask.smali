.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelComplementFdtTask;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;
.source "MmbFcSyncCancelManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbSyncCancelComplementFdtTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelComplementFdtTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;

    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;)V

    return-void
.end method


# virtual methods
.method protected requestCancelImpl(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 702
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelComplementFdtTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mFdtStateManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getStateInfo(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    move-result-object v2

    .line 703
    .local v2, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    const/4 v0, 0x0

    .line 704
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    if-eqz v2, :cond_1

    .line 705
    iget-object v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 706
    iget-object v1, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    .line 707
    .local v1, "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->INITIAL:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->EXECUTING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-ne v1, v3, :cond_1

    .line 709
    :cond_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelComplementFdtTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mIpcStub:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->cancelComplementFdt(Ljava/lang/String;)V

    .line 715
    .end local v1    # "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    :cond_1
    return-object v0
.end method
