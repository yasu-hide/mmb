.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;
.super Ljava/lang/Object;
.source "MmbFwIpcStubSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->deleteIndividualContents(IILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

.field final synthetic val$aCridList:Ljava/util/List;

.field final synthetic val$aJobId:I

.field final synthetic val$aProcessId:I

.field final synthetic val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

.field final synthetic val$target:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;II)V
    .locals 0

    .prologue
    .line 10671
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->val$target:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->val$aCridList:Ljava/util/List;

    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    iput p5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->val$aProcessId:I

    iput p6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->val$aJobId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 10674
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->val$target:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->val$aCridList:Ljava/util/List;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->deleteIndividualContents(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;

    move-result-object v0

    .line 10675
    .local v0, "ans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->val$aProcessId:I

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->access$1200(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->val$aJobId:I

    invoke-interface {v3, v4, v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setListResult(IILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10684
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10686
    .end local v0    # "ans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 10676
    :catch_0
    move-exception v1

    .line 10677
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10679
    :try_start_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->val$aProcessId:I

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->access$1200(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->val$aJobId:I

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-virtual {v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10684
    :goto_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10680
    :catch_1
    move-exception v2

    .line 10681
    .local v2, "e1":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 10684
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e1":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;->val$cb:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    throw v3
.end method
