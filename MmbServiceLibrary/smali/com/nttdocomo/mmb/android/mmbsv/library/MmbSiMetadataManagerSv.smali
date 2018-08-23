.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
.source "MmbSiMetadataManagerSv.java"


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
.method public checkDatabaseVersion()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 1017
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1020
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1021
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1022
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->checkDatabaseVersion(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public gatherMmbSiInfSvByFragmentVersionFromNet(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aFragmentVersion"    # Ljava/lang/String;
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
    .line 231
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 233
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 234
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 235
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->gatherMmbSiInfSvByFragmentVersionFromNet(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public gatherMmbSiInfSvByPeriodFromNet(JJ)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 9
    .param p1, "aStartTime"    # J
    .param p3, "aEndTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v8

    .line 183
    .local v8, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v2

    .line 184
    .local v2, "sessionid":I
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v3

    .line 185
    .local v3, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v1

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->gatherMmbSiInfSvByPeriodFromNet(IIJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v2    # "sessionid":I
    .end local v3    # "jobid":I
    :goto_0
    return-object v8

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v8, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public gatherMmbSiInfSvFromAir()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 276
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 278
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 279
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 280
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->gatherMmbSiInfSvFromAir(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public gatherMmbSiInfSvFromNet(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aGatherType"    # I
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
    .line 128
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 130
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 131
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 132
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->gatherMmbSiInfSvFromNet(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getBroadcasterName(S)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aBroadcasterId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1174
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1175
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1176
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getBroadcasterName(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getDictionary(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aDictionaryType"    # I
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
    .line 405
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 407
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 408
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 409
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getDictionary(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getDictionaryNameFromTermId(Ljava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aTermId"    # Ljava/lang/String;
    .param p2, "aLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 714
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 715
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 716
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getDictionaryNameFromTermId(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getDictionaryTermIdFromName(ILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aDictionaryType"    # I
    .param p2, "aTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 849
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 851
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 852
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 853
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getDictionaryTermIdFromName(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getFragmentVersion(IJJ)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 10
    .param p1, "aContentType"    # I
    .param p2, "aStartTime"    # J
    .param p4, "aEndTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v9

    .line 983
    .local v9, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Long;>;"
    :try_start_0
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v1

    .line 984
    .local v1, "sessionid":I
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v2

    .line 985
    .local v2, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v0 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getFragmentVersion(IIIJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    .end local v1    # "sessionid":I
    .end local v2    # "jobid":I
    :goto_0
    return-object v9

    .line 987
    :catch_0
    move-exception v8

    .line 988
    .local v8, "err":Landroid/os/RemoteException;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getNetworkName(S)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aNetworkId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1145
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1146
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1147
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getNetworkName(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getServiceList(S)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aBroadcasterId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1113
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1116
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;>;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1117
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1118
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getServiceList(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getServiceListAll()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1084
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1086
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1087
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1088
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getServiceListAll(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1089
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getServiceName(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aServiceId"    # I
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
    .line 1201
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1203
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1204
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1205
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getServiceName(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getServiceProviderName(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aServiceId"    # I
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
    .line 1230
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1232
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1233
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1234
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->getServiceProviderName(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public initDictionary(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aDictionaryType"    # I
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
    .line 674
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 676
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 677
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 678
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->initDictionary(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public initMmbSiInfSv()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 76
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 78
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 79
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 80
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->initMmbSiInfSv(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public searchMmbSiInfSvByCridFromNet(Ljava/util/List;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 895
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 898
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 899
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 900
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->searchMmbSiInfSvByCridFromNet(IILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public searchMmbSiInfSvByFreewordFromNet(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aFreeword"    # Ljava/lang/String;
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
    .line 941
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 943
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 944
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 945
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->searchMmbSiInfSvByFreewordFromNet(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 946
    :catch_0
    move-exception v0

    .line 947
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public updateDatabaseVersion()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
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
    .line 1053
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 1056
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 1057
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 1058
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->updateDatabaseVersion(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public updateDictionary(ILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aDictionaryType"    # I
    .param p2, "aPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 542
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v3

    .line 543
    .local v3, "sessionid":I
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v1

    .line 544
    .local v1, "jobid":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v4

    invoke-interface {v4, v3, v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->updateDictionary(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .end local v1    # "jobid":I
    .end local v3    # "sessionid":I
    :goto_0
    return-object v2

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "err":Landroid/os/RemoteException;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
