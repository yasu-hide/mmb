.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
.source "MmbStRecordingManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv$MmbStRecordingEventWrapperSv;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 2
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 53
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->hasRecordingFunction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const-string v0, "Recoding Module Unsupported"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    const-string v1, "Recoding Module Unsupported"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public getMmbStRecordingCurrentState()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 243
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;>;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 244
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 245
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getMmbStRecordingCurrentState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setMmbStRecordingEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 6
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerSv;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v3

    .line 206
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v4

    .line 207
    .local v4, "sessionid":I
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 208
    .local v1, "jobid":I
    const/4 v2, 0x0

    .line 209
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;
    if-eqz p1, :cond_0

    .line 210
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv$MmbStRecordingEventWrapperSv;

    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;
    invoke-direct {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv$MmbStRecordingEventWrapperSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerSv;)V

    .line 212
    .restart local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v5

    invoke-interface {v5, v4, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->setMmbStRecordingEventListener(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v1    # "jobid":I
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;
    .end local v4    # "sessionid":I
    :goto_0
    return-object v3

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public startRec(ILjava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 8
    .param p1, "aServiceId"    # I
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aUserParam"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v7

    .line 88
    .local v7, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v1

    .line 89
    .local v1, "sessionid":I
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v2

    .line 90
    .local v2, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->startRec(IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "sessionid":I
    .end local v2    # "jobid":I
    :goto_0
    return-object v7

    .line 91
    :catch_0
    move-exception v6

    .line 92
    .local v6, "err":Landroid/os/RemoteException;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public stopRec()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 119
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 121
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 122
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 123
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->stopRec(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
