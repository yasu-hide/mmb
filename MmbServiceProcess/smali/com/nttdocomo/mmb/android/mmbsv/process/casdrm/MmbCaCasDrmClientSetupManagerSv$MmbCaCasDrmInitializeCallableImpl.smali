.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;
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
    name = "MmbCaCasDrmInitializeCallableImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;",
        ">;"
    }
.end annotation


# instance fields
.field final entityid:B

.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;",
            ">;"
        }
    .end annotation
.end field

.field final info:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;

.field final sync:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

.field final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;BLjava/lang/String;)V
    .locals 1
    .param p2, "aInfo"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;
    .param p3, "aEntityid"    # B
    .param p4, "aUrl"    # Ljava/lang/String;

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1260
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;->sync:Ljava/util/concurrent/SynchronousQueue;

    .line 1264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;->future:Ljava/util/concurrent/Future;

    .line 1297
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;->info:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;

    .line 1298
    iput-byte p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;->entityid:B

    .line 1299
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;->url:Ljava/lang/String;

    .line 1303
    return-void
.end method


# virtual methods
.method public call()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1310
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v2

    .line 1311
    .local v2, "prefMgrSv":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getReceptionServerUrl(I)Ljava/lang/String;

    move-result-object v3

    .line 1312
    .local v3, "receptionserver":Ljava/lang/String;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;->sync:Ljava/util/concurrent/SynchronousQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    iput-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;->future:Ljava/util/concurrent/Future;

    .line 1313
    const/4 v1, 0x0

    .line 1314
    .local v1, "pre33seg":[B
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    move-result-object v5

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;->future:Ljava/util/concurrent/Future;

    invoke-virtual {v5, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->getPre33SegCommonId(Ljava/lang/String;Ljava/util/concurrent/Future;)[B

    move-result-object v1

    .line 1315
    if-nez v1, :cond_0

    .line 1316
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v5, -0x1

    const-string v6, "Failed to get pre 33 seg common ID."

    invoke-direct {v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 1319
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1320
    throw v0

    .line 1322
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    move-result-object v5

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;->info:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;->url:Ljava/lang/String;

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;->future:Ljava/util/concurrent/Future;

    invoke-virtual {v5, v6, v7, v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;->setup(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCreateKlInfo;Ljava/lang/String;[BLjava/util/concurrent/Future;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;

    move-result-object v4

    .line 1326
    .local v4, "response":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;
    return-object v4
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1257
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSetupManagerSv$MmbCaCasDrmInitializeCallableImpl;->call()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$MmbCaCasDrmNwResponseKl;

    move-result-object v0

    return-object v0
.end method
