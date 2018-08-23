.class abstract Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractSearchHelperSv;
.source "MmbCaCasDrmClientGeneralSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "MmbCaCasDrmMtSearchInfoHelperSv"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;",
        ">",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractSearchHelperSv",
        "<",
        "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;",
        "TV;>;"
    }
.end annotation


# instance fields
.field protected dlStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

.field protected srchIdField:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;ZLjava/lang/String;)V
    .locals 1
    .param p1, "aSrchTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aSrchIdField"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .param p3, "aOutputFields"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p4, "aDictChanges"    # Z
    .param p5, "aDictLanguage"    # Ljava/lang/String;

    .prologue
    .line 881
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv<TV;>;"
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractSearchHelperSv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;ZLjava/lang/String;)V

    .line 859
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->dlStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 885
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->srchIdField:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 889
    return-void
.end method


# virtual methods
.method protected abstract createHolderInstance(I)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method protected final createHolderInstance(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;
    .locals 2
    .param p1, "aResult"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 965
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv<TV;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->outputFields:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->createHolderInstance(I)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;

    move-result-object v0

    .line 967
    .local v0, "holder":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;, "TV;"
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;->setSearchRecord(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V

    .line 971
    return-object v0
.end method

.method protected bridge synthetic createHolderInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 852
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv<TV;>;"
    check-cast p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->createHolderInstance(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic executeModule(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .prologue
    .line 852
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv<TV;>;"
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->executeModule(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic executeModule(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    .prologue
    .line 852
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv<TV;>;"
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->executeModule(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v0

    return-object v0
.end method

.method protected final executeModule(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 8
    .param p1, "aContentsModSv"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .prologue
    .line 906
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv<TV;>;"
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;

    move-result-object v0

    .line 907
    .local v0, "contentsSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchInit()V

    .line 909
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->srchTarget:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->dlStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->srchIdField:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->outputFields:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iget-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->dictChanges:Z

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->dictLanguage:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 913
    .local v7, "result":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchClose()V

    .line 918
    return-object v7

    .line 913
    .end local v7    # "result":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchClose()V

    throw v1
.end method

.method protected final executeModule(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 7
    .param p1, "aMetadataModSv"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    .prologue
    .line 936
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv<TV;>;"
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;

    move-result-object v0

    .line 937
    .local v0, "metadataSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchInit()V

    .line 939
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->srchTarget:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->srchIdField:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->outputFields:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->dictChanges:Z

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->dictLanguage:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 943
    .local v6, "result":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchClose()V

    .line 948
    return-object v6

    .line 943
    .end local v6    # "result":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchClose()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 994
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 995
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MmbCaCasDrmMtSearchInfoHelperSv [getClass()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 997
    const-string v1, ", srchTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->srchTarget:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 999
    const-string v1, ", outputFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->outputFields:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    const-string v1, ", dictChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->dictChanges:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1003
    const-string v1, ", dictLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->dictLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    const-string v1, ", srchIdField="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;->srchIdField:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1007
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
