.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;
.super Ljava/lang/Object;
.source "MmbFcZeroSymbolsComplementContentsHelperSv.java"


# instance fields
.field private mFdtInstance:Ljava/lang/Boolean;

.field private final mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

.field private mScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

.field private mTime:J

.field public final mmbInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

.field public final mmbTransmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Ljava/lang/String;)V
    .locals 1
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->loadMetadata(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;)V
    .locals 2
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aContentInfo"    # Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mTime:J

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mFdtInstance:Ljava/lang/Boolean;

    .line 164
    if-nez p2, :cond_0

    .line 165
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "aContentInfo == null"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 168
    iget-object v0, p2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .line 169
    iget-object v0, p2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbTransmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    .line 171
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->assertFields()V

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;)V
    .locals 2
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aContentMetadata"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mTime:J

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mFdtInstance:Ljava/lang/Boolean;

    .line 131
    if-nez p2, :cond_0

    .line 132
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "aContentMetadata == null"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 135
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .line 136
    iget-object v0, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbTransmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    .line 138
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->assertFields()V

    .line 142
    return-void
.end method

.method private assertFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "mMainService == null"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->crid:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 244
    :cond_1
    const-string v0, "bad infoBase."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "infoBase error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbTransmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbTransmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbTransmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 251
    :cond_3
    const-string v0, "bad transmitInfo."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "transmitInfo error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_4
    return-void
.end method

