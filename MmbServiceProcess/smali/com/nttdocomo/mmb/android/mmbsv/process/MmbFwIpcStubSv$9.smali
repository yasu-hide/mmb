.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;
.super Ljava/lang/Object;
.source "MmbFwIpcStubSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkConflict(IIIIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

.field final synthetic val$aCrid:Ljava/lang/String;

.field final synthetic val$aProcessId:I

.field final synthetic val$aServiceId:I

.field final synthetic val$aServiceType:I

.field final synthetic val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

.field final synthetic val$target:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;IILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;I)V
    .locals 0

    .prologue
    .line 7967
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$target:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$aServiceType:I

    iput p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$aServiceId:I

    iput-object p5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$aCrid:Ljava/lang/String;

    iput-object p6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    iput p7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$aProcessId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 7970
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$target:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$aServiceType:I

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$aServiceId:I

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$aCrid:Ljava/lang/String;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->checkConflict(IILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 7972
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 7973
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->access$900(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;

    move-result-object v2

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$aProcessId:I

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$aServiceType:I

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$aServiceId:I

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$aCrid:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->access$1000(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;IIILjava/lang/String;)V

    .line 7976
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7981
    .end local v1    # "result":I
    :goto_0
    return-void

    .line 7977
    :catch_0
    move-exception v0

    .line 7978
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7979
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
