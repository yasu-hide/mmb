.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;
.super Ljava/lang/Object;
.source "MmbFwIpcStubSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->clearServiceStatus(IIIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

.field final synthetic val$aCrid:Ljava/lang/String;

.field final synthetic val$aServiceId:I

.field final synthetic val$aServiceType:I

.field final synthetic val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

.field final synthetic val$target:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;IILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 0

    .prologue
    .line 7905
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;->val$target:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;->val$aServiceType:I

    iput p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;->val$aServiceId:I

    iput-object p5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;->val$aCrid:Ljava/lang/String;

    iput-object p6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 7908
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;->val$target:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;->val$aServiceType:I

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;->val$aServiceId:I

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;->val$aCrid:Ljava/lang/String;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->clearServiceStatus(IILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7910
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->access$900(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;

    move-result-object v1

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;->val$aServiceType:I

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;I)V

    .line 7911
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7916
    :goto_0
    return-void

    .line 7912
    :catch_0
    move-exception v0

    .line 7913
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7914
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
