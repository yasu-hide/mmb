.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;
.super Ljava/lang/Thread;
.source "MmbCaCasDrmClientContractManagerSv.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbCaCasDrmCheckRequiresTierUpdatingThread"
.end annotation


# instance fields
.field private entityId:B

.field public final mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

.field private tierUpdates:Z


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;B)V
    .locals 1
    .param p2, "aEntityId"    # B

    .prologue
    .line 3209
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    .line 3210
    const-class v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;

    invoke-static {v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->getThreadName(Ljava/lang/Class;B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->tierUpdates:Z

    .line 3198
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 3214
    iput-byte p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->entityId:B

    .line 3215
    invoke-static {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 3219
    return-void
.end method

.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;BZ)V
    .locals 0
    .param p2, "aEntityId"    # B
    .param p3, "aTierUpdates"    # Z

    .prologue
    .line 3234
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;B)V

    .line 3238
    iput-boolean p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->tierUpdates:Z

    .line 3242
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3258
    const/4 v1, 0x1

    .line 3259
    .local v1, "result":Z
    :try_start_0
    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->tierUpdates:Z

    if-eqz v4, :cond_0

    .line 3260
    iget-byte v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->entityId:B

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->getTierInfo(B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;

    move-result-object v3

    .line 3262
    .local v3, "tierInfo":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    iget-byte v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->entityId:B

    invoke-static {v4, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->access$600(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;)Z

    move-result v1

    .line 3263
    if-nez v1, :cond_0

    .line 3265
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    iget-byte v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->entityId:B

    invoke-static {v4, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->access$700(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;BLmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;)Z

    move-result v1

    .line 3268
    .end local v3    # "tierInfo":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    :cond_0
    if-eqz v1, :cond_1

    .line 3269
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    move-result-object v5

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;->access$500(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 3271
    .local v2, "setupsv":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
    iget-byte v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->entityId:B

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v2, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->getEmmTier(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3278
    .end local v2    # "setupsv":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 3283
    :goto_0
    return-void

    .line 3273
    :catch_0
    move-exception v0

    .line 3274
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3278
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    goto :goto_0

    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmCheckRequiresTierUpdatingThread;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    throw v4
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "aThread"    # Ljava/lang/Thread;
    .param p2, "aEx"    # Ljava/lang/Throwable;

    .prologue
    .line 3299
    const-string v0, "[%s] %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3300
    invoke-static {p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3304
    return-void
.end method
