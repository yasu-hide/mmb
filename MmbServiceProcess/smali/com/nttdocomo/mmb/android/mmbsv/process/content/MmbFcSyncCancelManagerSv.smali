.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;
.super Ljava/lang/Object;
.source "MmbFcSyncCancelManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelComplementFdtTask;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelComplementTask;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelExportIndivTask;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelExportApkTask;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelExportTask;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDownloadTask;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDefaultTask;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;
    }
.end annotation


# instance fields
.field final mCancelApkTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

.field final mCancelComplementFdtTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

.field final mCancelComplementTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

.field final mCancelDownloadTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

.field final mCancelIndivTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

.field protected mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

.field protected mContentModule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

.field protected mFdtStateManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

.field protected mIpcStub:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)V
    .locals 1
    .param p1, "aContentModule"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDownloadTask;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelDownloadTask;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mCancelDownloadTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

    .line 49
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelComplementTask;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelComplementTask;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mCancelComplementTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

    .line 53
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelComplementFdtTask;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelComplementFdtTask;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mCancelComplementFdtTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

    .line 57
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelExportApkTask;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelExportApkTask;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mCancelApkTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

    .line 61
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelExportIndivTask;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelExportIndivTask;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mCancelIndivTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mContentModule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 100
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    .line 101
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mIpcStub:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    .line 102
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mContentModule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mFdtStateManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    .line 106
    return-void
.end method


# virtual methods
.method public getCancelTaskByState(I)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;
    .locals 1
    .param p1, "aState"    # I

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;
    sparse-switch p1, :sswitch_data_0

    .line 210
    :goto_0
    return-object v0

    .line 192
    :sswitch_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mCancelDownloadTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

    .line 193
    goto :goto_0

    .line 198
    :sswitch_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mCancelComplementTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

    .line 199
    goto :goto_0

    .line 202
    :sswitch_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mCancelApkTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

    .line 203
    goto :goto_0

    .line 188
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x4a -> :sswitch_1
    .end sparse-switch
.end method

.method public requestCancelAll()V
    .locals 8

    .prologue
    .line 125
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mFdtStateManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getCridList()Ljava/util/List;

    move-result-object v4

    .line 126
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    .local v1, "crid":Ljava/lang/String;
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mCancelComplementFdtTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

    invoke-virtual {v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;->requestCancel(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    .end local v1    # "crid":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mContentModule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadStateAll()Ljava/util/Map;

    move-result-object v6

    .line 130
    .local v6, "stateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mContentModule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->setCancelComplementShutdownFlg()V

    .line 131
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 132
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    .restart local v1    # "crid":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 134
    .local v5, "state":I
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->getCancelTaskByState(I)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

    move-result-object v0

    .line 135
    .local v0, "cancelTask":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;
    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;->requestCancel(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    .end local v0    # "cancelTask":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;
    .end local v1    # "crid":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "state":I
    :cond_2
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mContentModule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getIndividualExportingCridList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    .restart local v1    # "crid":Ljava/lang/String;
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mCancelIndivTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

    invoke-virtual {v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;->requestCancel(Ljava/lang/String;)V

    goto :goto_2

    .line 146
    .end local v1    # "crid":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public waitForCancelAll()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mCancelComplementFdtTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;->waitForCancelAll()V

    .line 164
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mCancelDownloadTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;->waitForCancelAll()V

    .line 165
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mCancelComplementTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;->waitForCancelAll()V

    .line 166
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mCancelApkTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;->waitForCancelAll()V

    .line 167
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->mCancelIndivTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv$MmbSyncCancelTask;->waitForCancelAll()V

    .line 171
    return-void
.end method
