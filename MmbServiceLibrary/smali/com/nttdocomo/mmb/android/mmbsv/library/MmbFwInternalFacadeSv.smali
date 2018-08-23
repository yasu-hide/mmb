.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
.source "MmbFwInternalFacadeSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv$MmbFwCallbackWrapperSv;
    }
.end annotation


# instance fields
.field private callbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv$MmbFwCallbackWrapperSv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 1
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 666
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->callbackMap:Ljava/util/Map;

    .line 60
    return-void
.end method


# virtual methods
.method cancelJob(II)V
    .locals 2
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->cancelJob(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkConflict(IILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 9
    .param p1, "aServiceType"    # I
    .param p2, "aServiceId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v8

    .line 590
    .local v8, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v1

    .line 591
    .local v1, "sessionid":I
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v2

    .line 592
    .local v2, "jobid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 593
    .local v3, "pid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->checkConflict(IIIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v1    # "sessionid":I
    .end local v2    # "jobid":I
    .end local v3    # "pid":I
    :goto_0
    return-object v8

    .line 594
    :catch_0
    move-exception v7

    .line 595
    .local v7, "err":Landroid/os/RemoteException;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public checkConnectionInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 928
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 930
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 931
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 932
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->checkConnectionInfo(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public checkForeignMode()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 6
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
    .line 753
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 755
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 756
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 757
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->checkForeignMode(ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public checkRequiresTierUpdating(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 7
    .param p1, "aEntityId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v4

    .line 1454
    .local v4, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v5

    .line 1455
    .local v5, "sessionid":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v3

    .line 1456
    .local v3, "jobid":I
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    .line 1457
    .local v1, "entityId":B
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v6

    invoke-interface {v6, v5, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->checkRequiresTierUpdating(IIB)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1466
    .end local v1    # "entityId":B
    .end local v3    # "jobid":I
    .end local v5    # "sessionid":I
    :goto_0
    return-object v4

    .line 1458
    :catch_0
    move-exception v0

    .line 1459
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 1460
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 1461
    .local v2, "err":Landroid/os/RemoteException;
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public checkSdCardFreeSpace()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 809
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 811
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 812
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 813
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->checkSdCardFreeSpace(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public checkSdCardMount()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 785
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 786
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 787
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->checkSdCardMount(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public clearServiceStatus(IILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 8
    .param p1, "aServiceType"    # I
    .param p2, "aServiceId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v7

    .line 558
    .local v7, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v1

    .line 559
    .local v1, "sessionid":I
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v2

    .line 560
    .local v2, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->clearServiceStatus(IIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    .end local v1    # "sessionid":I
    .end local v2    # "jobid":I
    :goto_0
    return-object v7

    .line 561
    :catch_0
    move-exception v6

    .line 562
    .local v6, "err":Landroid/os/RemoteException;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method createSession(I)I
    .locals 3
    .param p1, "aProcessId"    # I

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, "result":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->createSession(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 89
    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method deleteSession(I)V
    .locals 2
    .param p1, "aSessionId"    # I

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->deleteSession(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBatteryLevel()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 198
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 200
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 201
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 202
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getBatteryLevel(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getBatteryStatus()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 167
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 169
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 170
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 171
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getBatteryStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getConfiguration(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aConfigType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1535
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1537
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1538
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1539
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getConfiguration(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1540
    :catch_0
    move-exception v0

    .line 1541
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getContentStorage()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1561
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1564
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1565
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1566
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getContentSaveDevice(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1573
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1567
    :catch_0
    move-exception v0

    .line 1568
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getDownloadProgress(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1494
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1496
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1497
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1498
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getDownloadProgress(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1505
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getMemoryFreeSpace()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 897
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 899
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 900
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 901
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getMemoryFreeSpace(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getMobileInfoModelName()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1387
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1389
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1390
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1391
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getMobileInfoModelName(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1398
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1392
    :catch_0
    move-exception v0

    .line 1393
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getMobileInfoOsVer()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1328
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1330
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1331
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1332
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getMobileInfoOsVer(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1333
    :catch_0
    move-exception v0

    .line 1334
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getMobileInfoSwVer()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1358
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1360
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1361
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1362
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getMobileInfoSwVer(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getNetworkInfoMcc()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1207
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1209
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1210
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1211
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getNetworkInfoMcc(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getNetworkInfoMnc()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1236
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1238
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1239
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1240
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getNetworkInfoMnc(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getNetworkInfoName()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1266
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1268
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1269
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1270
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getNetworkInfoName(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getNetworkInfoType()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 1299
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1301
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1302
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1303
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getNetworkInfoType(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getSecureClock()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getPreference()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->getSecureClock()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v0

    .line 1160
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Long;>;"
    return-object v0
.end method

.method public getUimIccId()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1178
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1180
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1181
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1182
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getUimIccId(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public informEmmUpdated()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 1419
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1421
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1422
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1423
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->informEmmUpdated(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public isA2dpConnected()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1593
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1595
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1596
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1597
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->isA2dpConnected(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1604
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1598
    :catch_0
    move-exception v0

    .line 1599
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public isA2dpScmstSupported()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1621
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1623
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1624
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1625
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->isA2dpScmstSupported(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1632
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1626
    :catch_0
    move-exception v0

    .line 1627
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public isUimService()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 871
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 872
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 873
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->isUimService(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public isUimStatus()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 841
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 842
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 843
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->isUimStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public notifyOnCreate(II)V
    .locals 2
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I

    .prologue
    .line 324
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->notifyOnCreate(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyOnDestroy(II)V
    .locals 2
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I

    .prologue
    .line 474
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->notifyOnDestroy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyOnPause(II)V
    .locals 2
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I

    .prologue
    .line 414
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->notifyOnPause(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyOnRestart(II)V
    .locals 2
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I

    .prologue
    .line 504
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->notifyOnRestart(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyOnResume(II)V
    .locals 2
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I

    .prologue
    .line 384
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->notifyOnResume(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyOnStart(II)V
    .locals 2
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I

    .prologue
    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->notifyOnStart(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyOnStop(II)V
    .locals 2
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I

    .prologue
    .line 444
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->notifyOnStop(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 6
    .param p1, "aServiceType"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 687
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 688
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 689
    .local v1, "jobid":I
    if-eqz p2, :cond_0

    .line 690
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv$MmbFwCallbackWrapperSv;

    invoke-direct {v4, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv$MmbFwCallbackWrapperSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)V

    .line 691
    .local v4, "wrapper":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv$MmbFwCallbackWrapperSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v5

    invoke-interface {v5, v3, v1, p1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->registerCallback(IIILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V

    .line 692
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->callbackMap:Ljava/util/Map;

    invoke-interface {v5, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    .end local v4    # "wrapper":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv$MmbFwCallbackWrapperSv;
    :cond_0
    :goto_0
    return-object v2

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public releaseTunerResouce(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 959
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 961
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 962
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 963
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->releaseTunerResouce(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 964
    :catch_0
    move-exception v0

    .line 965
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public restartService(Z)V
    .locals 2
    .param p1, "aBackground"    # Z

    .prologue
    .line 530
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->restartService(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public saveFcLog(IJLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 10
    .param p1, "aCategory"    # I
    .param p2, "aTimeMS"    # J
    .param p4, "aCrid"    # Ljava/lang/String;
    .param p5, "aLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
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
    .line 1034
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v9

    .line 1036
    .local v9, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v1

    .line 1037
    .local v1, "sessionid":I
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v2

    .line 1038
    .local v2, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->saveFcLog(IIIJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    .end local v1    # "sessionid":I
    .end local v2    # "jobid":I
    :goto_0
    return-object v9

    .line 1039
    :catch_0
    move-exception v8

    .line 1040
    .local v8, "err":Landroid/os/RemoteException;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public saveHistory(ILjava/lang/String;Ljava/lang/String;IJ)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 11
    .param p1, "aCategory"    # I
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aTitle"    # Ljava/lang/String;
    .param p4, "aReason"    # I
    .param p5, "aTimeMS"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1095
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v10

    .line 1097
    .local v10, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v2

    .line 1098
    .local v2, "sessionid":I
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v3

    .line 1099
    .local v3, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v1

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    invoke-interface/range {v1 .. v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->saveHistory(IIILjava/lang/String;Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    .end local v2    # "sessionid":I
    .end local v3    # "jobid":I
    :goto_0
    return-object v10

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v10, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public saveServiceList(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aServiceList"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1127
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1128
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1129
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->saveServiceList(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public saveStLog(IJLjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 10
    .param p1, "aCategory"    # I
    .param p2, "aTimeMS"    # J
    .param p4, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v8

    .line 997
    .local v8, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v1

    .line 998
    .local v1, "sessionid":I
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v2

    .line 999
    .local v2, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->saveStLog(IIIJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    .end local v1    # "sessionid":I
    .end local v2    # "jobid":I
    :goto_0
    return-object v8

    .line 1000
    :catch_0
    move-exception v7

    .line 1001
    .local v7, "err":Landroid/os/RemoteException;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setApplicationMode(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aKey"    # Ljava/lang/String;
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
    .line 289
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 291
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 292
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 293
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->setApplicationMode(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 11
    .param p1, "aId"    # I
    .param p2, "aOnOff"    # Z
    .param p3, "aValue"    # I
    .param p4, "aTitle"    # Ljava/lang/String;
    .param p5, "aText"    # Ljava/lang/String;
    .param p6, "aIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v10

    .line 258
    .local v10, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v1

    .line 259
    .local v1, "sessionid":I
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v2

    .line 260
    .local v2, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v0 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->setNotification(IIIZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v1    # "sessionid":I
    .end local v2    # "jobid":I
    :goto_0
    return-object v10

    .line 262
    :catch_0
    move-exception v9

    .line 263
    .local v9, "err":Landroid/os/RemoteException;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v10, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public unregisterCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 6
    .param p1, "aServiceType"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 721
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 722
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 723
    .local v1, "jobid":I
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->callbackMap:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv$MmbFwCallbackWrapperSv;

    .line 724
    .local v4, "wrapper":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv$MmbFwCallbackWrapperSv;
    if-eqz v4, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v5

    invoke-interface {v5, v3, v1, p1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->unregisterCallback(IIILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V

    .line 726
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->callbackMap:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    .end local v4    # "wrapper":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv$MmbFwCallbackWrapperSv;
    :cond_0
    :goto_0
    return-object v2

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
