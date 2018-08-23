.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController$MmbFcWifiSleepControlTask;
.super Ljava/lang/Object;
.source "MmbFcComplementControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbFcWifiSleepControlTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;)V
    .locals 0

    .prologue
    .line 2391
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController$MmbFcWifiSleepControlTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2400
    const/4 v6, 0x2

    :try_start_0
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    .line 2404
    .local v2, "complementStates":[I
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController$MmbFcWifiSleepControlTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v3

    .line 2406
    .local v3, "contentUtil":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getProcessingList([I)Ljava/util/List;

    move-result-object v1

    .line 2408
    .local v1, "complementList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController$MmbFcWifiSleepControlTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v5

    .line 2410
    .local v5, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getStateInfoList()Ljava/util/List;

    move-result-object v0

    .line 2413
    .local v0, "complementFdtList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2414
    :cond_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController$MmbFcWifiSleepControlTask;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;->startWakeup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2422
    .end local v0    # "complementFdtList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;>;"
    .end local v1    # "complementList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "complementStates":[I
    .end local v3    # "contentUtil":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .end local v5    # "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    :cond_1
    :goto_0
    return-void

    .line 2416
    :catch_0
    move-exception v4

    .line 2417
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2400
    nop

    :array_0
    .array-data 4
        0x3
        0x4
    .end array-data
.end method
