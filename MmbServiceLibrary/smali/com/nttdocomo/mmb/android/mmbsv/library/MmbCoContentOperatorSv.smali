.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
.source "MmbCoContentOperatorSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwExecutionStateWrapper;,
        Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwOpenStateWrapper;,
        Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwDownloadStateWrapperSv;
    }
.end annotation


# static fields
.field private static mRecodingAvailability:Z


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 1
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 59
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->hasRecordingFunction()Z

    move-result v0

    sput-boolean v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->mRecodingAvailability:Z

    .line 63
    return-void
.end method


# virtual methods
.method public cancelComplement(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 997
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 999
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1000
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1001
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->cancelComplement(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public cancelContentExecution()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 551
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 553
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 554
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 555
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->cancelContentExecution(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public cancelDownload(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 387
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 389
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 390
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 391
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->cancelDownload(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public checkRecOverlapSchedule(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1165
    sget-boolean v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->mRecodingAvailability:Z

    if-nez v4, :cond_0

    .line 1166
    const-string v4, "Recoding Module Unsupported"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1167
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    const-string v5, "Recoding Module Unsupported"

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1169
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1171
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1172
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1173
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->checkRecOverlapSchedule(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public deleteContents(Ljava/util/List;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 349
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 351
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 352
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 353
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->deleteContents(IILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public deleteDownloadSchedule(Ljava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 472
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 473
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 474
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->deleteDownloadSchedule(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public deleteMultiSeries([Ljava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aSeriesIdArray"    # [Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 313
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 314
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 315
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->deleteMultiSeries(II[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public deleteRecContents(Ljava/util/List;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1116
    .local p1, "aPrgNoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-boolean v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->mRecodingAvailability:Z

    if-nez v7, :cond_0

    .line 1117
    const-string v7, "Recoding Module Unsupported"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1118
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    const-string v8, "Recoding Module Unsupported"

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1120
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v5

    .line 1121
    .local v5, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v4, 0x0

    .line 1122
    .local v4, "prgNoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 1123
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "prgNoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    .restart local v4    # "prgNoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1125
    .local v3, "list":Ljava/lang/Integer;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1129
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "list":Ljava/lang/Integer;
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v6

    .line 1130
    .local v6, "sessionid":I
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v2

    .line 1131
    .local v2, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v7

    invoke-interface {v7, v6, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->deleteRecContents(IILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    .end local v2    # "jobid":I
    .end local v6    # "sessionid":I
    :goto_1
    return-object v5

    .line 1132
    :catch_0
    move-exception v0

    .line 1133
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public deleteRecSchedule(Ljava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1076
    sget-boolean v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->mRecodingAvailability:Z

    if-nez v4, :cond_0

    .line 1077
    const-string v4, "Recoding Module Unsupported"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    const-string v5, "Recoding Module Unsupported"

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1080
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1082
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1083
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1084
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->deleteRecSchedule(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public deleteSchedule(Ljava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 143
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 144
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 145
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->deleteSchedule(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public deleteScheduleAt(Ljava/lang/String;JLjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aTriggerTime"    # J
    .param p4, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v8

    .line 185
    .local v8, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v1

    .line 186
    .local v1, "sessionid":I
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v2

    .line 187
    .local v2, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->deleteScheduleAt(IILjava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v1    # "sessionid":I
    .end local v2    # "jobid":I
    :goto_0
    return-object v8

    .line 188
    :catch_0
    move-exception v7

    .line 189
    .local v7, "err":Landroid/os/RemoteException;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public deleteSeries(Ljava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aSeriesId"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 270
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 271
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 272
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->deleteSeries(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public reserveDownload(Ljava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 434
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 435
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 436
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->reserveDownload(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public reserveRec(Ljava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1211
    sget-boolean v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->mRecodingAvailability:Z

    if-nez v4, :cond_0

    .line 1212
    const-string v4, "Recoding Module Unsupported"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1213
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    const-string v5, "Recoding Module Unsupported"

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1215
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1217
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1218
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1219
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->reserveRec(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1226
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1220
    :catch_0
    move-exception v0

    .line 1221
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setDownloadStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 6
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerSv;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v3

    .line 706
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v4

    .line 707
    .local v4, "sessionid":I
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 708
    .local v1, "jobid":I
    const/4 v2, 0x0

    .line 709
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;
    if-eqz p1, :cond_0

    .line 710
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwDownloadStateWrapperSv;

    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;
    invoke-direct {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwDownloadStateWrapperSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerSv;)V

    .line 712
    .restart local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v5

    invoke-interface {v5, v4, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->setDownloadStateListener(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    .end local v1    # "jobid":I
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;
    .end local v4    # "sessionid":I
    :goto_0
    return-object v3

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setExecutionStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 6
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerSv;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v3

    .line 910
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v4

    .line 911
    .local v4, "sessionid":I
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 912
    .local v1, "jobid":I
    const/4 v2, 0x0

    .line 913
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;
    if-eqz p1, :cond_0

    .line 914
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwExecutionStateWrapper;

    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;
    invoke-direct {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwExecutionStateWrapper;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerSv;)V

    .line 916
    .restart local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v5

    invoke-interface {v5, v4, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->setExecutionStateListener(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    .end local v1    # "jobid":I
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;
    .end local v4    # "sessionid":I
    :goto_0
    return-object v3

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setOpenStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 6
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerSv;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v3

    .line 788
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v4

    .line 789
    .local v4, "sessionid":I
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 790
    .local v1, "jobid":I
    const/4 v2, 0x0

    .line 791
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;
    if-eqz p1, :cond_0

    .line 792
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwOpenStateWrapper;

    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;
    invoke-direct {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwOpenStateWrapper;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerSv;)V

    .line 794
    .restart local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v5

    invoke-interface {v5, v4, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->setOpenStateListener(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    .end local v1    # "jobid":I
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;
    .end local v4    # "sessionid":I
    :goto_0
    return-object v3

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 9
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aIntentPackageName"    # Ljava/lang/String;
    .param p4, "aIntentClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v8

    .line 101
    .local v8, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v1

    .line 102
    .local v1, "sessionid":I
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v2

    .line 103
    .local v2, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->setSchedule(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1    # "sessionid":I
    .end local v2    # "jobid":I
    :goto_0
    return-object v8

    .line 105
    :catch_0
    move-exception v7

    .line 106
    .local v7, "err":Landroid/os/RemoteException;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setSeries(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aSeriesData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 230
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 231
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 232
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->setSeries(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public startComplement(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 962
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 964
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 965
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 966
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->startComplement(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public startContentExecution(Ljava/lang/String;Ljava/lang/String;Z)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 517
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v7

    .line 519
    .local v7, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v1

    .line 520
    .local v1, "sessionid":I
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v2

    .line 521
    .local v2, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->startContentExecution(IILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v1    # "sessionid":I
    .end local v2    # "jobid":I
    :goto_0
    return-object v7

    .line 523
    :catch_0
    move-exception v6

    .line 524
    .local v6, "err":Landroid/os/RemoteException;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public startExportRecThumbnail(ILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 6
    .param p1, "aPrgNo"    # I
    .param p2, "aUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1253
    sget-boolean v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->mRecodingAvailability:Z

    if-nez v4, :cond_0

    .line 1254
    const-string v4, "Recoding Module Unsupported"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1255
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    const-string v5, "Recoding Module Unsupported"

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1257
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1259
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1260
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1261
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->startExportRecThumbnail(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public startExportThumbnail(Ljava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1036
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1037
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1038
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->startExportThumbnail(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public stopBackgroundOperation()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 1291
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1293
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1294
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1295
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->stopBackgroundOperation(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1302
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1296
    :catch_0
    move-exception v0

    .line 1297
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
