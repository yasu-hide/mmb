.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConflictManagerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
.source "MmbCfConflictManagerSv.java"


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 0
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 55
    return-void
.end method


# virtual methods
.method public checkForeignMode()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 1
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
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConflictManagerSv;->checkForeignMode(Z)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v0

    return-object v0
.end method

.method public checkForeignMode(Z)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aDoMeasure"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConflictManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 76
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 77
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 78
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConflictManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, p1, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->checkForeignMode(ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public checkTunerConflict(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aServiceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConflictManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 124
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 125
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 126
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConflictManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->checkTunerConflict(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
