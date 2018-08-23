.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
.source "MmbFcContentSessionSv.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;-><init>(Landroid/content/Context;)V

    .line 74
    return-void
.end method


# virtual methods
.method public cancelComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 11
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 511
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 513
    :cond_0
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v8

    .line 515
    :cond_1
    const/4 v5, 0x0

    .line 518
    .local v5, "result":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    .line 519
    .local v1, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v4

    .line 522
    .local v4, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getStateInfo(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    move-result-object v7

    .line 523
    .local v7, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    if-eqz v7, :cond_2

    .line 524
    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelComplementFdt(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v5

    .line 525
    iget v8, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbType:I

    if-ne v8, v10, :cond_2

    move v6, v5

    .line 549
    .end local v1    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v4    # "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    .end local v5    # "result":I
    .end local v7    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    .local v6, "result":I
    :goto_0
    return v6

    .line 534
    .end local v6    # "result":I
    .restart local v1    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .restart local v4    # "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    .restart local v5    # "result":I
    .restart local v7    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .end local v1    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v4    # "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    .end local v7    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :goto_1
    move v6, v5

    .line 549
    .end local v5    # "result":I
    .restart local v6    # "result":I
    goto :goto_0

    .line 535
    .end local v6    # "result":I
    .restart local v5    # "result":I
    :catch_0
    move-exception v2

    .line 536
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v8, 0x2

    new-array v3, v8, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v9, v3, v8

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v8, v3, v10

    .line 540
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 541
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_1

    .line 542
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 543
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 544
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v8, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public cancelContentExecution(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 4
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 637
    if-nez p1, :cond_0

    .line 639
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 642
    :cond_0
    const/4 v2, 0x0

    .line 645
    .local v2, "result":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 647
    .local v0, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelContentExecution(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 656
    return v2

    .line 648
    .end local v0    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :catch_0
    move-exception v1

    .line 649
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 650
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public cancelDownload(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 11
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 158
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 160
    :cond_0
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5

    .line 162
    :cond_1
    const/4 v4, 0x0

    .line 165
    .local v4, "result":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    .line 167
    .local v1, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelDownload(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v4

    .line 168
    if-eqz v4, :cond_2

    .line 169
    const-string v5, "cancelDownload() result [%d]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    .end local v1    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_2
    :goto_0
    return v4

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    new-array v3, v10, [Ljava/lang/Class;

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v5, v3, v9

    .line 175
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 176
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 177
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 179
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public deleteContents(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    .locals 7
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
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
    .line 104
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 106
    :cond_0
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5

    .line 108
    :cond_1
    const/4 v4, 0x0

    .line 110
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    .line 112
    .local v1, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->deleteContents(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 130
    .end local v1    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :goto_0
    return-object v4

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v5, 0x5

    new-array v3, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v6, v3, v5

    .line 121
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 122
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 123
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 125
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public deleteDownloadSchedule(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 326
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 328
    :cond_0
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5

    .line 330
    :cond_1
    const/4 v4, 0x0

    .line 333
    .local v4, "result":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    .line 335
    .local v1, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    const/4 v5, 0x0

    invoke-virtual {v1, p1, p2, v5, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->deleteDownloadSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 350
    .end local v1    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :goto_0
    return v4

    .line 336
    :catch_0
    move-exception v2

    .line 337
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v6, v3, v5

    .line 341
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 342
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 343
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 344
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 345
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getDownloadProgress(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 213
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 215
    :cond_0
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5

    .line 217
    :cond_1
    const/4 v4, 0x0

    .line 220
    .local v4, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    .line 221
    .local v1, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadProgress(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 237
    .end local v1    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :goto_0
    return-object v4

    .line 222
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v6, v3, v5

    .line 228
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 229
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 230
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 231
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 232
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public reserveDownload(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 273
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 275
    :cond_0
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5

    .line 277
    :cond_1
    const/4 v4, 0x0

    .line 280
    .local v4, "result":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    .line 282
    .local v1, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    const/4 v5, 0x0

    invoke-virtual {v1, p1, p2, v5, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->reserveDownload(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 298
    .end local v1    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :goto_0
    return v4

    .line 283
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v6, v3, v5

    .line 289
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 290
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 291
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 292
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 293
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public setDownloadStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 2
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 374
    if-nez p2, :cond_0

    .line 376
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->setDownloadStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v0

    .line 385
    .local v0, "result":I
    return v0
.end method

.method public setExecutionStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 2
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 680
    if-nez p2, :cond_0

    .line 682
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 686
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->setExecutionStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v0

    .line 691
    .local v0, "result":I
    return v0
.end method

.method public setOpenStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 2
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 408
    if-nez p2, :cond_0

    .line 410
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->setOpenStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v0

    .line 418
    .local v0, "result":I
    return v0
.end method

.method public startComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 458
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 460
    :cond_0
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v6

    .line 462
    :cond_1
    const/4 v5, 0x0

    .line 465
    .local v5, "result":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    .line 467
    .local v2, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v0

    .line 470
    .local v0, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    invoke-virtual {v2, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 486
    .end local v0    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v2    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :goto_0
    return v5

    .line 472
    :catch_0
    move-exception v3

    .line 473
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v7, v4, v6

    .line 477
    .local v4, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 478
    .local v1, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 479
    .end local v1    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v4    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    .line 480
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 481
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v6, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public startContentExecution(Ljava/lang/String;Ljava/lang/String;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aContentsPath"    # Ljava/lang/String;
    .param p3, "aIsRewrite"    # Z
    .param p4, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 588
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 590
    :cond_0
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5

    .line 592
    :cond_1
    const/4 v4, 0x0

    .line 595
    .local v4, "result":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    .line 597
    .local v1, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startContentExecution(Ljava/lang/String;Ljava/lang/String;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 614
    .end local v1    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :goto_0
    return v4

    .line 598
    :catch_0
    move-exception v2

    .line 599
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v5, 0x4

    new-array v3, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v6, v3, v5

    .line 605
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 606
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 607
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 608
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 609
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public startExportThumbnail(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aUri"    # Ljava/lang/String;
    .param p3, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 717
    if-nez p3, :cond_0

    .line 719
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 722
    :cond_0
    const/4 v3, 0x0

    .line 725
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startExportThumbnail(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 741
    :goto_0
    return-object v3

    .line 726
    :catch_0
    move-exception v1

    .line 727
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v5, v2, v4

    .line 731
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 732
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 733
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 734
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 735
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
