.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;
.super Ljava/lang/Object;
.source "MmbFcComplementTaskSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmbRunCancelComplementFdt"
.end annotation


# instance fields
.field private mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

.field private mCrid:Ljava/lang/String;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 1
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v0, 0x0

    .line 4752
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4731
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->mCrid:Ljava/lang/String;

    .line 4736
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 4756
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->mCrid:Ljava/lang/String;

    .line 4757
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 4761
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 4780
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->getIntResult()I

    move-result v4

    if-nez v4, :cond_1

    .line 4783
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v1

    .line 4785
    .local v1, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->mCrid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getStateInfo(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    move-result-object v3

    .line 4786
    .local v3, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->mCrid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    move-result-object v2

    .line 4788
    .local v2, "oldState":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->REPAIR_FDT:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->mCrid:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v0

    .line 4789
    .local v0, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    if-eqz v0, :cond_3

    .line 4791
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->COMPLEMENT_FDT_CANCEL_LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 4792
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->mCrid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->changeStateCancel(Ljava/lang/String;)V

    .line 4793
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4795
    if-eqz v3, :cond_2

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->INITIAL:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-ne v2, v4, :cond_2

    .line 4797
    iget v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbType:I

    if-ne v4, v7, :cond_0

    .line 4798
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v4

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->mCrid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplementFdtFixed(Ljava/lang/String;)Z

    .line 4801
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtNotice()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;

    move-result-object v4

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->mCrid:Ljava/lang/String;

    iget v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbType:I

    invoke-virtual {v4, v5, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtCancel(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4818
    .end local v0    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v1    # "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    .end local v2    # "oldState":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    .end local v3    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :cond_1
    :goto_0
    return-void

    .line 4793
    .restart local v0    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .restart local v1    # "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    .restart local v2    # "oldState":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    .restart local v3    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 4804
    :cond_2
    const-string v4, "stateInfo %s"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4807
    :cond_3
    if-eqz v3, :cond_1

    .line 4809
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->COMPLEMENT_FDT_CANCEL_LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 4810
    :try_start_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;->mCrid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->changeStateCancel(Ljava/lang/String;)V

    .line 4811
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method
