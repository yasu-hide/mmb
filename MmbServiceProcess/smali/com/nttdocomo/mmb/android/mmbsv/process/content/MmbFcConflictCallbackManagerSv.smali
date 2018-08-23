.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;
.super Ljava/lang/Object;
.source "MmbFcConflictCallbackManagerSv.java"


# instance fields
.field private mAutoDownloadCb:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;

.field private mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

.field private mManualDownloadCb:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 1
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 34
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mAutoDownloadCb:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;

    .line 39
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mManualDownloadCb:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;

    .line 57
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 61
    return-void
.end method


# virtual methods
.method registerConflictCallback()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mManualDownloadCb:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mManualDownloadCb:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mAutoDownloadCb:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;

    if-nez v1, :cond_1

    .line 88
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mAutoDownloadCb:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;

    .line 92
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v1

    const v2, 0xa900

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mManualDownloadCb:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->registerCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V

    .line 94
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v1

    const v2, 0xad00

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mAutoDownloadCb:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->registerCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 100
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method unregisterConflictCallback()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v1

    const v2, 0xa900

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mManualDownloadCb:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->unregisterCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V

    .line 135
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v1

    const v2, 0xad00

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->mAutoDownloadCb:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->unregisterCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 141
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 143
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
