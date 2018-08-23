.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientSetupManagerSv.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbCaCasDrmInitializeNextCallableImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmCallableResult;",
        ">;"
    }
.end annotation


# instance fields
.field final emminfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;

.field final entityid:B

.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmCallableResult;",
            ">;"
        }
    .end annotation
.end field

.field final sync:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmCallableResult;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

.field final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;BLjava/lang/String;)V
    .locals 1
    .param p2, "aEmminfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;
    .param p3, "aEntityid"    # B
    .param p4, "aUrl"    # Ljava/lang/String;

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1342
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->sync:Ljava/util/concurrent/SynchronousQueue;

    .line 1346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->future:Ljava/util/concurrent/Future;

    .line 1380
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->emminfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;

    .line 1381
    iput-byte p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->entityid:B

    .line 1382
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->url:Ljava/lang/String;

    .line 1386
    return-void
.end method


# virtual methods
.method public call()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmCallableResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1565
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->sync:Ljava/util/concurrent/SynchronousQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->future:Ljava/util/concurrent/Future;

    .line 1566
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->runKwThread()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;

    move-result-object v0

    .line 1567
    .local v0, "responseemmkw":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->runUpdateEmm(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;)V

    .line 1568
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->runTierThread()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;

    move-result-object v1

    .line 1570
    .local v1, "responseemmtier":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->runUpdateEmm(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;)V

    .line 1571
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmCallableResult;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmCallableResult;-><init>()V

    .line 1572
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmCallableResult;
    const/4 v3, 0x0

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmCallableResult;->result:I

    .line 1576
    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1339
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->call()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmCallableResult;

    move-result-object v0

    return-object v0
.end method

