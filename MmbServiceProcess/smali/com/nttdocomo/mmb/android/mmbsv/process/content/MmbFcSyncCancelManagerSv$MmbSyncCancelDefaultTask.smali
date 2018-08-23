.class abstract Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDefaultTask;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;
.source "MmbFcSyncCancelManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "MmbSyncCancelDefaultTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;)V
    .locals 0

    .prologue
    .line 306
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDefaultTask;, "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDefaultTask<TT;>;"
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDefaultTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;

    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;)V

    return-void
.end method


# virtual methods
.method protected abstract createCancelInfo(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract doRequestCancel(Ljava/lang/String;)Z
.end method

.method protected abstract getCallback(Ljava/lang/Object;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;"
        }
    .end annotation
.end method

.method protected abstract isProcessing(Ljava/lang/String;)Z
.end method

.method protected abstract registerCancelInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation
.end method

.method protected abstract removeCancelInfo(Ljava/lang/String;)V
.end method

.method protected final requestCancelImpl(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDefaultTask;, "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDefaultTask<TT;>;"
    const/4 v1, 0x0

    .line 312
    const/4 v2, 0x0

    .line 315
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDefaultTask;->createCancelInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    .local v0, "cancelInfo":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    move-object v3, v2

    .line 345
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :goto_0
    return-object v3

    .line 322
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .restart local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDefaultTask;->registerCancelInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 323
    .local v4, "retInfo":Ljava/lang/Object;, "TT;"
    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 324
    .local v1, "cancelRunning":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 325
    move-object v0, v4

    .line 328
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDefaultTask;->isProcessing(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 330
    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDefaultTask;->doRequestCancel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 331
    :cond_3
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDefaultTask;->getCallback(Ljava/lang/Object;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 338
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 339
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDefaultTask;->removeCancelInfo(Ljava/lang/String;)V

    :cond_5
    move-object v3, v2

    .line 345
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .restart local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    goto :goto_0

    .line 334
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .restart local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :cond_6
    :try_start_1
    const-string v5, "request cancel failed."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 338
    :catchall_0
    move-exception v5

    if-nez v2, :cond_7

    .line 339
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDefaultTask;->removeCancelInfo(Ljava/lang/String;)V

    :cond_7
    throw v5
.end method
