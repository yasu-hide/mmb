.class abstract Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractSearchHelperSv;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientGeneralSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "MmbCaCasDrmMtAbstractSearchHelperSv"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected dictChanges:Z

.field protected dictLanguage:Ljava/lang/String;

.field protected outputFields:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

.field protected srchTarget:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;ZLjava/lang/String;)V
    .locals 0
    .param p1, "aSrchTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aOutputFields"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p3, "aDictChanges"    # Z
    .param p4, "aDictLanguage"    # Ljava/lang/String;

    .prologue
    .line 725
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractSearchHelperSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractSearchHelperSv<TT;TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractSearchHelperSv;->srchTarget:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    .line 730
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractSearchHelperSv;->outputFields:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 731
    iput-boolean p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractSearchHelperSv;->dictChanges:Z

    .line 732
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractSearchHelperSv;->dictLanguage:Ljava/lang/String;

    .line 736
    return-void
.end method


# virtual methods
.method protected abstract createHolderInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TU;"
        }
    .end annotation
.end method

.method protected final executeMain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "aSearchModule"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractSearchHelperSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractSearchHelperSv<TT;TU;>;"
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v6, -0x1000008

    .line 762
    const/4 v4, 0x0

    .line 763
    .local v4, "resultHolder":Ljava/lang/Object;, "TU;"
    const/4 v3, 0x0

    .line 764
    .local v3, "result":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 769
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :try_start_0
    instance-of v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    if-eqz v5, :cond_1

    .line 770
    check-cast p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .end local p1    # "aSearchModule":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractSearchHelperSv;->executeModule(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 785
    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    .line 786
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v5, "Failed to search metadata."

    invoke-direct {v0, v6, v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 790
    .local v0, "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    throw v0

    .line 771
    .end local v0    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v3    # "result":Ljava/lang/Object;, "TT;"
    .restart local p1    # "aSearchModule":Ljava/lang/Object;
    :cond_1
    :try_start_1
    instance-of v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    if-eqz v5, :cond_0

    .line 772
    check-cast p1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    .end local p1    # "aSearchModule":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractSearchHelperSv;->executeModule(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 774
    :catch_0
    move-exception v1

    .line 775
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    move-object v2, v1

    .line 785
    if-eqz v2, :cond_3

    .line 786
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v5, "Failed to search metadata."

    invoke-direct {v0, v6, v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 790
    .restart local v0    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    throw v0

    .line 776
    .end local v0    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v1

    .line 777
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    move-object v2, v1

    .line 785
    if-eqz v2, :cond_3

    .line 786
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v5, "Failed to search metadata."

    invoke-direct {v0, v6, v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 790
    .restart local v0    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    throw v0

    .line 778
    .end local v0    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_2
    move-exception v1

    .line 779
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    move-object v2, v1

    .line 785
    if-eqz v2, :cond_3

    .line 786
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v5, "Failed to search metadata."

    invoke-direct {v0, v6, v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 790
    .restart local v0    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    throw v0

    .line 780
    .end local v0    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v1

    .line 781
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    move-object v2, v1

    .line 785
    if-eqz v2, :cond_3

    .line 786
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v5, "Failed to search metadata."

    invoke-direct {v0, v6, v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 790
    .restart local v0    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    throw v0

    .line 782
    .end local v0    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_4
    move-exception v1

    .line 783
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    move-object v2, v1

    .line 785
    if-eqz v2, :cond_3

    .line 786
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v5, "Failed to search metadata."

    invoke-direct {v0, v6, v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 790
    .restart local v0    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    throw v0

    .line 785
    .end local v0    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_2

    .line 786
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v5, "Failed to search metadata."

    invoke-direct {v0, v6, v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 790
    .restart local v0    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v5, "[%d] %s"

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    throw v0

    .end local v0    # "casEx":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_2
    throw v5

    .line 794
    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    :cond_3
    if-eqz v3, :cond_4

    .line 795
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractSearchHelperSv;->createHolderInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 803
    .end local v4    # "resultHolder":Ljava/lang/Object;, "TU;"
    :cond_4
    return-object v4
.end method

.method protected abstract executeModule(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract executeModule(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;",
            ")TT;"
        }
    .end annotation
.end method
