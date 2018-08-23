.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;
.super Ljava/lang/Object;
.source "MmbFwExtMetaFcSearchSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbFwQueryResultMatrixMap"
.end annotation


# instance fields
.field private mResultMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)V
    .locals 1

    .prologue
    .line 861
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->mResultMaps:Ljava/util/Map;

    .line 869
    return-void
.end method

.method private setSearchFcResult()V
    .locals 11

    .prologue
    .line 938
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->mResultMaps:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    .line 939
    .local v8, "wasEmpty":Z
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    move-result-object v9

    sget-object v10, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne v9, v10, :cond_0

    const/4 v5, 0x1

    .line 941
    .local v5, "isComplete":Z
    :goto_0
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 943
    .local v4, "fcResultIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 944
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 945
    .local v3, "fcResultEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 946
    .local v0, "crid":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 948
    .local v2, "fcResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v5, :cond_1

    .line 949
    const/4 v6, 0x0

    .line 951
    .local v6, "isDownloaded":Z
    :try_start_0
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->isDownloaded(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 956
    :goto_2
    if-nez v6, :cond_1

    .line 960
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->mResultMaps:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 939
    .end local v0    # "crid":Ljava/lang/String;
    .end local v2    # "fcResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "fcResultEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v4    # "fcResultIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;"
    .end local v5    # "isComplete":Z
    .end local v6    # "isDownloaded":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 952
    .restart local v0    # "crid":Ljava/lang/String;
    .restart local v2    # "fcResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "fcResultEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v4    # "fcResultIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;"
    .restart local v5    # "isComplete":Z
    .restart local v6    # "isDownloaded":Z
    :catch_0
    move-exception v1

    .line 953
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 966
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v6    # "isDownloaded":Z
    :cond_1
    const/4 v7, 0x0

    .line 967
    .local v7, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v8, :cond_2

    .line 968
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->mResultMaps:Ljava/util/Map;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v7, Ljava/util/Map;

    .line 970
    .restart local v7    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    if-nez v7, :cond_3

    .line 972
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->mResultMaps:Ljava/util/Map;

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 975
    :cond_3
    invoke-interface {v7, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 981
    .end local v0    # "crid":Ljava/lang/String;
    .end local v2    # "fcResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "fcResultEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    return-void
.end method

.method private setSearchMetaResult()V
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->mResultMaps:Ljava/util/Map;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 919
    return-void
.end method


# virtual methods
.method public setCheckPurchaseInfo([Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;)V
    .locals 7
    .param p1, "aCheckPurchaseInfoList"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;

    .prologue
    .line 1050
    if-nez p1, :cond_1

    .line 1073
    :cond_0
    return-void

    .line 1057
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1058
    .local v1, "checkPurchaseInfoList":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbCrid:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 1057
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1061
    :cond_3
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->mResultMaps:Ljava/util/Map;

    iget-object v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1063
    .local v4, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_2

    .line 1067
    const-string v5, "drmPurchaseInfo"

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbPurchaseStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setExtContentInfo([Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;I)V
    .locals 10
    .param p1, "aExtContentInfoList"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    .param p2, "aGetExtFcDetailFlg"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 996
    if-nez p1, :cond_1

    .line 1036
    :cond_0
    return-void

    .line 1002
    :cond_1
    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_3

    move v4, v2

    .line 1004
    .local v4, "fcStateFlg":Z
    :goto_0
    and-int/lit8 v9, p2, 0x2

    if-eqz v9, :cond_4

    move v3, v2

    .line 1006
    .local v3, "fcOpenStateFlg":Z
    :goto_1
    and-int/lit8 v9, p2, 0x4

    if-eqz v9, :cond_5

    .line 1009
    .local v2, "fcComplementStateFlg":Z
    :goto_2
    move-object v0, p1

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_3
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 1010
    .local v1, "extContentInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    if-eqz v1, :cond_2

    iget-object v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v8, v8, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v8, v8, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v8, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->crid:Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1009
    :cond_2
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v0    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    .end local v1    # "extContentInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    .end local v2    # "fcComplementStateFlg":Z
    .end local v3    # "fcOpenStateFlg":Z
    .end local v4    # "fcStateFlg":Z
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_3
    move v4, v8

    .line 1002
    goto :goto_0

    .restart local v4    # "fcStateFlg":Z
    :cond_4
    move v3, v8

    .line 1004
    goto :goto_1

    .restart local v3    # "fcOpenStateFlg":Z
    :cond_5
    move v2, v8

    .line 1006
    goto :goto_2

    .line 1016
    .restart local v0    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    .restart local v1    # "extContentInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    .restart local v2    # "fcComplementStateFlg":Z
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_6
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->mResultMaps:Ljava/util/Map;

    iget-object v9, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v9, v9, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v9, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->crid:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 1018
    .local v7, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v7, :cond_2

    .line 1022
    if-eqz v4, :cond_7

    .line 1023
    const-string v8, "fcState"

    iget v9, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbContentState:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    :cond_7
    if-eqz v3, :cond_8

    .line 1026
    const-string v8, "fcOpenState"

    iget v9, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbOpenState:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    :cond_8
    if-eqz v2, :cond_2

    .line 1029
    const-string v8, "fcComplementState"

    iget v9, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbComplementState:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public setSearchResults()V
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->setSearchMetaResult()V

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 892
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->setSearchFcResult()V

    .line 897
    :cond_1
    return-void
.end method

.method public toCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 1091
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1092
    .local v0, "columnsArray":[Ljava/lang/String;
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1093
    .local v2, "result":Landroid/database/MatrixCursor;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->mResultMaps:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1094
    .local v3, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->access$500(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCursor(Landroid/database/MatrixCursor;Ljava/util/Map;[Ljava/lang/String;)V

    goto :goto_0

    .line 1099
    .end local v3    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1105
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MmbFwQueryResultMatrixMap [mResultMaps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->mResultMaps:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1107
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
