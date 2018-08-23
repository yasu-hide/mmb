.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
.super Ljava/lang/Object;
.source "MmbFcContentsSearchSv.java"


# instance fields
.field private mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

.field private mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 1
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 86
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 90
    return-void
.end method

.method private extFinalizeSearch()V
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->extSearchClose()V

    .line 1032
    return-void
.end method

.method private extInitSearch()V
    .locals 2

    .prologue
    .line 917
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->extSearchInit()I

    move-result v0

    .line 923
    .local v0, "ret":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwReturnOtherIgnore(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 930
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1

    .line 927
    :sswitch_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 935
    :sswitch_1
    return-void

    .line 923
    :sswitch_data_0
    .sparse-switch
        -0x1c -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method private extSearchContentList(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 8
    .param p1, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p2, "aOutput"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p3, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p4, "aDictionaryChange"    # Z
    .param p5, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 970
    const/4 v6, 0x0

    .line 984
    .local v6, "contentList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->extSearchList(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_end_0
    .catch Lmmb/android/MmbFcContMw/MmbFcContMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1003
    :goto_0
    return-object v6

    .line 996
    :catch_0
    move-exception v7

    .line 998
    .local v7, "e":Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwException(Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;)V

    goto :goto_0
.end method

.method private finalizeSearch()V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->searchClose()V

    .line 893
    return-void
.end method

.method private initSearch()I
    .locals 3

    .prologue
    .line 718
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->searchInit()I

    move-result v1

    .line 724
    .local v1, "ret":I
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwReturnOtherIgnore(I)I

    move-result v0

    .line 729
    .local v0, "result":I
    return v0
.end method

.method private searchContentList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 9
    .param p1, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p3, "aOutput"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p4, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p5, "aDictionaryChange"    # Z
    .param p6, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 765
    const/4 v7, 0x0

    .line 779
    .local v7, "contentList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_end_0
    .catch Lmmb/android/MmbFcContMw/MmbFcContMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 798
    :goto_0
    return-object v7

    .line 791
    :catch_0
    move-exception v8

    .line 793
    .local v8, "e":Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwException(Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;)V

    goto :goto_0
.end method

.method private searchOneContent(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 10
    .param p1, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p3, "aField"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .param p4, "aOutput"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p5, "aVersion"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
    .param p6, "aDictionaryChange"    # Z
    .param p7, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 838
    const/4 v8, 0x0

    .line 848
    .local v8, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->searchInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_end_0
    .catch Lmmb/android/MmbFcContMw/MmbFcContMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 864
    :goto_0
    return-object v8

    .line 857
    :catch_0
    move-exception v9

    .line 859
    .local v9, "e":Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwException(Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;)V

    goto :goto_0
.end method


# virtual methods
.method public extSearchClose()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    if-nez v0, :cond_0

    .line 682
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 685
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->extFinalizeSearch()V

    .line 687
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->releaseMwSearchInstance(Lmmb/android/MmbFcContMw/MmbFcContMwClient;)V

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 693
    return-void
.end method

.method public extSearchInit()V
    .locals 5

    .prologue
    .line 558
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    if-eqz v3, :cond_0

    .line 559
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v3

    .line 563
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->assignMwSearchInstance()Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    move-result-object v3

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 565
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->extInitSearch()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 580
    :goto_0
    return-void

    .line 566
    :catch_0
    move-exception v1

    .line 567
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v4, v2, v3

    .line 571
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 572
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 573
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 574
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 575
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public extSearchList(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 9
    .param p1, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p2, "aOutput"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p3, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p4, "aDictionaryChange"    # Z
    .param p5, "aLanguage"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 620
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageMount()Z

    move-result v5

    if-nez v5, :cond_0

    .line 622
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 625
    :cond_0
    const/4 v4, 0x1

    .line 626
    .local v4, "refinementFlag":Z
    const/4 v1, 0x0

    .line 629
    .local v1, "contentList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    if-nez v5, :cond_1

    .line 630
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->assignMwSearchInstance()Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    move-result-object v5

    iput-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 631
    const/4 v4, 0x0

    .line 634
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->extSearchContentList(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 650
    if-nez v4, :cond_2

    .line 651
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->releaseMwSearchInstance(Lmmb/android/MmbFcContMw/MmbFcContMwClient;)V

    .line 652
    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 659
    :cond_2
    :goto_0
    return-object v1

    .line 637
    :catch_0
    move-exception v2

    .line 638
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v5, 0x4

    :try_start_1
    new-array v3, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v6, v3, v5

    .line 644
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 645
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    if-nez v4, :cond_2

    .line 651
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->releaseMwSearchInstance(Lmmb/android/MmbFcContMw/MmbFcContMwClient;)V

    .line 652
    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    goto :goto_0

    .line 646
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 647
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 648
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 650
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-nez v4, :cond_3

    .line 651
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v6

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->releaseMwSearchInstance(Lmmb/android/MmbFcContMw/MmbFcContMwClient;)V

    .line 652
    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    :cond_3
    throw v5
.end method

.method public searchClose()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->finalizeSearch()V

    .line 531
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->releaseMwSearchInstance(Lmmb/android/MmbFcContMw/MmbFcContMwClient;)V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 536
    return-void
.end method

.method public searchInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 13
    .param p1, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p3, "aField"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .param p4, "aOutput"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p5, "aDictionaryChange"    # Z
    .param p6, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageMount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v0

    .line 275
    :cond_0
    const/4 v12, 0x1

    .line 276
    .local v12, "refinementFlag":Z
    const/4 v9, 0x0

    .line 278
    .local v9, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->assignMwSearchInstance()Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 280
    const/4 v12, 0x0

    .line 282
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchOneContent(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 300
    :goto_0
    if-nez v12, :cond_2

    .line 301
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->releaseMwSearchInstance(Lmmb/android/MmbFcContMw/MmbFcContMwClient;)V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 308
    :cond_2
    return-object v9

    .line 285
    :catch_0
    move-exception v10

    .line 286
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v0, 0x5

    new-array v11, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v1, v11, v0

    const/4 v0, 0x1

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v1, v11, v0

    const/4 v0, 0x2

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    aput-object v1, v11, v0

    const/4 v0, 0x3

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v1, v11, v0

    const/4 v0, 0x4

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v1, v11, v0

    .line 293
    .local v11, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v8, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 294
    .local v8, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v8, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 295
    .end local v8    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v11    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v10

    .line 296
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 297
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public searchInit()V
    .locals 6

    .prologue
    .line 110
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    if-eqz v4, :cond_0

    .line 111
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v4

    .line 113
    :cond_0
    const/4 v3, 0x0

    .line 114
    .local v3, "result":I
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->assignMwSearchInstance()Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    move-result-object v4

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->initSearch()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 129
    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 137
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v4

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v5, v2, v4

    .line 123
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 124
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 125
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 127
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    :sswitch_0
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v4

    .line 135
    :sswitch_1
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v4

    .line 142
    :sswitch_2
    return-void

    .line 129
    :sswitch_data_0
    .sparse-switch
        -0x1c -> :sswitch_0
        -0x2 -> :sswitch_1
        0x0 -> :sswitch_2
    .end sparse-switch
.end method

.method public searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 7
    .param p1, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p3, "aOutput"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p4, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p5, "aDictionaryChange"    # Z
    .param p6, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageMount()Z

    move-result v5

    if-nez v5, :cond_0

    .line 188
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 191
    :cond_0
    const/4 v4, 0x1

    .line 192
    .local v4, "refinementFlag":Z
    const/4 v1, 0x0

    .line 195
    .local v1, "contentList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    if-nez v5, :cond_1

    .line 196
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->assignMwSearchInstance()Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    move-result-object v5

    iput-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 197
    const/4 v4, 0x0

    .line 200
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchContentList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 218
    :goto_0
    if-nez v4, :cond_2

    .line 219
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->releaseMwSearchInstance(Lmmb/android/MmbFcContMw/MmbFcContMwClient;)V

    .line 220
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 226
    :cond_2
    return-object v1

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v5, 0x5

    new-array v3, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v6, v3, v5

    .line 211
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 212
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 213
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 214
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 215
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 9
    .param p1, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p3, "aOutput"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p4, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p5, "aDictionaryChange"    # Z
    .param p6, "aLanguage"    # Ljava/lang/String;
    .param p7, "aBaseVersion"    # Z
    .param p8, "aMaxVersion"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageMount()Z

    move-result v7

    if-nez v7, :cond_0

    .line 358
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v7

    .line 360
    :cond_0
    const/4 v6, 0x1

    .line 361
    .local v6, "refinementFlag":Z
    const/4 v2, 0x0

    .line 363
    .local v2, "contentList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_start_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    if-nez v7, :cond_1

    .line 364
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->assignMwSearchInstance()Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    move-result-object v7

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 365
    const/4 v6, 0x0

    .line 369
    :cond_1
    if-eqz p7, :cond_4

    .line 370
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getVersion()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    move-result-object v7

    iput-object v7, p4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    .line 387
    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchContentList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 405
    :goto_1
    if-nez v6, :cond_3

    .line 406
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->releaseMwSearchInstance(Lmmb/android/MmbFcContMw/MmbFcContMwClient;)V

    .line 407
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 413
    :cond_3
    return-object v2

    .line 371
    :cond_4
    if-eqz p8, :cond_2

    .line 373
    :try_start_1
    const-string v7, "\\."

    move-object/from16 v0, p8

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, "mobileVersions":[Ljava/lang/String;
    iget-object v7, p4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    if-nez v7, :cond_5

    .line 375
    new-instance v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    invoke-direct {v7}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;-><init>()V

    iput-object v7, p4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    .line 377
    :cond_5
    iget-object v7, p4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->major_version:I

    .line 380
    array-length v7, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_6

    .line 381
    iget-object v7, p4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    const-string v8, "0"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 390
    .end local v5    # "mobileVersions":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 391
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v7, 0x5

    new-array v4, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v8, v4, v7

    const/4 v7, 0x4

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v8, v4, v7

    .line 398
    .local v4, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 399
    .local v1, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_1

    .line 383
    .end local v1    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v4    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v5    # "mobileVersions":[Ljava/lang/String;
    :cond_6
    :try_start_2
    iget-object v7, p4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 400
    .end local v5    # "mobileVersions":[Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 401
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 402
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v7, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method
