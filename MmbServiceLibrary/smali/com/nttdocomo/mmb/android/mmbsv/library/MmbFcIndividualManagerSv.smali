.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;
.super Ljava/lang/Object;
.source "MmbFcIndividualManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv$MmbFcIndividualStateWrapperSv;
    }
.end annotation


# static fields
.field private static smListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv$MmbFcIndividualStateWrapperSv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

.field private mProcessId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->smListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)V
    .locals 1
    .param p1, "aConnection"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 75
    :cond_1
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    .line 76
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->mProcessId:I

    .line 80
    return-void
.end method


# virtual methods
.method public cancelIndividualExport(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 203
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 204
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v3

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->mProcessId:I

    invoke-interface {v3, v4, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->cancelIndividualExport(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1    # "jobid":I
    :goto_0
    return-object v2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method protected createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualResultSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualResultSv;-><init>()V

    .line 122
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<TT;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->getResponse()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    .line 126
    return-object v0
.end method

.method public deleteIndividualContents(Ljava/util/List;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 280
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 281
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v3

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->mProcessId:I

    invoke-interface {v3, v4, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->deleteIndividualContents(IILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v1    # "jobid":I
    :goto_0
    return-object v2

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v0

    .line 102
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;
    return-object v0
.end method

.method public getParentalControl()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 531
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 532
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v3

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->mProcessId:I

    invoke-interface {v3, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getParentalControlIndiv(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .end local v1    # "jobid":I
    :goto_0
    return-object v2

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getParentalControlRate()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 560
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 561
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v3

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->mProcessId:I

    invoke-interface {v3, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getParentalControlRateIndiv(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .end local v1    # "jobid":I
    :goto_0
    return-object v2

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public notifyExportFinish(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 244
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 245
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v3

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->mProcessId:I

    invoke-interface {v3, v4, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->notifyExportFinish(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v1    # "jobid":I
    :goto_0
    return-object v2

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public registIndividualStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 6
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 450
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 451
    .local v1, "jobid":I
    const/4 v3, 0x0

    .line 452
    .local v3, "wrapper":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv$MmbFcIndividualStateWrapperSv;
    if-eqz p1, :cond_0

    .line 453
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv$MmbFcIndividualStateWrapperSv;

    .end local v3    # "wrapper":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv$MmbFcIndividualStateWrapperSv;
    invoke-direct {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv$MmbFcIndividualStateWrapperSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;)V

    .line 454
    .restart local v3    # "wrapper":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv$MmbFcIndividualStateWrapperSv;
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->smListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 455
    const-string v4, "Listener already registered."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    const/4 v3, 0x0

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->mProcessId:I

    invoke-interface {v4, v5, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->registIndividualStateListener(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v1    # "jobid":I
    .end local v3    # "wrapper":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv$MmbFcIndividualStateWrapperSv;
    :goto_0
    return-object v2

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public startIndividualExport(Ljava/lang/String;Ljava/lang/String;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aContentsPath"    # Ljava/lang/String;
    .param p3, "aIsRewrite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v7

    .line 165
    .local v7, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v2

    .line 166
    .local v2, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->mProcessId:I

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->startIndividualExport(IILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v2    # "jobid":I
    :goto_0
    return-object v7

    .line 168
    :catch_0
    move-exception v6

    .line 169
    .local v6, "err":Landroid/os/RemoteException;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public unregistIndividualStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 6
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 496
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 497
    .local v1, "jobid":I
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->smListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv$MmbFcIndividualStateWrapperSv;

    .line 498
    .local v3, "wrapper":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv$MmbFcIndividualStateWrapperSv;
    if-nez v3, :cond_0

    .line 499
    const-string v4, "Listener not registered."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;->mProcessId:I

    invoke-interface {v4, v5, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->unregistIndividualStateListener(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .end local v1    # "jobid":I
    .end local v3    # "wrapper":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv$MmbFcIndividualStateWrapperSv;
    :goto_0
    return-object v2

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