.method private isDownloadStatusNoData()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 934
    const/4 v1, 0x0

    .line 937
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 939
    .local v2, "state":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v4, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->crid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getDownloadProgress(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;

    move-result-object v2

    .line 943
    iget v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbState:I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v4, 0x38

    if-ne v3, v4, :cond_0

    .line 944
    const/4 v1, 0x1

    .line 957
    :cond_0
    return v1

    .line 946
    :catch_0
    move-exception v0

    .line 947
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v3, "%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 948
    throw v0

    .line 949
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 950
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v3, "%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 951
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private isRepairPercentageZeroInner(IZZ)Z
    .locals 6
    .param p1, "aReserveType"    # I
    .param p2, "aManualRepairFlg"    # Z
    .param p3, "aAutoRepairFlg"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 616
    const/4 v1, 0x0

    .line 617
    .local v1, "result":Z
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbTransmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v0, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    .line 618
    .local v0, "postFileRepair":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;
    packed-switch p1, :pswitch_data_0

    .line 657
    :pswitch_0
    const-string v2, "Illegal reserve type. [%d]"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "Illegal reserve type"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 621
    :pswitch_1
    if-eqz p2, :cond_0

    .line 626
    iget-byte v2, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairManualStorePercentage:B

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    or-int/2addr v1, v2

    .line 628
    :cond_0
    if-eqz p3, :cond_1

    .line 633
    iget-byte v2, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->autoRepairManualStorePercentage:B

    if-nez v2, :cond_3

    :goto_1
    or-int/2addr v1, v3

    .line 663
    :cond_1
    :goto_2
    return v1

    :cond_2
    move v2, v4

    .line 626
    goto :goto_0

    :cond_3
    move v3, v4

    .line 633
    goto :goto_1

    .line 640
    :pswitch_2
    if-eqz p2, :cond_4

    .line 645
    iget-byte v2, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairAutoStorePercentage:B

    if-nez v2, :cond_5

    move v2, v3

    :goto_3
    or-int/2addr v1, v2

    .line 647
    :cond_4
    if-eqz p3, :cond_1

    .line 652
    iget-byte v2, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->autoRepairAutoStorePercentage:B

    if-nez v2, :cond_6

    :goto_4
    or-int/2addr v1, v3

    goto :goto_2

    :cond_5
    move v2, v4

    .line 645
    goto :goto_3

    :cond_6
    move v3, v4

    .line 652
    goto :goto_4

    .line 618
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static loadMetadata(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .locals 5
    .param p0, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "result":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    if-nez p0, :cond_0

    .line 202
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "aMainService == null"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_0
    if-nez p1, :cond_1

    .line 205
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "aCrid == null"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentDetailsFromMeta(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 218
    return-object v1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public checkManualComplementPeriod(Z)Z
    .locals 8
    .param p1, "aLastBroadcast"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 730
    const/4 v1, 0x1

    .line 731
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->getTime()J

    move-result-wide v2

    .line 732
    .local v2, "time":J
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbTransmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v0, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    .line 740
    .local v0, "postFileRepair":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;
    iget-wide v4, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairStartDate:J

    cmp-long v4, v6, v4

    if-eqz v4, :cond_0

    iget-wide v4, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairEndDate:J

    cmp-long v4, v6, v4

    if-eqz v4, :cond_0

    iget-wide v4, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairStartDate:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    iget-wide v4, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairEndDate:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 748
    :cond_0
    const/4 v4, 0x0

    .line 757
    :goto_0
    return v4

    .line 751
    :cond_1
    if-eqz p1, :cond_2

    .line 752
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isOverLastBroadcast()Z

    move-result v1

    :cond_2
    move v4, v1

    .line 757
    goto :goto_0
.end method

.method public checkScheduleAndRepairPercentageZero(Z)Z
    .locals 3
    .param p1, "aIsManualRepair"    # Z

    .prologue
    const/4 v0, 0x0

    .line 686
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->getScheduleData()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v1

    if-nez v1, :cond_0

    .line 687
    const-string v1, "no reservation."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    :goto_0
    return v0

    .line 695
    :cond_0
    const/4 v0, 0x0

    .line 696
    .local v0, "result":Z
    if-eqz p1, :cond_1

    .line 697
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isManualRepairPercentageZero()Z

    move-result v0

    goto :goto_0

    .line 699
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isAutoRepairPercentageZero()Z

    move-result v0

    goto :goto_0
.end method

.method public entryContents()Z
    .locals 5

    .prologue
    .line 852
    const/4 v1, 0x1

    .line 854
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isRepairPercentageZero()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->hasFdtInstance()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isDownloadStatusNoData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v2

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v3, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->crid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->entryContents(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 867
    :cond_0
    return v1

    .line 858
    :catch_0
    move-exception v0

    .line 860
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 861
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getLastBroadcastStopTime()J
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 811
    const-wide/16 v4, -0x1

    .line 814
    .local v4, "result":J
    :try_start_0
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbTransmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v7, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    invoke-direct {v3, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;-><init>(Ljava/lang/String;)V

    .line 816
    .local v3, "sdpParser":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    const-string v7, "t="

    invoke-virtual {v3, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;->getTagClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;

    move-object v0, v7

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;

    move-object v6, v0

    .line 819
    .local v6, "tagT":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->getStopTime(Z)J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 827
    return-wide v4

    .line 820
    .end local v3    # "sdpParser":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .end local v6    # "tagT":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;
    :catch_0
    move-exception v2

    .line 821
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public getScheduleData()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .locals 4

    .prologue
    .line 311
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 312
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    if-nez v1, :cond_0

    .line 313
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v0

    .line 316
    .local v0, "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->crid:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v1

    .line 319
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->setScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v0    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    :cond_0
    :goto_0
    return-object v1

    .line 320
    .restart local v0    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getTime()J
    .locals 6

    .prologue
    .line 279
    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mTime:J

    .line 280
    .local v2, "result":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 287
    invoke-virtual {p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->setTime(J)V

    .line 292
    :cond_0
    return-wide v2

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v1, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasFdtInstance()Z
    .locals 3

    .prologue
    .line 406
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mFdtInstance:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->crid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->hasFdtInstance(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mFdtInstance:Ljava/lang/Boolean;

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mFdtInstance:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 415
    .local v0, "result":Z
    return v0
.end method

.method public isAutoRepairPercentageZero()Z
    .locals 3

    .prologue
    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->getScheduleData()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v1

    .line 497
    .local v1, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    if-eqz v1, :cond_0

    .line 498
    iget v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isAutoRepairPercentageZero(I)Z

    move-result v0

    .line 503
    :cond_0
    return v0
.end method

.method public isAutoRepairPercentageZero(I)Z
    .locals 3
    .param p1, "aReserveType"    # I

    .prologue
    .line 525
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isRepairPercentageZeroInner(IZZ)Z

    move-result v0

    .line 529
    .local v0, "result":Z
    return v0
.end method

.method public isManualRepairPercentageZero()Z
    .locals 3

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->getScheduleData()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v1

    .line 440
    .local v1, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    if-eqz v1, :cond_0

    .line 441
    iget v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isManualRepairPercentageZero(I)Z

    move-result v0

    .line 446
    :cond_0
    return v0
.end method

.method public isManualRepairPercentageZero(I)Z
    .locals 3
    .param p1, "aReserveType"    # I

    .prologue
    .line 468
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isRepairPercentageZeroInner(IZZ)Z

    move-result v0

    .line 472
    .local v0, "result":Z
    return v0
.end method

.method public isOverLastBroadcast()Z
    .locals 8

    .prologue
    .line 781
    const/4 v2, 0x0

    .line 782
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->getTime()J

    move-result-wide v4

    .line 783
    .local v4, "time":J
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->getLastBroadcastStopTime()J

    move-result-wide v0

    .line 786
    .local v0, "lastStopTime":J
    const-wide/16 v6, 0x0

    cmp-long v3, v6, v0

    if-gez v3, :cond_0

    .line 787
    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    const/4 v2, 0x1

    .line 792
    :cond_0
    :goto_0
    return v2

    .line 787
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isRepairPercentageZero()Z
    .locals 3

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->getScheduleData()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v1

    .line 554
    .local v1, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    if-eqz v1, :cond_0

    .line 555
    iget v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isRepairPercentageZero(I)Z

    move-result v0

    .line 560
    :cond_0
    return v0
.end method

.method public isRepairPercentageZero(I)Z
    .locals 2
    .param p1, "aReserveType"    # I

    .prologue
    const/4 v1, 0x1

    .line 582
    invoke-direct {p0, p1, v1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isRepairPercentageZeroInner(IZZ)Z

    move-result v0

    .line 586
    .local v0, "result":Z
    return v0
.end method

.method public removeEntryContents()Z
    .locals 3

    .prologue
    .line 894
    const/4 v0, 0x0

    .line 896
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isRepairPercentageZero()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->hasFdtInstance()Z

    move-result v1

    if-nez v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->crid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteContent(Ljava/lang/String;)Z

    .line 900
    const/4 v0, 0x1

    .line 905
    :cond_0
    return v0
.end method

.method public setScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    .locals 0
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 382
    return-void
.end method

.method public setTime(J)V
    .locals 5
    .param p1, "aTime"    # J

    .prologue
    .line 351
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 352
    const-string v0, "illegal time. [%d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "illegal time"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mTime:J

    .line 359
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MmbFcZeroSymbolsComplementContentsHelperSv [mMainService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 973
    const-string v1, ", mmbInfoBase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 975
    const-string v1, ", mmbTransmitInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbTransmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 977
    const-string v1, ", mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 979
    const-string v1, ", mScheduleData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 981
    const-string v1, ", mFdtInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mFdtInstance:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 983
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
