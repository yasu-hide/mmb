.class public Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmMwClientListenerImpl;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientProxySv.java"

# interfaces
.implements Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmbCaCasDrmMwClientListenerImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleteCreateKl(ILmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;)V
    .locals 4
    .param p1, "aCasRes"    # I
    .param p2, "aInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;

    .prologue
    .line 1726
    :try_start_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmCreateKlData;

    invoke-direct {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmCreateKlData;-><init>(ILmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;)V

    .line 1730
    .local v0, "data":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmCreateKlData;
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->QUEUE_COMPLETE_CREATE_KL:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1734
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->access$000()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 1739
    .end local v0    # "data":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmCreateKlData;
    :goto_0
    return-void

    .line 1731
    :catch_0
    move-exception v1

    .line 1732
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1734
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->access$000()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->access$000()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v2
.end method

.method public onCompleteUpdateEmm(I)V
    .locals 4
    .param p1, "aCasRes"    # I

    .prologue
    .line 1761
    :try_start_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;-><init>(I)V

    .line 1765
    .local v0, "data":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->QUEUE_COMPLETE_UPDATE_EMM:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1769
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->access$000()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    .line 1774
    .end local v0    # "data":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmUpdateEmmData;
    :goto_0
    return-void

    .line 1766
    :catch_0
    move-exception v1

    .line 1767
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1769
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->access$000()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv;->access$000()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientProxySv$MmbCaCasDrmSemaphoreLock;->unlock()V

    throw v2
.end method