.method runKwThread()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    const v15, -0x1000007

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1406
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientKwCallableImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->emminfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;

    move-object/from16 v0, p0

    iget-byte v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->entityid:B

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->url:Ljava/lang/String;

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientKwCallableImpl;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;BLjava/lang/String;)V

    .line 1408
    .local v6, "kwthread":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientKwCallableImpl;
    const/4 v2, 0x0

    .line 1409
    .local v2, "cancel":Z
    const/4 v7, 0x0

    .line 1410
    .local v7, "responseemminfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientKwCallableImpl;->run()V

    .line 1416
    :cond_0
    :try_start_0
    iget-object v8, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientKwCallableImpl;->future:Ljava/util/concurrent/FutureTask;

    const-wide/16 v10, 0x64

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v10, v11, v9}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;

    move-object v7, v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1449
    :cond_1
    :goto_0
    if-eqz v7, :cond_0

    .line 1453
    return-object v7

    .line 1417
    :catch_0
    move-exception v4

    .line 1418
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->future:Ljava/util/concurrent/Future;

    invoke-interface {v8}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1419
    iget-object v8, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientKwCallableImpl;->future:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v8, v12}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 1420
    const/4 v2, 0x1

    goto :goto_0

    .line 1422
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v4

    .line 1423
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 1424
    .local v3, "cause":Ljava/lang/Throwable;
    instance-of v8, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    if-eqz v8, :cond_2

    move-object v5, v3

    .line 1425
    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    .line 1426
    .local v5, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v5

    .line 1428
    .end local v5    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_2
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v8, -0x1

    const-string v9, "Thread execution error."

    invoke-direct {v5, v8, v9, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1432
    .restart local v5    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v8, "[%d] %s"

    new-array v9, v14, [Ljava/lang/Object;

    iget v10, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1433
    throw v5

    .line 1436
    .end local v3    # "cause":Ljava/lang/Throwable;
    .end local v4    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v5    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_2
    move-exception v4

    .line 1437
    .local v4, "e":Ljava/util/concurrent/CancellationException;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v8, "Cancelled."

    invoke-direct {v5, v15, v8, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1440
    .restart local v5    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v8, "[%d] %s"

    new-array v9, v14, [Ljava/lang/Object;

    iget v10, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1441
    throw v5

    .line 1442
    .end local v4    # "e":Ljava/util/concurrent/CancellationException;
    .end local v5    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_3
    move-exception v4

    .line 1443
    .local v4, "e":Ljava/lang/InterruptedException;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v8, "Interrupted."

    invoke-direct {v5, v15, v8, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1446
    .restart local v5    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v8, "[%d] %s"

    new-array v9, v14, [Ljava/lang/Object;

    iget v10, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1447
    throw v5
.end method

.method runTierThread()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    const v15, -0x1000007

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1474
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientTierCallableImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->emminfo:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;

    move-object/from16 v0, p0

    iget-byte v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->entityid:B

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->url:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientTierCallableImpl;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;BLjava/lang/String;)V

    .line 1476
    .local v7, "tierthread":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientTierCallableImpl;
    const/4 v2, 0x0

    .line 1477
    .local v2, "cancel":Z
    const/4 v6, 0x0

    .line 1478
    .local v6, "responseemminfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientTierCallableImpl;->run()V

    .line 1484
    :cond_0
    :try_start_0
    iget-object v8, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientTierCallableImpl;->future:Ljava/util/concurrent/FutureTask;

    const-wide/16 v10, 0x64

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v10, v11, v9}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;

    move-object v6, v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1517
    :cond_1
    :goto_0
    if-eqz v6, :cond_0

    .line 1521
    return-object v6

    .line 1485
    :catch_0
    move-exception v4

    .line 1486
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeNextCallableImpl;->future:Ljava/util/concurrent/Future;

    invoke-interface {v8}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1487
    iget-object v8, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmClientTierCallableImpl;->future:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v8, v12}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 1488
    const/4 v2, 0x1

    goto :goto_0

    .line 1490
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v4

    .line 1491
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 1492
    .local v3, "cause":Ljava/lang/Throwable;
    instance-of v8, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    if-eqz v8, :cond_2

    move-object v5, v3

    .line 1493
    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    .line 1494
    .local v5, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v5

    .line 1496
    .end local v5    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_2
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v8, -0x1

    const-string v9, "Thread execution error."

    invoke-direct {v5, v8, v9, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1500
    .restart local v5    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v8, "[%d] %s"

    new-array v9, v14, [Ljava/lang/Object;

    iget v10, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1501
    throw v5

    .line 1504
    .end local v3    # "cause":Ljava/lang/Throwable;
    .end local v4    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v5    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_2
    move-exception v4

    .line 1505
    .local v4, "e":Ljava/util/concurrent/CancellationException;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v8, "Cancelled."

    invoke-direct {v5, v15, v8, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1508
    .restart local v5    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v8, "[%d] %s"

    new-array v9, v14, [Ljava/lang/Object;

    iget v10, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1509
    throw v5

    .line 1510
    .end local v4    # "e":Ljava/util/concurrent/CancellationException;
    .end local v5    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_3
    move-exception v4

    .line 1511
    .local v4, "e":Ljava/lang/InterruptedException;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v8, "Interrupted."

    invoke-direct {v5, v15, v8, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1514
    .restart local v5    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v8, "[%d] %s"

    new-array v9, v14, [Ljava/lang/Object;

    iget v10, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1515
    throw v5
.end method

.method runUpdateEmm(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;)V
    .locals 4
    .param p1, "aEmmInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;

    .prologue
    .line 1543
    :try_start_0
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->access$200()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1544
    iget-byte v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;->mmbEntityId:B

    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseEmm;->mmbEmmData:[B

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->updateEmm(B[B)V

    .line 1545
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->waitUpdateEmm()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;

    move-result-object v1

    .line 1546
    .local v1, "update":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;
    iget v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;->mmbCasRes:I

    if-eqz v2, :cond_0

    .line 1547
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    iget v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;->mmbCasRes:I

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->checkCasResType(I)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(I)V

    .line 1550
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1553
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v1    # "update":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->access$200()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1    # "update":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;
    :cond_0
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->access$200()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1558
    return-void
.end method
