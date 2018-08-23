.class Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;
.super Ljava/lang/Object;
.source "MmbSiMetadataDictionarySv.java"


# instance fields
.field private mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V
    .locals 0
    .param p1, "aMwPgInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .line 64
    return-void
.end method


# virtual methods
.method public getDictionary(I)Ljava/lang/String;
    .locals 5
    .param p1, "aDictionaryType"    # I

    .prologue
    .line 186
    const/4 v2, 0x0

    .line 189
    .local v2, "path":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->linkDictionary(I)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    move-result-object v1

    .line 196
    .local v1, "mwDictionaryType":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v3, v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->getDictionary(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;)Ljava/lang/String;
    :try_end_0
    .catch Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 209
    .end local v1    # "mwDictionaryType":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;
    :goto_0
    return-object v2

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 203
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;->getError()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    move-result-object v3

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V

    goto :goto_0
.end method

.method public getDictionaryNameFromTermId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "aTermId"    # Ljava/lang/String;
    .param p2, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 522
    if-nez p1, :cond_0

    .line 523
    const-string v2, "parameter error : null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 527
    :cond_0
    const/4 v1, 0x0

    .line 533
    .local v1, "nameTag":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v2, p1, p2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 546
    :goto_0
    return-object v1

    .line 537
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 540
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;->getError()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V

    goto :goto_0
.end method

.method public getDictionaryTermIdFromName(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "aDictionaryType"    # I
    .param p2, "aTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 672
    if-nez p2, :cond_0

    .line 673
    const-string v4, "parameter error : null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 677
    :cond_0
    const/4 v3, 0x0

    .line 680
    .local v3, "termIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->linkDictionary(I)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    move-result-object v1

    .line 687
    .local v1, "mwDictionaryType":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v4, v1, p2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->getTermId(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, "termId":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 694
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 705
    .end local v1    # "mwDictionaryType":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;
    .end local v2    # "termId":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .line 696
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 699
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;->getError()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    move-result-object v4

    invoke-virtual {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V

    goto :goto_0
.end method

.method public initDictionary(I)V
    .locals 3
    .param p1, "aDictionaryType"    # I

    .prologue
    .line 477
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->linkDictionary(I)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    move-result-object v0

    .line 484
    .local v0, "mwDictionaryType":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v2, v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->initDictionary(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;)I

    move-result v1

    .line 490
    .local v1, "result":I
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V

    .line 495
    return-void
.end method

.method public updateDictionary(ILjava/lang/String;)V
    .locals 3
    .param p1, "aDictionaryType"    # I
    .param p2, "aPath"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->linkDictionary(I)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    move-result-object v0

    .line 343
    .local v0, "mwDictionaryType":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v2, v0, p2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->updateDictionary(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;Ljava/lang/String;)I

    move-result v1

    .line 349
    .local v1, "result":I
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V

    .line 354
    return-void
.end method
