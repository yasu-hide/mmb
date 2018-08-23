.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;
.super Ljava/lang/Object;
.source "MmbFcIndividualControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv$1;
    }
.end annotation


# instance fields
.field private mContentModule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

.field private mIndivEventManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

.field private mIndivStateManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)V
    .locals 1
    .param p1, "aContentModule"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->mContentModule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 87
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->mIndivEventManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    .line 88
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->mIndivStateManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;

    .line 92
    return-void
.end method

.method private checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z
    .locals 2
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, "result":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    const/4 v0, 0x1

    .line 609
    :cond_0
    return v0
.end method


# virtual methods
.method public cancelIndividualExport(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 345
    const/4 v1, -0x1

    .line 348
    .local v1, "ret":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    move-result-object v2

    .line 349
    .local v2, "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv$1;->$SwitchMap$com$nttdocomo$mmb$android$mmbsv$process$content$MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv:[I

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 361
    const/4 v1, -0x1

    .line 368
    :cond_0
    :goto_0
    return v1

    .line 352
    :pswitch_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getContentAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->terminateIndivContents(Ljava/lang/String;)Z

    move-result v0

    .line 353
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 354
    const/4 v1, 0x0

    goto :goto_0

    .line 358
    .end local v0    # "result":Z
    :pswitch_1
    const/16 v1, -0x15

    .line 359
    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public deleteIndividualContents(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    .locals 10
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 453
    .local v6, "failedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;

    move-result-object v7

    .line 454
    .local v7, "stateMgr":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getContentAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v0

    .line 456
    .local v0, "contentAccess":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 458
    .local v3, "cridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cridItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 459
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 462
    .local v1, "crid":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 500
    .end local v1    # "crid":Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 501
    move-object v6, v3

    .line 507
    :cond_2
    return-object v6

    .line 469
    .restart local v1    # "crid":Ljava/lang/String;
    :cond_3
    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;->DELETING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->getProcessId()I

    move-result v9

    invoke-virtual {v7, v1, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->setState(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 476
    const/4 v4, 0x0

    .line 479
    .local v4, "deleted":Z
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteIndivContents(Ljava/lang/String;)Z

    move-result v4

    .line 481
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteContentCommon(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    or-int/2addr v4, v8

    .line 490
    invoke-virtual {v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->removeState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;

    .line 493
    if-eqz v4, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getEventManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;->notifyIndividualDeletedAll(Ljava/lang/String;)V

    .line 497
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 482
    :catch_0
    move-exception v5

    .line 484
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_1
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v8, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catchall_0
    move-exception v8

    invoke-virtual {v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->removeState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;

    throw v8

    .line 485
    :catch_1
    move-exception v5

    .line 487
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :try_start_2
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v8, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getContentAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v0

    .line 164
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;
    return-object v0
.end method

.method public getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->mContentModule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 135
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    if-nez v0, :cond_0

    .line 136
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 141
    :cond_0
    return-object v0
.end method

.method public getEventManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->mIndivEventManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    .line 207
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;
    if-nez v0, :cond_0

    .line 208
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 213
    :cond_0
    return-object v0
.end method

.method public getStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->mIndivStateManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;

    .line 233
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;
    if-nez v0, :cond_0

    .line 234
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 239
    :cond_0
    return-object v0
.end method

.method public notifyExportFinish(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 401
    const/4 v2, -0x1

    .line 402
    .local v2, "ret":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getContentAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v0

    .line 405
    .local v0, "contentAccess":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    move-result-object v3

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;->NONE:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    if-ne v3, v4, :cond_1

    .line 408
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->notifyIndividualExecutionFinish(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    const/4 v2, 0x0

    .line 422
    :cond_0
    :goto_0
    return v2

    .line 411
    :catch_0
    move-exception v1

    .line 413
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 416
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_1
    const/16 v2, -0x15

    goto :goto_0
.end method

.method public registIndividualStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getEventManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->getProcessId()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;->registerListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    const/4 v0, 0x0

    .line 545
    .local v0, "result":I
    :goto_0
    return v0

    .line 539
    .end local v0    # "result":I
    :cond_0
    const/4 v0, -0x1

    .line 540
    .restart local v0    # "result":I
    const-string v1, "Failed to register listener."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->mContentModule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 110
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->mIndivEventManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;->shutdown()V

    .line 111
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->mIndivEventManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    .line 112
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->mIndivStateManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;

    .line 116
    return-void
.end method

.method public startIndividualExport(Ljava/lang/String;Ljava/lang/String;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aContentsPath"    # Ljava/lang/String;
    .param p3, "aIsRewrite"    # Z
    .param p4, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 272
    const/4 v0, -0x1

    .line 275
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getContentAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getIndividualAcceptableCount()I

    move-result v4

    if-gtz v4, :cond_0

    .line 276
    const/16 v0, -0x13

    move v1, v0

    .line 317
    .end local v0    # "result":I
    .local v1, "result":I
    :goto_0
    return v1

    .line 283
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;

    move-result-object v3

    .line 285
    .local v3, "stateMgr":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;->EXPORTING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->getCridCount(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;)I

    move-result v2

    .line 286
    .local v2, "stateCnt":I
    const/16 v4, 0x14

    if-lt v2, v4, :cond_1

    .line 287
    const/16 v0, -0x13

    move v1, v0

    .line 292
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 296
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_1
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;->EXPORTING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    invoke-virtual {p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->getProcessId()I

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->setState(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;I)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v0

    .line 302
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 306
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getContentAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->executeIndivContents(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 309
    if-eqz v0, :cond_3

    .line 310
    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->removeState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;

    :cond_3
    move v1, v0

    .line 317
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 309
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_4

    .line 310
    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->removeState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;

    :cond_4
    throw v4
.end method

.method public unregistIndividualStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getEventManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;->unregisterListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    const/4 v0, 0x0

    .line 583
    .local v0, "result":I
    :goto_0
    return v0

    .line 577
    .end local v0    # "result":I
    :cond_0
    const/4 v0, -0x1

    .line 578
    .restart local v0    # "result":I
    const-string v1, "Failed to unregister listener."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
