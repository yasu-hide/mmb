.class Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;
.super Ljava/lang/Object;
.source "MmbSiMetadataConnectBaseSv.java"


# static fields
.field protected static fcRetryCount:I

.field protected static metaARetryCount:I

.field protected static metaARetrySpan:I

.field protected static retryIntervalTime:I


# instance fields
.field protected metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

.field protected mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

.field protected service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;I)V
    .locals 5
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aMwPgInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    .param p3, "aMetaDataState"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;
    .param p4, "aCallType"    # I

    .prologue
    const v4, 0xea60

    const/16 v3, 0x14

    const/4 v2, 0x3

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 186
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .line 187
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->metaDataState:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    .line 188
    if-eqz p3, :cond_0

    .line 189
    invoke-virtual {p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setCallType(I)V

    .line 192
    :cond_0
    if-eqz p1, :cond_5

    .line 193
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 194
    .local v0, "res":Landroid/content/res/Resources;
    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->metaARetryCount:I

    .line 195
    sget v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->metaARetryCount:I

    if-nez v1, :cond_1

    .line 196
    sput v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->metaARetryCount:I

    .line 199
    :cond_1
    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->fcRetryCount:I

    .line 200
    sget v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->fcRetryCount:I

    if-nez v1, :cond_2

    .line 201
    sput v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->fcRetryCount:I

    .line 204
    :cond_2
    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->retryIntervalTime:I

    .line 205
    sget v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->retryIntervalTime:I

    if-nez v1, :cond_3

    .line 206
    sput v4, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->retryIntervalTime:I

    .line 209
    :cond_3
    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->metaARetrySpan:I

    .line 210
    sget v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->retryIntervalTime:I

    if-nez v1, :cond_4

    .line 211
    sput v3, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->retryIntervalTime:I

    .line 223
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_4
    :goto_0
    return-void

    .line 214
    :cond_5
    sput v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->metaARetryCount:I

    .line 215
    sput v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->fcRetryCount:I

    .line 216
    sput v4, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->retryIntervalTime:I

    .line 217
    sput v3, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->metaARetrySpan:I

    goto :goto_0
.end method

.method private deleteContents()V
    .locals 12

    .prologue
    .line 765
    :try_start_0
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 766
    .local v7, "search":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchDeleteContents()Ljava/util/List;

    move-result-object v2

    .line 769
    .local v2, "cridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 770
    .local v0, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    const/16 v8, 0xe

    invoke-virtual {v0, v2, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->autoDeleteContents(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 774
    .local v4, "failedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_1

    .line 806
    .end local v0    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v2    # "cridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "failedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "search":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    :cond_0
    :goto_0
    return-void

    .line 780
    .restart local v0    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .restart local v2    # "cridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "failedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "search":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_4

    .line 782
    .local v1, "crid":Ljava/lang/String;
    :try_start_1
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v6

    .line 783
    .local v6, "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    invoke-virtual {v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteFcScheduleAll(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    .line 784
    .end local v6    # "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :catch_0
    move-exception v3

    .line 786
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    :try_start_2
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 789
    .end local v0    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v1    # "crid":Ljava/lang/String;
    .end local v2    # "cridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    .end local v4    # "failedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "search":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    :catch_1
    move-exception v3

    .line 791
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 792
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_2
    move-exception v3

    .line 794
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 795
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_3
    move-exception v3

    .line 797
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 798
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_4
    move-exception v3

    .line 800
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private reserveSeries(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 655
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v4

    .line 656
    .local v4, "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->organizeSeries()V

    .line 658
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v3, "reserveDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;>;"
    :try_start_0
    invoke-virtual {v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getSeries(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;

    .line 669
    .local v2, "reserveData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;
    invoke-virtual {p0, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->updateSeriesSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_1

    .line 662
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "reserveData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 675
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private saveContents(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 11
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 698
    :try_start_0
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;

    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v6, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 699
    .local v6, "search":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v8

    .line 702
    .local v8, "svcontentmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchAutoDownloadContents(I)Ljava/util/List;

    move-result-object v2

    .line 705
    .local v2, "forceCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v9, 0xc

    const/4 v10, 0x2

    invoke-virtual {v8, v2, v9, v10, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->autoReserveDownload(Ljava/util/List;IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;

    .line 711
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchAutoDownloadContents(I)Ljava/util/List;

    move-result-object v0

    .line 714
    .local v0, "autoCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v9, 0xc

    const/4 v10, 0x1

    invoke-virtual {v8, v0, v9, v10, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->autoReserveDownload(Ljava/util/List;IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 721
    :try_start_1
    const-string v7, "mmbScheduleType = SCHEDULE_TYPE_FC_ACCUMULATION"

    .line 722
    .local v7, "searchstring":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v4, "resultlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 724
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 725
    .local v5, "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    iget-object v9, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->entryContents(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 727
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "resultlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v5    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v7    # "searchstring":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 741
    .end local v0    # "autoCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "forceCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "search":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    .end local v8    # "svcontentmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_0
    :goto_1
    return-void

    .line 732
    :catch_1
    move-exception v1

    .line 733
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 734
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_2
    move-exception v1

    .line 735
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected addConflictCallback(IJLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Ljava/lang/Object;)I
    .locals 8
    .param p1, "aCallType"    # I
    .param p2, "aStartTime"    # J
    .param p4, "aCrid"    # Ljava/lang/String;
    .param p5, "aStateDate"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;
    .param p6, "aObj"    # Ljava/lang/Object;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->addConflictCallback(IJLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Ljava/lang/Object;)V

    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method protected checkConflict(IILjava/lang/String;)I
    .locals 6
    .param p1, "aServiceType"    # I
    .param p2, "aServiceId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 269
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v0

    .line 270
    .local v0, "conflictManager":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConflict(IILjava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 286
    .local v2, "result":I
    const/16 v3, 0x9

    if-ne v3, v2, :cond_0

    .line 288
    const-string v3, "conflict error : CONFLICT_RESULT_INVALID_AUTO"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;-><init>()V

    throw v3

    .line 271
    .end local v0    # "conflictManager":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 274
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;-><init>()V

    throw v3

    .line 275
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v1

    .line 277
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 278
    throw v1

    .line 279
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :catch_2
    move-exception v1

    .line 281
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 282
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;-><init>()V

    throw v3

    .line 290
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .restart local v0    # "conflictManager":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .restart local v2    # "result":I
    :cond_0
    if-eqz v2, :cond_1

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conflict error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;-><init>()V

    throw v3

    .line 298
    :cond_1
    return v5
.end method

.method protected clearConflictStatus(IILjava/lang/String;)I
    .locals 3
    .param p1, "aServiceType"    # I
    .param p2, "aServiceId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 325
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v0

    .line 327
    .local v0, "conflictManager":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearServiceStatus(IILjava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_1

    .line 340
    const/4 v2, 0x0

    return v2

    .line 328
    .end local v0    # "conflictManager":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 331
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;-><init>()V

    throw v2

    .line 332
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v1

    .line 334
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 335
    throw v1
.end method

.method protected getAvailabilityDate(J)J
    .locals 5
    .param p1, "aDate"    # J

    .prologue
    .line 419
    const-wide/16 v2, 0x0

    .line 424
    .local v2, "lastAvailDate":J
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->getLatestAvailability()J
    :try_end_0
    .catch Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 433
    :goto_0
    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 434
    move-wide v2, p1

    .line 439
    :cond_0
    return-wide v2

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 430
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;->getError()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    move-result-object v1

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V

    goto :goto_0
.end method

.method protected removeConflictCallback(ILjava/lang/Object;)I
    .locals 1
    .param p1, "aCallType"    # I
    .param p2, "aObj"    # Ljava/lang/Object;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->removeConflictCallback(ILjava/lang/Object;)Z

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method protected updateContentsInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 3
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 600
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v0

    .line 602
    .local v0, "casModule":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->notifyUpdatePurchaseHistory()V

    .line 605
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->saveContents(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 607
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->reserveSeries(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->deleteContents()V

    .line 626
    .end local v0    # "casModule":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    :goto_0
    return-void

    .line 608
    :catch_0
    move-exception v1

    .line 610
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :try_start_1
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->deleteContents()V

    goto :goto_0

    .line 611
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v1

    .line 613
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 620
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->deleteContents()V

    goto :goto_0

    .line 614
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    :catch_2
    move-exception v1

    .line 616
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_3
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 617
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 620
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->deleteContents()V

    throw v2
.end method

.method updateSeriesSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 17
    .param p1, "aSeriesData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 471
    const/4 v10, 0x0

    .line 473
    .local v10, "seriesInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Ljava/lang/String;>;>;"
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v8, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 474
    .local v8, "search":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchSeriesInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;)Ljava/util/List;

    move-result-object v10

    .line 476
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v7

    .line 478
    .local v7, "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 479
    .local v9, "seriesInfo":Ljava/util/Map;, "Ljava/util/Map<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Ljava/lang/String;>;"
    sget-object v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 481
    :try_start_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    invoke-virtual {v7, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->updateSeries(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v9    # "seriesInfo":Ljava/util/Map;, "Ljava/util/Map<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 493
    .restart local v9    # "seriesInfo":Ljava/util/Map;, "Ljava/util/Map<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Ljava/lang/String;>;"
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 576
    .end local v9    # "seriesInfo":Ljava/util/Map;, "Ljava/util/Map<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Ljava/lang/String;>;"
    :cond_3
    return-void

    .line 482
    .restart local v9    # "seriesInfo":Ljava/util/Map;, "Ljava/util/Map<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 483
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 484
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v12

    .line 498
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :cond_4
    sget-object v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_2

    sget-object v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_SEARCHKEY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 504
    sget-object v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_SEARCHKEY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_9

    .line 506
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 507
    .local v6, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/4 v12, 0x1

    iput v12, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 508
    sget-object v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 510
    sget-object v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 511
    const/4 v12, 0x1

    iput v12, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 512
    const/4 v12, 0x2

    iput v12, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    .line 513
    sget-object v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_TITLE_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    .line 515
    sget-object v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 517
    sget-object v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    .line 521
    sget-object v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_CP_TYPE_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 523
    .local v3, "contentType":Ljava/lang/String;
    const-string v12, "ContentTypeCS/4.1"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 525
    const/4 v12, 0x2

    iput v12, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    .line 538
    :goto_1
    sget-object v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_SERVICEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    .line 541
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v14, v14, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    aput-object v14, v12, v13

    iput-object v12, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    .line 543
    :try_start_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbReservedPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesStIntentClassName:Ljava/lang/String;

    invoke-virtual {v7, v6, v12, v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setStSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->hasRecordingFunction()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 548
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v11

    .line 549
    .local v11, "stRecController":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;
    sget-object v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbReservedPackageName:Ljava/lang/String;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->reserveRec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 554
    .end local v11    # "stRecController":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;
    :catch_1
    move-exception v4

    .line 555
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 526
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    :cond_5
    const-string v12, "ContentTypeCS/4.2"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 528
    const/4 v12, 0x1

    iput v12, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    goto :goto_1

    .line 529
    :cond_6
    const-string v12, "ContentTypeCS/4.3"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "ContentTypeCS/4.4"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 532
    :cond_7
    const/4 v12, 0x4

    iput v12, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    goto/16 :goto_1

    .line 535
    :cond_8
    const/16 v12, 0x20

    iput v12, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    goto/16 :goto_1

    .line 556
    :catch_2
    move-exception v4

    .line 557
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 558
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v12

    .line 560
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v6    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_9
    sget-object v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_SEARCHKEY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_2

    .line 563
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    .line 564
    .local v2, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    sget-object v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbReservedPackageName:Ljava/lang/String;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-virtual {v2, v12, v13, v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->reserveDownload(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 568
    .end local v2    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :catch_3
    move-exception v4

    .line 569
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
