.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
.source "MmbFcContentsModuleSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$1;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbShutdownCancelDownloadTerminationSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbForceCancelDownloadTerminationSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbConflictCancelDownloadTerminationSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbMaxCancelDownloadTerminationSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbManualCancelDownloadTerminationSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbRunUnexpectedScheduleProcess;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbFCContDownloadState;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbFcAutoReserveDownloadType;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbFcCheckContentDetailsColumn;
    }
.end annotation


# static fields
.field static final COMPLEMENT_CANCEL_LOCK:Ljava/lang/Object;

.field static final COMPLEMENT_FDT_CANCEL_LOCK:Ljava/lang/Object;


# instance fields
.field private cancelComplementShutdownFlg:Z

.field private downloadingCrids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

.field mCancelDownloadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;",
            ">;"
        }
    .end annotation
.end field

.field mCancelExportMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ">;"
        }
    .end annotation
.end field

.field private mComplementCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

.field private mComplementFdtNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;

.field private mComplementFdtStateManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

.field private mComplementNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

.field private mConflictCbMnr:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;

.field private mContClientMwList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmmb/android/MmbFcContMw/MmbFcContMwClient;",
            ">;"
        }
    .end annotation
.end field

.field private mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

.field private mContentNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

.field private mContentRetry:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;

.field private mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

.field private mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

.field mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

.field mExecutionStartTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mExecutionStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;

.field private mIndividualCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

.field mOpenStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;

.field private smAutoOperationEnvironmentFlag:Z

.field smContentStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field smLastSchduleStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 328
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->COMPLEMENT_CANCEL_LOCK:Ljava/lang/Object;

    .line 334
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->COMPLEMENT_FDT_CANCEL_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 355
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;-><init>(Landroid/content/Context;)V

    .line 112
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    .line 117
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    .line 122
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    .line 127
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    .line 132
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    .line 137
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentRetry:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;

    .line 142
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mConflictCbMnr:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;

    .line 147
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelComplementShutdownFlg:Z

    .line 157
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mIndividualCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    .line 162
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementFdtStateManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    .line 167
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementFdtNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smAutoOperationEnvironmentFlag:Z

    .line 177
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    .line 184
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smLastSchduleStateMap:Ljava/util/Map;

    .line 191
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mExecutionStartTimeMap:Ljava/util/Map;

    .line 198
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mCancelDownloadMap:Ljava/util/Map;

    .line 204
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mCancelExportMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 214
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    .line 219
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mOpenStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;

    .line 224
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mExecutionStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;

    .line 229
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mBaseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContClientMwList:Ljava/util/ArrayList;

    .line 2821
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->downloadingCrids:Ljava/util/Set;

    .line 362
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    return-object v0
.end method

.method private cancelLongTimeComplement(Ljava/lang/String;I)V
    .locals 9
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aState"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5742
    const-string v0, "%s"

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v7

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5744
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->getRepairCallback(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v3

    .line 5745
    .local v3, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v5, 0x0

    .line 5746
    .local v5, "dispNotify":Z
    const/4 v0, 0x3

    if-ne v0, p2, :cond_0

    .line 5747
    const/4 v5, 0x1

    .line 5750
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const v1, 0x7f04001e

    invoke-virtual {v0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 5752
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    const/4 v2, -0x1

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->onRepairFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;Z)V

    .line 5754
    const/4 v0, 0x4

    if-ne v0, p2, :cond_1

    .line 5755
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplement(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5768
    .end local v3    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v5    # "dispNotify":Z
    :cond_1
    return-void

    .line 5758
    :catch_0
    move-exception v6

    .line 5759
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "%s"

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v6, v1, v7

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5760
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    if-ne v0, v1, :cond_1

    .line 5761
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private cancelLongTimeComplementFdt(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aFdtStateInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    .prologue
    const/4 v3, 0x1

    .line 5798
    const-string v0, "%s, state:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5799
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$1;->$SwitchMap$com$nttdocomo$mmb$android$mmbsv$process$content$MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv:[I

    iget-object v1, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5815
    iget-object v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 5823
    :goto_0
    return-void

    .line 5802
    :pswitch_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v0

    iget-object v1, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->cancelJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5803
    iget v0, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbType:I

    if-ne v0, v3, :cond_0

    .line 5805
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplementFdtFixed(Ljava/lang/String;)Z

    .line 5807
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const v1, 0x7f04001e

    invoke-virtual {v0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 5809
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtNotice()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;

    move-result-object v0

    iget v1, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbType:I

    iget-object v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v0, p1, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5799
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private cancelLongTimeDownload(Ljava/lang/String;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5705
    const-string v2, "%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5707
    :try_start_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbForceCancelDownloadTerminationSv;

    invoke-direct {v0, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbForceCancelDownloadTerminationSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)V

    .line 5709
    .local v0, "cancelModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbForceCancelDownloadTerminationSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbForceCancelDownloadTerminationSv;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5720
    .end local v0    # "cancelModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbForceCancelDownloadTerminationSv;
    :cond_0
    return-void

    .line 5710
    :catch_0
    move-exception v1

    .line 5711
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5712
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    if-ne v2, v3, :cond_0

    .line 5713
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private cancelLongTimeExecution()V
    .locals 15

    .prologue
    .line 5601
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J

    move-result-wide v0

    .line 5604
    .local v0, "currentTime":J
    iget-object v12, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementFdtStateManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getStateInfoList()Ljava/util/List;

    move-result-object v5

    .line 5605
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    .line 5607
    .local v10, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    iget-wide v12, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbStartTime:J

    invoke-direct {p0, v0, v1, v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->checkLongTimeExecution(JJ)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 5608
    iget-object v12, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCrid:Ljava/lang/String;

    invoke-direct {p0, v12, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelLongTimeComplementFdt(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5643
    .end local v0    # "currentTime":J
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;>;"
    .end local v10    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :catch_0
    move-exception v2

    .line 5644
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5645
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    if-ne v12, v13, :cond_3

    .line 5646
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v12, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 5613
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentTime":J
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;>;"
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadStateAll()Ljava/util/Map;

    move-result-object v11

    .line 5614
    .local v11, "statemap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5615
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 5616
    .local v7, "state":I
    const-wide/16 v8, -0x1

    .line 5617
    .local v8, "startTime":J
    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 5621
    :pswitch_0
    iget-object v13, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v14, 0x4

    invoke-virtual {v13, v12, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v6

    .line 5624
    .local v6, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    iget-wide v8, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 5626
    invoke-direct {p0, v0, v1, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->checkLongTimeExecution(JJ)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 5627
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelLongTimeDownload(Ljava/lang/String;)V

    goto :goto_1

    .line 5633
    .end local v6    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :pswitch_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {p0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getExecutionStartTimeMap(Ljava/lang/String;)J

    move-result-wide v8

    .line 5635
    invoke-direct {p0, v0, v1, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->checkLongTimeExecution(JJ)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 5636
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {p0, v12, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelLongTimeComplement(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5654
    .end local v0    # "currentTime":J
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;>;"
    .end local v7    # "state":I
    .end local v8    # "startTime":J
    .end local v11    # "statemap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    return-void

    .line 5617
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private checkLongTimeExecution(JJ)Z
    .locals 7
    .param p1, "aCurrentTime"    # J
    .param p3, "aStartTime"    # J

    .prologue
    .line 5677
    const/4 v0, 0x0

    .line 5678
    .local v0, "result":Z
    const-wide/32 v2, 0x5265c00

    sub-long v4, p1, p3

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 5679
    const/4 v0, 0x1

    .line 5685
    :cond_0
    return v0
.end method

.method private checkStartDownloadResult(Ljava/lang/String;I)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aResult"    # I

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3309
    if-eqz p2, :cond_0

    .line 3310
    const-string v0, "CRID:%s DownloadResult:%d"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3313
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 3365
    :goto_0
    return-void

    .line 3316
    :sswitch_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    invoke-virtual {v0, p1, v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3321
    :sswitch_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/16 v1, 0x9

    invoke-virtual {v0, p1, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3325
    :sswitch_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    invoke-virtual {v0, p1, v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    .line 3328
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    goto :goto_0

    .line 3333
    :sswitch_3
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3338
    :sswitch_4
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    invoke-virtual {v0, p1, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3342
    :sswitch_5
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3346
    :sswitch_6
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3350
    :sswitch_7
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/16 v1, 0x13

    invoke-virtual {v0, p1, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3354
    :sswitch_8
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/16 v1, 0x12

    invoke-virtual {v0, p1, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3313
    :sswitch_data_0
    .sparse-switch
        -0x2e -> :sswitch_7
        -0x2d -> :sswitch_6
        -0x1c -> :sswitch_2
        -0x1b -> :sswitch_1
        -0x13 -> :sswitch_3
        -0x12 -> :sswitch_5
        -0xd -> :sswitch_4
        -0x8 -> :sswitch_8
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getContentSizeFromSDP(Ljava/lang/String;)J
    .locals 9
    .param p0, "aSdp"    # Ljava/lang/String;

    .prologue
    .line 4133
    const-wide/16 v4, -0x1

    .line 4135
    .local v4, "contentSize":J
    :try_start_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;

    invoke-direct {v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;-><init>(Ljava/lang/String;)V

    .line 4136
    .local v2, "classSdp":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    const-string v7, "a=storageDemand"

    invoke-virtual {v2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;->getTagClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;

    move-object v0, v7

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;

    move-object v6, v0

    .line 4139
    .local v6, "storageClass":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;->getStorageDemand(Z)J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v4

    .line 4150
    return-wide v4

    .line 4140
    .end local v2    # "classSdp":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .end local v6    # "storageClass":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
    :catch_0
    move-exception v3

    .line 4141
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4142
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 4143
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v3

    .line 4144
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4145
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 4146
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v3

    .line 4147
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4148
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v7, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private startContentExecutionCheck(Ljava/lang/String;)I
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 2368
    const/4 v1, 0x0

    .line 2370
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageMount()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2374
    const/16 v2, -0x12

    .line 2407
    :goto_0
    return v2

    .line 2377
    :cond_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2378
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 2382
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isDownloaded(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_3

    .line 2386
    const/16 v2, -0x15

    goto :goto_0

    .line 2388
    :catch_0
    move-exception v0

    .line 2389
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2391
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    move-result v1

    .line 2394
    if-nez v1, :cond_2

    .line 2395
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2397
    :cond_2
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2402
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :cond_3
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startContentExecutionCheckState(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .line 2407
    goto :goto_0
.end method

.method private startContentExecutionCheckState(Ljava/lang/String;)I
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 2429
    const/4 v4, 0x0

    .line 2431
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadStateAll()Ljava/util/Map;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2439
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 2440
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2442
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2443
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2444
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2445
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2447
    .local v6, "value":I
    const/4 v7, 0x5

    if-ne v7, v6, :cond_0

    .line 2451
    const/16 v7, -0x13

    .line 2458
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v6    # "value":I
    :goto_0
    return v7

    .line 2432
    :catch_0
    move-exception v0

    .line 2433
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v7, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v8

    invoke-static {v7, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2437
    const/4 v7, -0x1

    goto :goto_0

    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_1
    move v7, v8

    .line 2458
    goto :goto_0
.end method

.method private startDownloadCheck(Ljava/lang/String;I)I
    .locals 2
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I

    .prologue
    .line 2882
    const/4 v0, 0x0

    .line 2884
    .local v0, "result":I
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2885
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 2888
    :cond_0
    const/16 v1, 0xb

    if-eq v1, p2, :cond_1

    const/16 v1, 0xc

    if-eq v1, p2, :cond_1

    const/16 v1, 0xd

    if-eq v1, p2, :cond_1

    .line 2890
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 2894
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startDownloadCheckState(Ljava/lang/String;I)I

    move-result v0

    .line 2899
    return v0
.end method

.method private startDownloadCheckRemainder(Ljava/lang/String;)I
    .locals 16
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 3102
    const/4 v7, -0x1

    .line 3104
    .local v7, "ret":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageMount()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3106
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageFreeSpace()J

    move-result-wide v8

    .line 3107
    .local v8, "remaindersize":J
    const-wide/16 v12, 0x400

    mul-long/2addr v8, v12

    .line 3110
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v12

    const/4 v13, 0x1

    const-string v14, "ja"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v6

    check-cast v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    .line 3114
    .local v6, "metadatainfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    if-eqz v6, :cond_0

    iget-object v12, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    if-eqz v12, :cond_0

    iget-object v12, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v12, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    if-nez v12, :cond_1

    .line 3116
    :cond_0
    const-string v12, "sdp null"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3117
    const/16 v7, -0x2d

    move v10, v7

    .line 3157
    .end local v6    # "metadatainfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .end local v7    # "ret":I
    .end local v8    # "remaindersize":J
    .local v10, "ret":I
    :goto_0
    return v10

    .line 3123
    .end local v10    # "ret":I
    .restart local v6    # "metadatainfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .restart local v7    # "ret":I
    .restart local v8    # "remaindersize":J
    :cond_1
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;

    iget-object v12, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v12, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    invoke-direct {v2, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;-><init>(Ljava/lang/String;)V

    .line 3125
    .local v2, "classSdp":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    const-string v12, "a=storageDemand"

    invoke-virtual {v2, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;->getTagClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;

    move-object v0, v12

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;

    move-object v11, v0

    .line 3128
    .local v11, "storageClass":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;->getStorageDemand(Z)J

    move-result-wide v4

    .line 3129
    .local v4, "contentsize":J
    long-to-double v12, v4

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v14

    double-to-long v4, v12

    .line 3132
    cmp-long v12, v8, v4

    if-lez v12, :cond_2

    .line 3133
    const/4 v7, 0x0

    .end local v2    # "classSdp":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .end local v4    # "contentsize":J
    .end local v6    # "metadatainfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .end local v8    # "remaindersize":J
    .end local v11    # "storageClass":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
    :goto_1
    move v10, v7

    .line 3157
    .end local v7    # "ret":I
    .restart local v10    # "ret":I
    goto :goto_0

    .line 3135
    .end local v10    # "ret":I
    .restart local v2    # "classSdp":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .restart local v4    # "contentsize":J
    .restart local v6    # "metadatainfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .restart local v7    # "ret":I
    .restart local v8    # "remaindersize":J
    .restart local v11    # "storageClass":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
    :cond_2
    const/16 v7, -0xa

    goto :goto_1

    .line 3138
    .end local v2    # "classSdp":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .end local v4    # "contentsize":J
    .end local v6    # "metadatainfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .end local v8    # "remaindersize":J
    .end local v11    # "storageClass":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
    :cond_3
    const/16 v7, -0x12

    .line 3139
    const-string v12, "SD CARD UNMOUNT"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 3141
    :catch_0
    move-exception v3

    .line 3142
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v12, "%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3143
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 3144
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3145
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v12, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 3146
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :catch_2
    move-exception v3

    .line 3147
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3148
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v12, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 3149
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_3
    move-exception v3

    .line 3150
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3151
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v12, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v12
.end method

.method private startDownloadCheckState(Ljava/lang/String;I)I
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I

    .prologue
    .line 3028
    const/4 v1, 0x0

    .line 3031
    .local v1, "result":I
    const/16 v2, 0xb

    if-eq v2, p2, :cond_0

    .line 3032
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->checkAutoDownload(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3036
    const/16 v2, -0x1d

    .line 3081
    :goto_0
    return v2

    .line 3041
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->isDeliveryPeriodEnd(Ljava/lang/String;)I

    move-result v1

    .line 3042
    if-eqz v1, :cond_1

    .line 3050
    :cond_1
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startDownloadCheckRemainder(Ljava/lang/String;)I

    move-result v1

    .line 3051
    if-eqz v1, :cond_2

    move v2, v1

    .line 3055
    goto :goto_0

    .line 3059
    :cond_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isUimStatus()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3063
    const/16 v2, -0xe

    goto :goto_0

    .line 3068
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkOverseasMode()Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    .line 3072
    const/16 v2, -0x10

    goto :goto_0

    .line 3074
    :catch_0
    move-exception v0

    .line 3078
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    const/16 v2, -0x2e

    goto :goto_0

    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :cond_4
    move v2, v1

    .line 3081
    goto :goto_0
.end method

.method private startDownloadFatalReceived(Ljava/lang/String;I)V
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 3254
    const-string v1, "crid:%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3258
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    const v2, 0x7f040004

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadFailedNotice(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3265
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I

    .line 3267
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3274
    :goto_1
    const/16 v1, 0xb

    if-ne v1, p2, :cond_0

    .line 3277
    :try_start_2
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/4 v2, 0x1

    const/16 v3, 0xc

    invoke-virtual {v1, p1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3288
    :cond_0
    :goto_2
    return-void

    .line 3259
    :catch_0
    move-exception v0

    .line 3261
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "notifyDownloadFailedNotice error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3269
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 3271
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "updateScheduleStateInfo error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3279
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 3281
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "setHistory error"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private startDownloadSetHistory(Ljava/lang/String;II)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I
    .param p3, "aResult"    # I

    .prologue
    const/4 v3, 0x1

    .line 3180
    if-eqz p3, :cond_0

    .line 3181
    const-string v0, "CRID:%s CheckResult%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3185
    :cond_0
    const/16 v0, 0xb

    if-ne v0, p2, :cond_1

    .line 3186
    sparse-switch p3, :sswitch_data_0

    .line 3231
    :cond_1
    :goto_0
    return-void

    .line 3188
    :sswitch_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3192
    :sswitch_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3196
    :sswitch_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3200
    :sswitch_3
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3204
    :sswitch_4
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3208
    :sswitch_5
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/16 v1, 0xc

    invoke-virtual {v0, p1, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3212
    :sswitch_6
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/16 v1, 0xd

    invoke-virtual {v0, p1, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3216
    :sswitch_7
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/16 v1, 0x15

    invoke-virtual {v0, p1, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3220
    :sswitch_8
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/16 v1, 0x13

    invoke-virtual {v0, p1, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    goto :goto_0

    .line 3186
    :sswitch_data_0
    .sparse-switch
        -0x2e -> :sswitch_8
        -0x2d -> :sswitch_4
        -0x2a -> :sswitch_7
        -0x12 -> :sswitch_3
        -0x10 -> :sswitch_0
        -0xe -> :sswitch_1
        -0xa -> :sswitch_2
        -0x6 -> :sswitch_6
        -0x1 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method assignDownloadingCrid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 2842
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->downloadingCrids:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2843
    const-string v0, "illegal crid"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2844
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2846
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->downloadingCrids:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2847
    const/4 v0, 0x1

    return v0
.end method

.method assignMwSearchInstance()Lmmb/android/MmbFcContMw/MmbFcContMwClient;
    .locals 7

    .prologue
    .line 3791
    const/4 v1, 0x0

    .line 3792
    .local v1, "contClientMw":Lmmb/android/MmbFcContMw/MmbFcContMwClient;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContClientMwList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3793
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContClientMwList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 3794
    new-instance v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-direct {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3795
    .end local v1    # "contClientMw":Lmmb/android/MmbFcContMw/MmbFcContMwClient;
    .local v2, "contClientMw":Lmmb/android/MmbFcContMw/MmbFcContMwClient;
    const/4 v3, 0x0

    .line 3797
    .local v3, "retLsn":I
    :try_start_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClient;Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    move-result v3

    .line 3798
    const/4 v4, -0x2

    if-ne v4, v3, :cond_0

    .line 3799
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3805
    :catchall_0
    move-exception v4

    move-object v1, v2

    .end local v2    # "contClientMw":Lmmb/android/MmbFcContMw/MmbFcContMwClient;
    .end local v3    # "retLsn":I
    .restart local v1    # "contClientMw":Lmmb/android/MmbFcContMw/MmbFcContMwClient;
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .end local v1    # "contClientMw":Lmmb/android/MmbFcContMw/MmbFcContMwClient;
    .restart local v2    # "contClientMw":Lmmb/android/MmbFcContMw/MmbFcContMwClient;
    .restart local v3    # "retLsn":I
    :cond_0
    move-object v1, v2

    .end local v2    # "contClientMw":Lmmb/android/MmbFcContMw/MmbFcContMwClient;
    .end local v3    # "retLsn":I
    .restart local v1    # "contClientMw":Lmmb/android/MmbFcContMw/MmbFcContMwClient;
    :goto_1
    :try_start_3
    monitor-exit v5

    .line 3809
    return-object v1

    .line 3802
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContClientMwList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContClientMwList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    move-object v1, v0

    .line 3803
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContClientMwList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContClientMwList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 3805
    :catchall_1
    move-exception v4

    goto :goto_0
.end method

.method public autoDeleteContents(Ljava/util/List;I)Ljava/util/List;
    .locals 12
    .param p2, "aType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v8, 0xe

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1163
    const/4 v5, 0x0

    .line 1166
    .local v5, "failedlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getStartupMode()I

    move-result v7

    if-ne v10, v7, :cond_1

    .line 1235
    .end local p1    # "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 1174
    .restart local p1    # "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageMount()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1175
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v7

    .line 1178
    :cond_2
    const/16 v7, 0xc

    if-eq v7, p2, :cond_3

    if-eq v8, p2, :cond_3

    .line 1180
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v7

    .line 1184
    :cond_3
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkBattery()Z

    move-result v0

    .line 1186
    .local v0, "bRet":Z
    if-nez v0, :cond_4

    if-eq v8, p2, :cond_0

    .line 1193
    :cond_4
    if-ne v8, p2, :cond_5

    .line 1194
    const/4 p2, 0x2

    .line 1198
    :cond_5
    :try_start_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v7, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteContentAuto(Ljava/util/List;I)Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    :goto_1
    move-object p1, v5

    .line 1235
    goto :goto_0

    .line 1199
    :catch_0
    move-exception v2

    .line 1200
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v7, "%s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v11

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1202
    const/4 v6, 0x0

    .line 1204
    .local v6, "result":I
    :try_start_1
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    move-result v6

    .line 1208
    if-nez v6, :cond_6

    .line 1209
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v7
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1213
    :catch_1
    move-exception v3

    .line 1214
    .local v3, "e2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v7, "%s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v3, v8, v11

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1215
    throw v3

    .line 1211
    .end local v3    # "e2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_6
    :try_start_2
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v7
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1217
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    .end local v6    # "result":I
    :catch_2
    move-exception v2

    .line 1218
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v7, 0x5

    new-array v4, v7, [Ljava/lang/Class;

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v7, v4, v11

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v7, v4, v10

    const/4 v7, 0x2

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v8, v4, v7

    const/4 v7, 0x4

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v8, v4, v7

    .line 1225
    .local v4, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 1226
    .local v1, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_1

    .line 1227
    .end local v1    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v4    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_3
    move-exception v2

    .line 1228
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1229
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public autoReserveDownload(Ljava/util/List;IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    .locals 20
    .param p2, "aType"    # I
    .param p3, "aAutoType"    # I
    .param p4, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1724
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    .line 1725
    .local v6, "currenttime":J
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1728
    .local v17, "failedlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->startScheduleAuto(Ljava/util/List;II)J

    move-result-wide v6

    .line 1729
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1782
    .end local p1    # "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .line 1737
    .restart local p1    # "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/16 v18, 0x0

    .line 1739
    .local v18, "result":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v19

    .line 1740
    .local v19, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v9, v0, :cond_2

    .line 1742
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getAutoOperationEnvironmentFlag()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1744
    :cond_1
    const-string v4, "canceled."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1745
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v9, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1776
    .end local v9    # "i":I
    .end local v18    # "result":I
    .end local v19    # "size":I
    :cond_2
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 1777
    const/16 v17, 0x0

    :cond_3
    move-object/from16 p1, v17

    .line 1782
    goto :goto_0

    .line 1749
    .restart local v9    # "i":I
    .restart local v18    # "result":I
    .restart local v19    # "size":I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v8, p2

    move-object/from16 v13, p4

    invoke-virtual/range {v4 .. v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->commonReserveSchedule(Ljava/lang/String;JIILjava/lang/String;[Ljava/lang/String;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v18

    .line 1753
    const/16 v4, -0x13

    move/from16 v0, v18

    if-eq v4, v0, :cond_5

    const/16 v4, -0x28

    move/from16 v0, v18

    if-ne v4, v0, :cond_6

    .line 1755
    :cond_5
    :goto_3
    move/from16 v0, v19

    if-ge v9, v0, :cond_2

    .line 1756
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1755
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1759
    :cond_6
    if-eqz v18, :cond_7

    .line 1761
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1740
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1764
    .end local v9    # "i":I
    .end local v18    # "result":I
    .end local v19    # "size":I
    :catch_0
    move-exception v15

    .line 1765
    .local v15, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v5, v16, v4

    const/4 v4, 0x1

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v5, v16, v4

    .line 1769
    .local v16, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 1770
    .local v14, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_2

    .line 1771
    .end local v14    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v15    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v16    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v15

    .line 1772
    .local v15, "e":Ljava/lang/Exception;
    invoke-static {v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1773
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method canMoreDownloading(Ljava/lang/String;)Z
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2827
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->downloadingCrids:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2828
    const-string v1, "illegal crid"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2829
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2831
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->downloadingCrids:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2835
    .local v0, "go":Z
    :cond_1
    return v0
.end method

.method public cancelAllOperation()V
    .locals 3

    .prologue
    .line 5865
    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)V

    .line 5868
    .local v1, "syncCancelMgr":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->requestCancelAll()V

    .line 5871
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smAutoOperationEnvironmentFlag:Z

    .line 5872
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->cancelAutoDeletion()V

    .line 5874
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->cancelDeletion()V

    .line 5877
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;->waitForCancelAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5885
    return-void

    .line 5878
    .end local v1    # "syncCancelMgr":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcSyncCancelManagerSv;
    :catch_0
    move-exception v0

    .line 5879
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5880
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public cancelComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4415
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logEnterPublic([Ljava/lang/Object;)V

    .line 4416
    const/4 v3, -0x1

    .line 4418
    .local v3, "result":I
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    invoke-virtual {v4, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->cancelComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 4430
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logLeavePublic(Ljava/lang/Object;)V

    .line 4431
    return v3

    .line 4419
    :catch_0
    move-exception v1

    .line 4420
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    new-array v2, v7, [Ljava/lang/Class;

    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v4, v2, v5

    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v4, v2, v6

    .line 4424
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 4425
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 4426
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 4427
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4428
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public cancelComplementFdt(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6379
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logEnterPublic([Ljava/lang/Object;)V

    .line 6380
    const/4 v3, -0x1

    .line 6382
    .local v3, "result":I
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    invoke-virtual {v4, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->cancelComplementFdt(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 6394
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logLeavePublic(Ljava/lang/Object;)V

    .line 6395
    return v3

    .line 6383
    :catch_0
    move-exception v1

    .line 6384
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    new-array v2, v7, [Ljava/lang/Class;

    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v4, v2, v5

    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v4, v2, v6

    .line 6388
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 6389
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 6390
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 6391
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6392
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public cancelContentExecution(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 12
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v11, -0x1

    .line 2480
    const/4 v7, 0x0

    .line 2483
    .local v7, "ret":I
    :try_start_0
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-nez v10, :cond_0

    move v10, v11

    .line 2535
    :goto_0
    return v10

    .line 2492
    :cond_0
    const/4 v4, 0x0

    .line 2494
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadStateAll()Ljava/util/Map;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 2503
    :try_start_2
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 2504
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2505
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v5, 0x1

    .line 2506
    .local v5, "nodata":Z
    const/4 v6, 0x0

    .line 2508
    .local v6, "result":Z
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2509
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2510
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2511
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2514
    .local v9, "value":I
    const/4 v10, 0x5

    if-ne v10, v9, :cond_1

    .line 2515
    const/4 v5, 0x0

    .line 2516
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->terminateApk()Z

    move-result v6

    .line 2520
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v9    # "value":I
    :cond_2
    if-eqz v5, :cond_3

    .line 2521
    const/16 v7, -0x15

    :goto_1
    move v10, v7

    .line 2535
    goto :goto_0

    .line 2495
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v5    # "nodata":Z
    .end local v6    # "result":Z
    .end local v8    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_0
    move-exception v0

    .line 2496
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v10, v11

    .line 2500
    goto :goto_0

    .line 2522
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v5    # "nodata":Z
    .restart local v6    # "result":Z
    .restart local v8    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_3
    if-eqz v6, :cond_4

    .line 2523
    const/4 v7, 0x0

    goto :goto_1

    .line 2525
    :cond_4
    const/4 v7, -0x1

    goto :goto_1

    .line 2527
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "nodata":Z
    .end local v6    # "result":Z
    .end local v8    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_1
    move-exception v0

    .line 2528
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    move v10, v11

    .line 2529
    goto :goto_0
.end method

.method public cancelDownload(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v9, 0x1

    .line 1354
    const/4 v4, -0x1

    .line 1356
    .local v4, "ret":I
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1357
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v6

    .line 1360
    :cond_0
    const/4 v5, 0x0

    .line 1362
    .local v5, "state":I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    .line 1364
    if-eq v9, v5, :cond_1

    const/4 v6, 0x2

    if-eq v6, v5, :cond_1

    .line 1369
    const/16 v6, -0x15

    .line 1434
    :goto_0
    return v6

    .line 1372
    :cond_1
    const/4 v3, 0x0

    .line 1375
    .local v3, "regResult":Z
    if-nez p2, :cond_4

    .line 1376
    :try_start_1
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbConflictCancelDownloadTerminationSv;

    invoke-direct {v6, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbConflictCancelDownloadTerminationSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->registerCancelDownloadTermination(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;)Z

    move-result v3

    .line 1385
    :goto_1
    if-ne v9, v3, :cond_6

    .line 1387
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v6, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->cancelDownload(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 1388
    sparse-switch v4, :sswitch_data_0

    .line 1406
    :goto_2
    :sswitch_0
    if-eqz v4, :cond_2

    if-ne v9, v3, :cond_2

    .line 1409
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeCancelDownloadTermination(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1427
    .end local v3    # "regResult":Z
    :cond_2
    :goto_3
    const/16 v6, -0x1c

    if-ne v6, v4, :cond_3

    .line 1428
    const/4 v4, -0x1

    :cond_3
    move v6, v4

    .line 1434
    goto :goto_0

    .line 1380
    .restart local v3    # "regResult":Z
    :cond_4
    :try_start_3
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbManualCancelDownloadTerminationSv;

    invoke-direct {v6, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbManualCancelDownloadTerminationSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->registerCancelDownloadTermination(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;)Z

    move-result v3

    goto :goto_1

    .line 1394
    :sswitch_1
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1406
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_5

    if-ne v9, v3, :cond_5

    .line 1409
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeCancelDownloadTermination(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1412
    :cond_5
    :goto_4
    :try_start_5
    throw v6
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1415
    .end local v3    # "regResult":Z
    :catch_0
    move-exception v1

    .line 1416
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    new-array v2, v9, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v7, v2, v6

    .line 1419
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 1420
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_3

    .line 1397
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v3    # "regResult":Z
    :sswitch_2
    :try_start_6
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 1403
    :cond_6
    const/16 v4, -0x31

    goto :goto_2

    .line 1410
    :catch_1
    move-exception v1

    .line 1411
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 1421
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "regResult":Z
    :catch_2
    move-exception v1

    .line 1422
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1423
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1410
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "regResult":Z
    :catch_3
    move-exception v1

    .line 1411
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 1388
    :sswitch_data_0
    .sparse-switch
        -0x1c -> :sswitch_2
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public cancelIndividualExport(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 6031
    const/4 v3, -0x1

    .line 6034
    .local v3, "ret":I
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6035
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid CRID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6040
    :catch_0
    move-exception v1

    .line 6041
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v5, v2, v4

    .line 6045
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 6047
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    .line 6056
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return v3

    .line 6039
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceIndividualController()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->cancelIndividualExport(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_0

    .line 6048
    :catch_1
    move-exception v1

    .line 6049
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6050
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public checkAutoDownload(Ljava/lang/String;I)Z
    .locals 13
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 2923
    const/4 v8, 0x0

    .line 2925
    .local v8, "result":I
    const/16 v10, 0xc

    if-ne v10, p2, :cond_a

    .line 2927
    const/4 v2, 0x0

    .line 2929
    .local v2, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentDetailsFromMeta(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2936
    :goto_0
    if-eqz v2, :cond_0

    iget-object v10, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    if-eqz v10, :cond_0

    iget-object v10, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v10, v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    if-nez v10, :cond_2

    .line 2938
    :cond_0
    const-string v10, "keyword null : %s"

    new-array v11, v12, [Ljava/lang/Object;

    aput-object p1, v11, v9

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3005
    .end local v2    # "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    :cond_1
    :goto_1
    return v9

    .line 2930
    .restart local v2    # "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    :catch_0
    move-exception v3

    .line 2931
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v10, "%s"

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v3, v11, v9

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2932
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_1
    move-exception v3

    .line 2933
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v10, "%s"

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v3, v11, v9

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2934
    throw v3

    .line 2944
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_2
    const/4 v4, 0x0

    .line 2945
    .local v4, "forceflg":Z
    const/4 v1, 0x0

    .line 2947
    .local v1, "autoflg":Z
    iget-object v10, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v0, v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v7, :cond_7

    aget-object v6, v0, v5

    .line 2948
    .local v6, "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    if-eqz v6, :cond_3

    iget-object v10, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    if-nez v10, :cond_4

    .line 2947
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2951
    :cond_4
    iget-object v10, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    const-string v11, "other"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2952
    iget-object v10, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".*force_receive:ON.*"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2954
    const/4 v4, 0x1

    .line 2956
    :cond_5
    iget-object v10, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".*auto_receive:ON.*"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2958
    const/4 v1, 0x1

    .line 2960
    :cond_6
    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 2967
    .end local v6    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    :cond_7
    if-eqz v4, :cond_8

    .line 2968
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoReceptionForForceReceive()I

    move-result v8

    .line 2971
    :cond_8
    if-eqz v1, :cond_9

    .line 2972
    if-nez v8, :cond_9

    .line 2973
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoReceptionForAutoReceive()I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v8

    .line 2997
    .end local v0    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v1    # "autoflg":Z
    .end local v2    # "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .end local v4    # "forceflg":Z
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_9
    :goto_3
    const/4 v9, 0x0

    .line 2998
    .local v9, "ret":Z
    if-ne v12, v8, :cond_1

    .line 2999
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 2977
    .end local v9    # "ret":Z
    .restart local v0    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .restart local v1    # "autoflg":Z
    .restart local v2    # "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .restart local v4    # "forceflg":Z
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    :catch_2
    move-exception v3

    .line 2978
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v10, "%s"

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v3, v11, v9

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2979
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 2984
    .end local v0    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v1    # "autoflg":Z
    .end local v2    # "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v4    # "forceflg":Z
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_a
    packed-switch p2, :pswitch_data_0

    .line 2989
    :try_start_2
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v10
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2991
    :catch_3
    move-exception v3

    .line 2992
    .restart local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v10, "%s"

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v3, v11, v9

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2993
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 2986
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :pswitch_0
    :try_start_3
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoReceptionForRecommend()I
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    .line 2987
    goto :goto_3

    .line 2984
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method checkAutoPlay(Ljava/lang/String;)V
    .locals 30
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 4581
    const/4 v7, 0x0

    .line 4582
    .local v7, "autoPlay":Z
    const/16 v22, 0x0

    .line 4584
    .local v22, "syncPlay":Z
    const/4 v8, 0x0

    .line 4586
    .local v8, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentDetailsFromMeta(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    move-result-object v8

    .line 4588
    if-eqz v8, :cond_0

    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    .line 4700
    :cond_0
    :goto_0
    return-void

    .line 4598
    :cond_1
    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    .local v6, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    array-length v0, v6

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    move/from16 v0, v17

    if-ge v13, v0, :cond_6

    aget-object v15, v6, v13

    .line 4599
    .local v15, "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    if-eqz v15, :cond_2

    iget-object v0, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    iget-object v0, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_3

    .line 4598
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 4602
    :cond_3
    iget-object v0, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "other"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 4603
    iget-object v0, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v26

    const-string v27, ".*ContAttributes\\|.*autoplay:OK.*"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 4604
    const/4 v7, 0x1

    .line 4606
    :cond_4
    iget-object v0, v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v26

    const-string v27, ".*ContAttributes\\|.*syncplay:OK.*"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 4607
    const/16 v22, 0x1

    .line 4609
    :cond_5
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v0, v7, :cond_2

    const/16 v26, 0x1

    move/from16 v0, v26

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 4615
    .end local v15    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    :cond_6
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v0, v7, :cond_0

    .line 4622
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J

    move-result-wide v10

    .line 4623
    .local v10, "currentTime":J
    move-wide/from16 v24, v10

    .line 4624
    .local v24, "triggerTime":J
    const/4 v14, 0x0

    .line 4625
    .local v14, "isSetSchedule":Z
    const/4 v12, 0x0

    .line 4626
    .local v12, "i":I
    const-wide v20, 0x7fffffffffffffffL

    .line 4628
    .local v20, "periodEnd":J
    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    .line 4629
    const/4 v12, 0x0

    :goto_2
    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_9

    .line 4630
    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    if-eqz v26, :cond_b

    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    move-object/from16 v0, v26

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    move-object/from16 v0, v26

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "availability"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 4634
    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    move-object/from16 v0, v26

    iget-wide v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->start:J

    move-wide/from16 v26, v0

    cmp-long v26, v10, v26

    if-gez v26, :cond_7

    .line 4635
    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    move-object/from16 v0, v26

    iget-wide v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->start:J

    move-wide/from16 v24, v0

    .line 4638
    :cond_7
    const-wide/16 v26, 0x0

    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    move-object/from16 v28, v0

    aget-object v28, v28, v12

    move-object/from16 v0, v28

    iget-wide v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->end:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-gez v26, :cond_8

    .line 4639
    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    move-object/from16 v0, v26

    iget-wide v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->end:J

    move-wide/from16 v20, v0

    .line 4641
    :cond_8
    cmp-long v26, v24, v20

    if-gez v26, :cond_9

    .line 4642
    const/4 v14, 0x1

    .line 4649
    :cond_9
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v0, v14, :cond_0

    .line 4651
    new-instance v19, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 4652
    .local v19, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 4653
    move-wide/from16 v0, v24

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 4654
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 4655
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 4656
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    .line 4658
    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    .line 4659
    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    .local v6, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    array-length v0, v6

    move/from16 v17, v0

    const/4 v13, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v13, v0, :cond_c

    aget-object v23, v6, v13

    .line 4660
    .local v23, "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    move-object/from16 v0, v23

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "main"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 4661
    move-object/from16 v0, v23

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    .line 4659
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 4629
    .end local v19    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v23    # "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .local v6, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 4666
    .end local v6    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .restart local v19    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_c
    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    move-object/from16 v26, v0

    aget-object v26, v26, v12

    move-object/from16 v0, v26

    iget-wide v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->start:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 4667
    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    .line 4669
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayTime:J

    .line 4670
    move-wide/from16 v0, v24

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayDate:J

    .line 4672
    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v9, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->contentType:Ljava/lang/String;

    .line 4674
    .local v9, "contentType":Ljava/lang/String;
    const-string v26, "\u97f3\u58f0"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 4675
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    .line 4687
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getFcPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4688
    .local v18, "packageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setFcPlaySchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 4692
    .local v16, "lRet":I
    const/16 v26, 0x3e9

    move/from16 v0, v26

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 4693
    const-string v26, "Set Fcplayer schedule error : %d"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4676
    .end local v16    # "lRet":I
    .end local v18    # "packageName":Ljava/lang/String;
    :cond_d
    const-string v26, "\u6620\u50cf"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 4677
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    goto :goto_4

    .line 4678
    :cond_e
    const-string v26, "\u753b\u50cf"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 4679
    const/16 v26, 0x8

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    goto :goto_4

    .line 4680
    :cond_f
    const-string v26, "HTML\u6587\u66f8"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 4681
    const/16 v26, 0x10

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    goto/16 :goto_4

    .line 4683
    :cond_10
    const/16 v26, 0x20

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    goto/16 :goto_4
.end method

.method public checkBroadcastTimeChanged()V
    .locals 20

    .prologue
    .line 4825
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v14

    .line 4828
    .local v14, "scheduleIns":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 4829
    .local v9, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4831
    .local v2, "aScheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v15, 0x4

    iput v15, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 4834
    :try_start_0
    invoke-virtual {v14, v9, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchReservedSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4843
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_1

    .line 4896
    :cond_0
    :goto_0
    return-void

    .line 4835
    :catch_0
    move-exception v3

    .line 4836
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v15, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4838
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v3

    .line 4839
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v15, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4850
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 4853
    .local v13, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J

    move-result-wide v4

    .line 4854
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    iget-object v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getBroadcastSchedule(Ljava/lang/String;)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    move-result-object v12

    .line 4856
    .local v12, "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    iget-object v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v4, v5, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->getOnDemandTime(Ljava/lang/String;J[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;)J

    move-result-wide v10

    .line 4859
    .local v10, "newTriggerTime":J
    iget-wide v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    move-wide/from16 v16, v0

    cmp-long v15, v16, v10

    if-eqz v15, :cond_3

    .line 4861
    iput-wide v10, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 4862
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    invoke-virtual {v15, v13, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 4888
    .end local v4    # "currentTime":J
    .end local v10    # "newTriggerTime":J
    .end local v12    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :catch_2
    move-exception v3

    .line 4889
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v15, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 4866
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v4    # "currentTime":J
    .restart local v10    # "newTriggerTime":J
    .restart local v12    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :cond_3
    const/4 v8, 0x0

    .line 4868
    .local v8, "isLast":Z
    if-eqz v12, :cond_2

    :try_start_2
    array-length v15, v12

    if-lez v15, :cond_2

    .line 4870
    array-length v15, v12

    add-int/lit8 v6, v15, -0x1

    .line 4871
    .local v6, "end":I
    aget-object v15, v12, v6

    iget-wide v0, v15, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    move-wide/from16 v16, v0

    iget-wide v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    move-wide/from16 v18, v0

    cmp-long v15, v16, v18

    if-nez v15, :cond_4

    .line 4872
    const/4 v8, 0x1

    .line 4875
    :cond_4
    const/4 v15, 0x6

    iget v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    const/4 v15, 0x1

    if-eq v15, v8, :cond_2

    .line 4878
    :cond_5
    const/4 v15, 0x5

    iget v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    if-eqz v8, :cond_2

    .line 4883
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    invoke-virtual {v15, v13, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1
.end method

.method public checkPlayed(Ljava/lang/String;)Z
    .locals 11
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2001
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageMount()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2002
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v6

    .line 2005
    :cond_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2006
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v6

    .line 2008
    :cond_1
    const/4 v5, 0x0

    .line 2010
    .local v5, "ret":Z
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v6, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isPlaybacked(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v5

    .line 2047
    :goto_0
    return v5

    .line 2011
    :catch_0
    move-exception v1

    .line 2012
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v6, "%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2014
    const/4 v4, 0x0

    .line 2016
    .local v4, "result":I
    :try_start_1
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    move-result v4

    .line 2020
    if-nez v4, :cond_2

    .line 2021
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v6
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2025
    :catch_1
    move-exception v2

    .line 2026
    .local v2, "e2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v6, "%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2027
    throw v2

    .line 2023
    .end local v2    # "e2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_2
    :try_start_2
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v6
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2029
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    .end local v4    # "result":I
    :catch_2
    move-exception v1

    .line 2030
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v6, 0x5

    new-array v3, v6, [Ljava/lang/Class;

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v6, v3, v9

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v6, v3, v10

    const/4 v6, 0x2

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v7, v3, v6

    .line 2037
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 2038
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 2039
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_3
    move-exception v1

    .line 2040
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2041
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public cleanupModule()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 699
    :try_start_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mConflictCbMnr:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->unregisterConflictCallback()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 703
    :goto_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v6

    .line 704
    .local v6, "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadStateAll()Ljava/util/Map;

    move-result-object v5

    .line 705
    .local v5, "statemap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 707
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 708
    .local v0, "crid":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 709
    .local v4, "state":I
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 714
    :pswitch_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadProgressOff(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeDownloadContentState(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 720
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v7, :cond_0

    .line 722
    :try_start_2
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    const/16 v8, 0x22

    invoke-interface {v7, v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;->onDownloadStateChange(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 724
    :catch_0
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 742
    .end local v0    # "crid":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "state":I
    :catch_1
    move-exception v1

    .line 743
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 700
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "statemap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    :catch_2
    move-exception v1

    .line 701
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 733
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    .restart local v0    # "crid":Ljava/lang/String;
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "state":I
    .restart local v5    # "statemap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6    # "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    :pswitch_1
    :try_start_4
    invoke-virtual {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->cancelComplement(Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 744
    .end local v0    # "crid":Ljava/lang/String;
    .end local v4    # "state":I
    :catch_3
    move-exception v1

    .line 745
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 746
    throw v1

    .line 737
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v0    # "crid":Ljava/lang/String;
    .restart local v4    # "state":I
    :pswitch_2
    :try_start_5
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->terminateApk()Z
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 749
    .end local v0    # "crid":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "state":I
    :cond_1
    invoke-virtual {p0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->setAutoOperationEnvironmentFlag(Z)V

    .line 750
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->cancelAutoDeletion()V

    .line 751
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->cancelDeletion()V

    .line 752
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->closeClient()V

    .line 753
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->cleanUpNotificationMap()V

    .line 754
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mIndividualCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->shutdown()V

    .line 755
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mIndividualCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    .line 759
    return-void

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public deleteContents(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    .locals 10
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 1075
    const/4 v4, 0x0

    .line 1078
    .local v4, "failedlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getStartupMode()I

    move-result v7

    if-ne v9, v7, :cond_0

    .line 1080
    move-object v4, p1

    move-object v5, v4

    .line 1130
    .end local v4    # "failedlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "failedlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v5

    .line 1088
    .end local v5    # "failedlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "failedlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageMount()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1089
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v7

    .line 1094
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteContentByCrid(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    :goto_1
    move-object v5, v4

    .line 1130
    .end local v4    # "failedlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "failedlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 1095
    .end local v5    # "failedlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "failedlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 1096
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1098
    const/4 v6, 0x0

    .line 1100
    .local v6, "result":I
    :try_start_1
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    move-result v6

    .line 1104
    if-nez v6, :cond_2

    .line 1105
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1109
    :catch_1
    move-exception v2

    .line 1110
    .local v2, "e2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1111
    throw v2

    .line 1107
    .end local v2    # "e2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_2
    :try_start_2
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1113
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    .end local v6    # "result":I
    :catch_2
    move-exception v1

    .line 1114
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v8, v3, v7

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    aput-object v7, v3, v9

    const/4 v7, 0x2

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v8, v3, v7

    .line 1120
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 1121
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_1

    .line 1122
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_3
    move-exception v1

    .line 1123
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1124
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public deleteDownloadSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 17
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aSeriesId"    # Ljava/lang/String;
    .param p4, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1815
    invoke-static/range {p1 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1816
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v15

    .line 1819
    :cond_0
    const/4 v9, 0x0

    .line 1823
    .local v9, "ret":I
    const/4 v7, 0x0

    .line 1824
    .local v7, "isDeleteDB":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getDownloadProgress(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;

    move-result-object v4

    .line 1825
    .local v4, "downloadState":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-direct {v14, v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Ljava/lang/String;)V

    .line 1827
    .local v14, "zeroSymbolsHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;
    const/16 v15, 0x38

    iget v0, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbState:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 1828
    const/4 v7, 0x1

    .line 1837
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v13

    .line 1838
    .local v13, "scheduler":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1839
    .local v12, "scheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 1840
    .local v8, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/4 v15, 0x4

    iput v15, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 1841
    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 1842
    invoke-virtual {v13, v8, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V

    .line 1843
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 1844
    .local v11, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/4 v15, 0x1

    iget v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 1845
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getFcPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object p2

    .line 1849
    :cond_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->isFcScheduleTimerFinished(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v15

    if-eqz v15, :cond_4

    .line 1850
    const/16 v9, -0x15

    move v10, v9

    .line 1892
    .end local v4    # "downloadState":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    .end local v8    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v9    # "ret":I
    .end local v11    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v12    # "scheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v13    # "scheduler":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    .end local v14    # "zeroSymbolsHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;
    .local v10, "ret":I
    :goto_1
    return v10

    .line 1829
    .end local v10    # "ret":I
    .restart local v4    # "downloadState":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    .restart local v9    # "ret":I
    .restart local v14    # "zeroSymbolsHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;
    :cond_3
    const/16 v15, 0x35

    :try_start_2
    iget v0, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbState:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 1830
    iget v15, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbSize:I

    if-nez v15, :cond_1

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->hasFdtInstance()Z

    move-result v15

    if-nez v15, :cond_1

    .line 1832
    const/4 v7, 0x1

    goto :goto_0

    .line 1857
    .restart local v8    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .restart local v11    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .restart local v12    # "scheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v13    # "scheduler":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :catch_0
    move-exception v5

    .line 1858
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1859
    const/16 v9, -0x15

    move v10, v9

    .line 1863
    .end local v9    # "ret":I
    .restart local v10    # "ret":I
    goto :goto_1

    .line 1867
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    .end local v10    # "ret":I
    .restart local v9    # "ret":I
    :cond_4
    invoke-virtual {v14, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->setScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V

    .line 1868
    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->removeEntryContents()Z

    .line 1870
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v15, v0, v1, v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteFcSchedule(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .end local v4    # "downloadState":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    .end local v8    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v11    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v12    # "scheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v13    # "scheduler":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    .end local v14    # "zeroSymbolsHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;
    :goto_2
    move v10, v9

    .line 1892
    .end local v9    # "ret":I
    .restart local v10    # "ret":I
    goto :goto_1

    .line 1872
    .end local v10    # "ret":I
    .restart local v9    # "ret":I
    :catch_1
    move-exception v5

    .line 1876
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    const/16 v9, -0x15

    .line 1887
    goto :goto_2

    .line 1877
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    :catch_2
    move-exception v5

    .line 1878
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v15, 0x2

    new-array v6, v15, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v16, v6, v15

    const/4 v15, 0x1

    const-class v16, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v16, v6, v15

    .line 1882
    .local v6, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 1883
    .local v3, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_2

    .line 1884
    .end local v3    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v6    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_3
    move-exception v5

    .line 1885
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1886
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v15, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v15
.end method

.method public deleteIndividualContents(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    .locals 11
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 6141
    const/4 v5, 0x0

    .line 6144
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 6145
    :try_start_0
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v7
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6170
    :catch_0
    move-exception v2

    .line 6171
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v8, v3, v7

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v7, v3, v10

    const/4 v7, 0x2

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v8, v3, v7

    .line 6176
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 6178
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    move-object v6, v5

    .line 6187
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v6

    .line 6147
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6148
    .local v1, "crid":Ljava/lang/String;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 6149
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid CRID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6179
    .end local v1    # "crid":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    .line 6180
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6181
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 6153
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getStartupMode()I

    move-result v7

    if-ne v10, v7, :cond_3

    .line 6155
    move-object v5, p1

    move-object v6, v5

    .line 6159
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 6162
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageMount()Z

    move-result v7

    if-nez v7, :cond_4

    .line 6163
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    const-string v8, "Save storage not mounted"

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 6167
    :cond_4
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceIndividualController()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->deleteIndividualContents(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto :goto_0
.end method

.method public dispatchSpecificAction(Landroid/content/Intent;)V
    .locals 0
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 5847
    return-void
.end method

.method public entryContents(Ljava/lang/String;)V
    .locals 2
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    .line 6456
    .local v0, "mainservice":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;

    invoke-direct {v1, v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Ljava/lang/String;)V

    .line 6458
    .local v1, "zeroSymbolsHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->entryContents()Z

    .line 6463
    return-void
.end method

.method public executeTaskUnexpectSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 4166
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbRunUnexpectedScheduleProcess;

    invoke-direct {v1, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbRunUnexpectedScheduleProcess;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4168
    .local v1, "scheduleProcessThread":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbRunUnexpectedScheduleProcess;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4171
    .local v2, "thread":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4176
    :goto_0
    return-void

    .line 4172
    :catch_0
    move-exception v0

    .line 4174
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public extCheckContentDetails([Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;I)V
    .locals 6
    .param p1, "aExtContentInfo"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    .param p2, "aColumnFlg"    # I

    .prologue
    .line 1015
    :try_start_0
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;)V

    .line 1017
    .local v3, "extCheck":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;
    invoke-virtual {v3, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->execute(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1033
    .end local v3    # "extCheck":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;
    :goto_0
    return-void

    .line 1018
    :catch_0
    move-exception v1

    .line 1019
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v5, v2, v4

    .line 1023
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 1024
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 1025
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 1026
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1027
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method getAutoOperationEnvironmentFlag()Z
    .locals 1

    .prologue
    .line 4116
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smAutoOperationEnvironmentFlag:Z

    return v0
.end method

.method getCancelComplementShutdownFlg()Z
    .locals 1

    .prologue
    .line 4467
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logEnterPublic([Ljava/lang/Object;)V

    .line 4468
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelComplementShutdownFlg:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logLeavePublic(Ljava/lang/Object;)V

    .line 4469
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelComplementShutdownFlg:Z

    return v0
.end method

.method public getCancelDownloadTermination(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 4912
    const/4 v1, 0x0

    .line 4914
    .local v1, "cancelDownloadTermination":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mCancelDownloadMap:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4915
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mCancelDownloadMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;

    move-object v1, v0

    .line 4916
    monitor-exit v4

    .line 4923
    :goto_0
    return-object v1

    .line 4916
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4917
    :catch_0
    move-exception v2

    .line 4918
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getCancelExportCallbackMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5901
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mCancelExportMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5905
    .local v0, "result":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;>;"
    return-object v0
.end method

.method public getContentDetails(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aDictionaryChange"    # Z
    .param p3, "aLanguage"    # Ljava/lang/String;
    .param p4, "aVersion"    # Ljava/lang/String;

    .prologue
    .line 898
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 899
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v6

    .line 902
    :cond_0
    const/4 v1, 0x0

    .line 905
    .local v1, "contentinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v6, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getContentDetails(Ljava/lang/String;ZLjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;

    move-result-object v1

    .line 906
    iget-object v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    if-nez v6, :cond_1

    .line 910
    const/4 v6, 0x0

    .line 982
    :goto_0
    return-object v6

    .line 914
    :cond_1
    iget-object v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v6, v6, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->resumeType:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    invoke-virtual {v6}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->getInt()I

    move-result v6

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getMmbFcContSvResumeType(I)I

    move-result v6

    iput v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbResumeInfo:I

    .line 918
    iget-object v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v6, v6, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->contentsState:Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    if-nez v6, :cond_2

    .line 919
    const/16 v6, 0x38

    iput v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbContentState:I

    .line 930
    :goto_1
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    invoke-virtual {v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentDetailsPeriod(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;)V

    .line 943
    iget-object v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    iget-object v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-wide v8, v8, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->repairsize:J

    invoke-virtual {v7, p1, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentDetailsRepairSize(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v6, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->repairsize:J

    :goto_2
    move-object v6, v1

    .line 982
    goto :goto_0

    .line 922
    :cond_2
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    iget-object v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v7, v7, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->contentsState:Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    iget-object v7, v7, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;->contStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getMmbFcContSvDownloadStatus(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;)I

    move-result v7

    invoke-virtual {v6, p1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentDetailsState(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbContentState:I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 946
    :catch_0
    move-exception v2

    .line 947
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 949
    const/4 v5, 0x0

    .line 951
    .local v5, "result":I
    :try_start_1
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    move-result v5

    .line 955
    if-nez v5, :cond_3

    .line 956
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_1

    .line 960
    :catch_1
    move-exception v3

    .line 961
    .local v3, "e2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 962
    throw v3

    .line 958
    .end local v3    # "e2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_3
    :try_start_2
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_1

    .line 964
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    .end local v5    # "result":I
    :catch_2
    move-exception v2

    .line 965
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v6, 0x5

    new-array v4, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v7, v4, v6

    .line 972
    .local v4, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 973
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_2

    .line 974
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v4    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_3
    move-exception v2

    .line 975
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 976
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getDownloadComplementState()Z
    .locals 8

    .prologue
    .line 5417
    const/4 v0, 0x0

    .line 5420
    .local v0, "downloadState":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadStateAll()Ljava/util/Map;

    move-result-object v6

    .line 5421
    .local v6, "statemap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5422
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5423
    .local v5, "state":I
    packed-switch v5, :pswitch_data_0

    .line 5433
    :goto_0
    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    .line 5437
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "state":I
    :cond_1
    if-nez v0, :cond_2

    .line 5438
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementFdtStateManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getStateInfoList()Ljava/util/List;

    move-result-object v4

    .line 5439
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_2

    .line 5440
    const/4 v0, 0x1

    .line 5450
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;>;"
    .end local v6    # "statemap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    return v0

    .line 5428
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "state":I
    .restart local v6    # "statemap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :pswitch_0
    const/4 v0, 0x1

    .line 5429
    goto :goto_0

    .line 5443
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "state":I
    .end local v6    # "statemap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 5444
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadProgress(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    .locals 11
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1468
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageMount()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v4, v6

    .line 1524
    :goto_0
    return-object v4

    .line 1472
    :cond_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1473
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v6

    .line 1476
    :cond_1
    const/4 v4, 0x0

    .line 1479
    .local v4, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    :try_start_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getDownloadProgress(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;

    move-result-object v4

    .line 1480
    const/16 v7, 0x38

    iget v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbState:I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-ne v7, v8, :cond_3

    move-object v4, v6

    .line 1484
    goto :goto_0

    .line 1486
    :catch_0
    move-exception v1

    .line 1487
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v6, "%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1489
    const/4 v5, 0x0

    .line 1491
    .local v5, "ret":I
    :try_start_1
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    move-result v5

    .line 1495
    if-nez v5, :cond_2

    .line 1496
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v6
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1500
    :catch_1
    move-exception v2

    .line 1501
    .local v2, "e2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v6, "%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1502
    throw v2

    .line 1498
    .end local v2    # "e2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_2
    :try_start_2
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v6
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1504
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    .end local v5    # "ret":I
    :catch_2
    move-exception v1

    .line 1505
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v6, 0x5

    new-array v3, v6, [Ljava/lang/Class;

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v6, v3, v9

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v6, v3, v10

    const/4 v6, 0x2

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v7, v3, v6

    .line 1512
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 1513
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    .line 1519
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    iget v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbState:I

    invoke-virtual {v6, p1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentDetailsState(Ljava/lang/String;I)I

    move-result v6

    iput v6, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbState:I

    goto :goto_0

    .line 1514
    :catch_3
    move-exception v1

    .line 1515
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1516
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method getDownloadState(Ljava/lang/String;)I
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1265
    const/4 v2, 0x0

    .line 1267
    .local v2, "value":Ljava/lang/Integer;
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 1269
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1275
    if-nez v2, :cond_0

    .line 1277
    const/16 v3, -0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1283
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 1269
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1270
    :catch_0
    move-exception v1

    .line 1272
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1273
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method getDownloadStateAll()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1307
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1310
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1312
    monitor-exit v3

    .line 1323
    return-object v1

    .line 1312
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1313
    :catch_0
    move-exception v0

    .line 1316
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1317
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method getExecutionStartTimeMap(Ljava/lang/String;)J
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 5566
    const-wide/16 v2, -0x1

    .line 5568
    .local v2, "time":J
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mExecutionStartTimeMap:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5569
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mExecutionStartTimeMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 5570
    monitor-exit v4

    .line 5579
    :goto_0
    return-wide v2

    .line 5570
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 5571
    :catch_0
    move-exception v0

    .line 5573
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getIndividualExportingCridList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6308
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceIndividualStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;

    move-result-object v2

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;->EXPORTING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->getCridList(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 6318
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v1

    .line 6311
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 6312
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6313
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getInstanceComplementCtrl()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    return-object v0
.end method

.method getInstanceComplementFdtNotice()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;
    .locals 1

    .prologue
    .line 6437
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementFdtNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;

    return-object v0
.end method

.method getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    .locals 1

    .prologue
    .line 6416
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementFdtStateManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    return-object v0
.end method

.method public getInstanceComplementNotice()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    return-object v0
.end method

.method getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    return-object v0
.end method

.method getInstanceContentRetry()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentRetry:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;

    return-object v0
.end method

.method getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    return-object v0
.end method

.method getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    return-object v0
.end method

.method getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    return-object v0
.end method

.method getInstanceIndividualController()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mIndividualCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    .line 528
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;
    if-nez v0, :cond_0

    .line 529
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 534
    :cond_0
    return-object v0
.end method

.method getInstanceIndividualEventManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;
    .locals 2

    .prologue
    .line 576
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mIndividualCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getEventManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    move-result-object v0

    .line 580
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;
    return-object v0
.end method

.method getInstanceIndividualStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;
    .locals 2

    .prologue
    .line 553
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mIndividualCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->getStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;

    move-result-object v0

    .line 557
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;
    return-object v0
.end method

.method public getLastSchduleStateMap(Ljava/lang/String;)I
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 4790
    const/4 v1, 0x0

    .line 4793
    .local v1, "state":I
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smLastSchduleStateMap:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4795
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smLastSchduleStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4796
    monitor-exit v3

    .line 4806
    :goto_0
    return v1

    .line 4796
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4797
    :catch_0
    move-exception v0

    .line 4799
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .locals 11
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3588
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageMount()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3589
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v6

    .line 3592
    :cond_0
    const/4 v4, 0x0

    .line 3594
    .local v4, "licenseInfoList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v6, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getLicenseInfo(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 3631
    :goto_0
    return-object v4

    .line 3595
    :catch_0
    move-exception v1

    .line 3596
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v6, "%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3598
    const/4 v5, 0x0

    .line 3600
    .local v5, "result":I
    :try_start_1
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    move-result v5

    .line 3604
    if-nez v5, :cond_1

    .line 3605
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v6
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3609
    :catch_1
    move-exception v2

    .line 3610
    .local v2, "e2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v6, "%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3611
    throw v2

    .line 3607
    .end local v2    # "e2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_1
    :try_start_2
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v6
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3613
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    .end local v5    # "result":I
    :catch_2
    move-exception v1

    .line 3614
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v6, 0x5

    new-array v3, v6, [Ljava/lang/Class;

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v6, v3, v9

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v6, v3, v10

    const/4 v6, 0x2

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v7, v3, v6

    .line 3621
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 3622
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 3623
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_3
    move-exception v1

    .line 3624
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3625
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getManifestoFirstInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aVersion"    # Ljava/lang/String;

    .prologue
    .line 4196
    const/16 v0, 0x15

    .line 4199
    .local v0, "manifestoFirstInfo":I
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4200
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 4204
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getManifestoFirstInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4209
    return v0
.end method

.method public getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .locals 11
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aDictionaryChange"    # Z
    .param p3, "aLanguage"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3667
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageMount()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3668
    const/4 v4, 0x0

    .line 3710
    :goto_0
    return-object v4

    .line 3671
    :cond_0
    const/4 v4, 0x0

    .line 3673
    .local v4, "purchaseInfoList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v6, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getPurchaseInfo(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    goto :goto_0

    .line 3674
    :catch_0
    move-exception v1

    .line 3675
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v6, "%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3677
    const/4 v5, 0x0

    .line 3679
    .local v5, "result":I
    :try_start_1
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    move-result v5

    .line 3683
    if-nez v5, :cond_1

    .line 3684
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v6
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3688
    :catch_1
    move-exception v2

    .line 3689
    .local v2, "e2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v6, "%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3690
    throw v2

    .line 3686
    .end local v2    # "e2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_1
    :try_start_2
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v6
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3692
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    .end local v5    # "result":I
    :catch_2
    move-exception v1

    .line 3693
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v6, 0x5

    new-array v3, v6, [Ljava/lang/Class;

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v6, v3, v9

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v6, v3, v10

    const/4 v6, 0x2

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-class v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v7, v3, v6

    .line 3700
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 3701
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 3702
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_3
    move-exception v1

    .line 3703
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3704
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    .locals 2

    .prologue
    .line 3766
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 3770
    .local v0, "contentSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    return-object v0
.end method

.method public getVersion()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
    .locals 10

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3863
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mBaseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    if-nez v6, :cond_4

    .line 3864
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    invoke-direct {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;-><init>()V

    .line 3866
    .local v0, "baseVersion":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getBaseVersion()Ljava/lang/String;

    move-result-object v4

    .line 3867
    .local v4, "strBaseVersion":Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3868
    .local v5, "strBaseVersions":[Ljava/lang/String;
    if-eqz v5, :cond_6

    array-length v6, v5

    if-lez v6, :cond_6

    .line 3869
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->major_version:I

    .line 3870
    iget v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->major_version:I

    if-gt v7, v6, :cond_0

    iget v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->major_version:I

    if-ge v9, v6, :cond_1

    .line 3871
    :cond_0
    const/4 v6, 0x1

    iput v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->major_version:I

    .line 3873
    :cond_1
    array-length v6, v5

    if-ge v7, v6, :cond_5

    .line 3874
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I

    .line 3875
    iget v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I

    if-ltz v6, :cond_2

    iget v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I

    if-ge v9, v6, :cond_3

    .line 3876
    :cond_2
    const/4 v6, 0x0

    iput v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3895
    .end local v4    # "strBaseVersion":Ljava/lang/String;
    .end local v5    # "strBaseVersions":[Ljava/lang/String;
    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mBaseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    .line 3904
    .end local v0    # "baseVersion":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
    :cond_4
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mBaseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    return-object v6

    .line 3879
    .restart local v0    # "baseVersion":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
    .restart local v4    # "strBaseVersion":Ljava/lang/String;
    .restart local v5    # "strBaseVersions":[Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    :try_start_1
    iput v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3885
    .end local v4    # "strBaseVersion":Ljava/lang/String;
    .end local v5    # "strBaseVersions":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3886
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    new-array v3, v7, [Ljava/lang/Class;

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v6, v3, v8

    .line 3889
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 3890
    .local v1, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 3882
    .end local v1    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v4    # "strBaseVersion":Ljava/lang/String;
    .restart local v5    # "strBaseVersions":[Ljava/lang/String;
    :cond_6
    const/4 v6, 0x1

    :try_start_2
    iput v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->major_version:I

    .line 3883
    const/4 v6, 0x0

    iput v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3891
    .end local v4    # "strBaseVersion":Ljava/lang/String;
    .end local v5    # "strBaseVersions":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 3892
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3893
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public isDownloaded(Ljava/lang/String;)Z
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 3934
    const/4 v3, 0x0

    .line 3938
    .local v3, "ret":Z
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isDownloaded(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 3962
    return v3

    .line 3939
    :catch_0
    move-exception v0

    .line 3940
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3942
    const/4 v2, 0x0

    .line 3944
    .local v2, "result":I
    :try_start_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    move-result v2

    .line 3948
    if-nez v2, :cond_0

    .line 3949
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v4
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3953
    :catch_1
    move-exception v1

    .line 3954
    .local v1, "e2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3955
    throw v1

    .line 3951
    .end local v1    # "e2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_0
    :try_start_2
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v4
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aState"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .param p4, "aErrInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    .line 4495
    packed-switch p2, :pswitch_data_0

    .line 4515
    :goto_0
    return-void

    .line 4497
    :pswitch_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->onRepairStarted(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4500
    :pswitch_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->onRepairFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;Z)V

    goto :goto_0

    .line 4503
    :pswitch_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->onRepairSuccess(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4507
    :pswitch_3
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    invoke-virtual {v0, p1, v2, p3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->onRepairCancel(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Z)V

    goto :goto_0

    .line 4495
    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;Z)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aState"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .param p4, "aErrInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;
    .param p5, "aNotify"    # Z

    .prologue
    const/4 v2, -0x1

    .line 4542
    packed-switch p2, :pswitch_data_0

    .line 4561
    :goto_0
    return-void

    .line 4544
    :pswitch_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->onRepairStarted(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4547
    :pswitch_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->onRepairFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;Z)V

    goto :goto_0

    .line 4550
    :pswitch_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->onRepairSuccess(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4553
    :pswitch_3
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    invoke-virtual {v0, p1, v2, p3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->onRepairCancel(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Z)V

    goto :goto_0

    .line 4542
    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 2
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 781
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->notifyMediaMount()V

    .line 789
    :cond_0
    return-void
.end method

.method public notifyExportFinish(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 6087
    const/4 v3, -0x1

    .line 6090
    .local v3, "ret":I
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6091
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid CRID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6096
    :catch_0
    move-exception v1

    .line 6097
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v5, v2, v4

    .line 6101
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 6103
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    .line 6112
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return v3

    .line 6095
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceIndividualController()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->notifyExportFinish(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_0

    .line 6104
    :catch_1
    move-exception v1

    .line 6105
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6106
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public notifyOpenState(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2558
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2559
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 2563
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyOpenStarted(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2578
    :goto_0
    return-void

    .line 2564
    :catch_0
    move-exception v1

    .line 2565
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v4, v2, v3

    .line 2568
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 2569
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 2570
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 2571
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2572
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public processUnignitedSchedules(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 13
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "aScheduledDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3505
    if-nez p1, :cond_0

    .line 3506
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5

    .line 3510
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 3511
    .local v4, "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3512
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Cancelled by framework"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3557
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_1
    :goto_1
    return-void

    .line 3515
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_2
    iget v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 3517
    :sswitch_0
    iget v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    if-ne v12, v5, :cond_3

    .line 3518
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    iget-object v6, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    iget-object v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;Ljava/lang/String;II)I

    .line 3523
    :cond_3
    const-string v5, "NotFired Schedule CRID:%s Reason:%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3525
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    iget-object v6, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschedAcquisition(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3542
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :catch_0
    move-exception v1

    .line 3543
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    new-array v2, v12, [Ljava/lang/Class;

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v5, v2, v10

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v5, v2, v11

    .line 3547
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 3548
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_1

    .line 3528
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :sswitch_1
    :try_start_1
    iget-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->notifyOpenState(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3549
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :catch_1
    move-exception v1

    .line 3550
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3551
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 3532
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :sswitch_2
    :try_start_2
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    iget-object v6, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschedAcquisition(Ljava/lang/String;)I

    goto :goto_0

    .line 3536
    :sswitch_3
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    iget-object v6, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplementFdtRandom(Ljava/lang/String;)Z
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 3515
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x2000 -> :sswitch_3
    .end sparse-switch
.end method

.method public registIndividualStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 5
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 6215
    const/4 v1, -0x1

    .line 6218
    .local v1, "result":I
    if-nez p1, :cond_0

    .line 6219
    :try_start_0
    const-string v3, "Invalid listener."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    .line 6237
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 6227
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceIndividualController()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->registIndividualStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 6237
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 6230
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 6231
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6232
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public registerCancelDownloadTermination(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;)Z
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCancelDownloadTermination"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;

    .prologue
    .line 4943
    const/4 v1, 0x0

    .line 4945
    .local v1, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mCancelDownloadMap:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4946
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mCancelDownloadMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4947
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mCancelDownloadMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4948
    const/4 v1, 0x1

    .line 4950
    :cond_0
    monitor-exit v3

    .line 4957
    :goto_0
    return v1

    .line 4950
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4951
    :catch_0
    move-exception v0

    .line 4952
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method registerDownloadContentState(Ljava/lang/String;I)I
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aState"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3983
    const/4 v3, 0x0

    .line 3985
    .local v3, "ret":I
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3986
    const/4 v4, -0x2

    .line 4015
    :goto_0
    return v4

    .line 3992
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3993
    :try_start_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3994
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4003
    :goto_1
    const/4 v4, 0x3

    if-eq p2, v4, :cond_1

    const/4 v4, 0x4

    if-ne p2, v4, :cond_2

    .line 4005
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J

    move-result-wide v0

    .line 4006
    .local v0, "currentTime":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->registerExecutionStartTimeMap(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "currentTime":J
    :cond_2
    :goto_2
    move v4, v3

    .line 4015
    goto :goto_0

    .line 3994
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3995
    :catch_0
    move-exception v2

    .line 3997
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v4, "%s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3998
    const/4 v3, -0x2

    goto :goto_1

    .line 4008
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 4009
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "%s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method registerExecutionStartTimeMap(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aTime"    # Ljava/lang/Long;

    .prologue
    .line 5501
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mExecutionStartTimeMap:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5503
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mExecutionStartTimeMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5504
    monitor-exit v2

    .line 5513
    :goto_0
    return-void

    .line 5504
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 5505
    :catch_0
    move-exception v0

    .line 5507
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public registerLastSchduleStateMap(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aState"    # Ljava/lang/Integer;

    .prologue
    .line 4724
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smLastSchduleStateMap:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4726
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smLastSchduleStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4727
    monitor-exit v2

    .line 4736
    :goto_0
    return-void

    .line 4727
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4728
    :catch_0
    move-exception v0

    .line 4730
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method releaseDownloadingCrid(Ljava/lang/String;)V
    .locals 2
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->downloadingCrids:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2855
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->downloadingCrids:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2860
    :cond_0
    return-void
.end method

.method releaseMwSearchInstance(Lmmb/android/MmbFcContMw/MmbFcContMwClient;)V
    .locals 3
    .param p1, "aContClientMw"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .prologue
    .line 3827
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContClientMwList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3828
    const/4 v0, 0x3

    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContClientMwList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 3829
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContClientMwList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3839
    :goto_0
    monitor-exit v1

    .line 3843
    return-void

    .line 3834
    :cond_0
    invoke-virtual {p1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    goto :goto_0

    .line 3839
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeCancelDownloadTermination(Ljava/lang/String;)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 4974
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mCancelDownloadMap:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4975
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mCancelDownloadMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4976
    monitor-exit v2

    .line 4983
    :goto_0
    return-void

    .line 4976
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4977
    :catch_0
    move-exception v0

    .line 4978
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method removeDownloadContentState(Ljava/lang/String;)I
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 4070
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4071
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 4074
    :cond_0
    const/4 v1, 0x0

    .line 4078
    .local v1, "ret":I
    const-wide/32 v2, 0xea60

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->setWakeup(J)V

    .line 4079
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4080
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4081
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4089
    :goto_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeExecutionStartTimeMap(Ljava/lang/String;)V

    .line 4094
    return v1

    .line 4081
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4082
    :catch_0
    move-exception v0

    .line 4084
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4085
    const/4 v1, -0x2

    goto :goto_0
.end method

.method removeExecutionStartTimeMap(Ljava/lang/String;)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 5535
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mExecutionStartTimeMap:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5536
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mExecutionStartTimeMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5537
    monitor-exit v2

    .line 5546
    :goto_0
    return-void

    .line 5537
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 5538
    :catch_0
    move-exception v0

    .line 5540
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeLastSchduleStateMap(Ljava/lang/String;)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 4757
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smLastSchduleStateMap:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4758
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smLastSchduleStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4759
    monitor-exit v2

    .line 4768
    :goto_0
    return-void

    .line 4759
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4760
    :catch_0
    move-exception v0

    .line 4762
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reserveAutoDeletion(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 13
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/16 v12, 0x3c

    .line 1548
    new-instance v5, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v5, v10, v11}, Ljava/util/Random;-><init>(J)V

    .line 1549
    .local v5, "rand":Ljava/util/Random;
    const/16 v9, 0x18

    invoke-virtual {v5, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 1550
    .local v3, "hour":I
    invoke-virtual {v5, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 1551
    .local v4, "minute":I
    invoke-virtual {v5, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 1555
    .local v7, "second":I
    :try_start_0
    const-string v9, "Asia/Tokyo"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 1557
    .local v6, "scheduleCalendar":Ljava/util/Calendar;
    const/16 v9, 0xb

    invoke-virtual {v6, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 1560
    const/16 v9, 0xb

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1561
    .local v8, "utchour":I
    const-string v9, "UTC"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1563
    const/16 v9, 0xb

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1566
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v9, v10, v8, v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setRepeatSchedule(IIII)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1583
    .end local v6    # "scheduleCalendar":Ljava/util/Calendar;
    .end local v8    # "utchour":I
    :goto_0
    return-void

    .line 1568
    :catch_0
    move-exception v1

    .line 1569
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v9, 0x2

    new-array v2, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v10, v2, v9

    const/4 v9, 0x1

    const-class v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v10, v2, v9

    .line 1573
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 1574
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 1575
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 1576
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1577
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v9, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public reserveDownload(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 14
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aSeriesIdList"    # [Ljava/lang/String;
    .param p4, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1623
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1624
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 1628
    :cond_0
    const-wide/16 v2, 0x0

    .line 1630
    .local v2, "currenttime":J
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1635
    const-wide/16 v0, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1639
    const/4 v13, -0x1

    .line 1676
    :goto_0
    return v13

    .line 1631
    :catch_0
    move-exception v11

    .line 1632
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v1, v4

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1633
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1642
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_1
    const/4 v13, 0x0

    .line 1643
    .local v13, "result":I
    const/4 v8, 0x0

    .line 1646
    .local v8, "isCompleteOnly":Z
    :try_start_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->isCompleteOnly(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 1657
    :try_start_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object v1, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->commonReserveSchedule(Ljava/lang/String;JIILjava/lang/String;[Ljava/lang/String;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v13

    goto :goto_0

    .line 1647
    :catch_1
    move-exception v11

    .line 1648
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v1, v4

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1652
    const/4 v13, -0x1

    goto :goto_0

    .line 1661
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v11

    .line 1662
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v1, v12, v0

    const/4 v0, 0x1

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;

    aput-object v1, v12, v0

    const/4 v0, 0x2

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v1, v12, v0

    .line 1667
    .local v12, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v10, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 1668
    .local v10, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 1669
    .end local v10    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v12    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_3
    move-exception v11

    .line 1670
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1671
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setAutoOperationEnvironmentFlag(Z)V
    .locals 10
    .param p1, "aFlag"    # Z

    .prologue
    const/4 v8, 0x1

    .line 3443
    iget-boolean v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smAutoOperationEnvironmentFlag:Z

    if-ne v8, v7, :cond_1

    if-nez p1, :cond_1

    .line 3446
    const/4 v4, 0x0

    .line 3448
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadStateAll()Ljava/util/Map;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 3455
    :try_start_1
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 3456
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3458
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3459
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3460
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3461
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3463
    .local v6, "value":I
    const/4 v7, 0x2

    if-ne v7, v6, :cond_0

    .line 3464
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v7, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->cancelDownload(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3467
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v6    # "value":I
    :catch_0
    move-exception v0

    .line 3468
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3469
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 3449
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 3450
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_2
    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3480
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    return-void

    .line 3475
    :cond_1
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smAutoOperationEnvironmentFlag:Z

    goto :goto_1
.end method

.method setCancelComplementShutdownFlg()V
    .locals 1

    .prologue
    .line 4447
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logEnterPublic([Ljava/lang/Object;)V

    .line 4448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelComplementShutdownFlg:Z

    .line 4449
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logLeavePublic()V

    .line 4450
    return-void
.end method

.method public setDownloadStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 1
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2601
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    .line 2605
    const/4 v0, 0x0

    return v0
.end method

.method public setExecutionStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 1
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2656
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2660
    const/4 v0, -0x1

    .line 2666
    :goto_0
    return v0

    .line 2662
    :cond_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mExecutionStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;

    .line 2666
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpenStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 1
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2628
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mOpenStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;

    .line 2632
    const/4 v0, 0x0

    return v0
.end method

.method setWakeup(J)V
    .locals 5
    .param p1, "aTimeout"    # J

    .prologue
    .line 5467
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    move-result-object v1

    .line 5470
    .local v1, "sleepcontrol":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;
    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->wakeupDevice(J)V

    .line 5471
    const-string v2, "wakeup settings"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5478
    .end local v1    # "sleepcontrol":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;
    :goto_0
    return-void

    .line 5472
    :catch_0
    move-exception v0

    .line 5473
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setupModule()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 663
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->checkNotificationStatus()V

    .line 665
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mConflictCbMnr:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;->registerConflictCallback()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_2

    .line 678
    :goto_0
    return-void

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 668
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    :catch_1
    move-exception v0

    .line 669
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 671
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_2
    move-exception v0

    .line 672
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    throw v0
.end method

.method public startAutoComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4305
    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logEnterPublic([Ljava/lang/Object;)V

    .line 4307
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    invoke-virtual {v3, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->startAutoComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4319
    :goto_0
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logLeavePublic()V

    .line 4320
    return-void

    .line 4308
    :catch_0
    move-exception v1

    .line 4309
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v3, v2, v4

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v3, v2, v5

    .line 4313
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 4314
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 4315
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 4316
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4317
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public startAutoComplementFdt(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6339
    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logEnterPublic([Ljava/lang/Object;)V

    .line 6341
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    invoke-virtual {v3, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->startAutoComplementFdt(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6354
    :goto_0
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logLeavePublic()V

    .line 6355
    return-void

    .line 6342
    :catch_0
    move-exception v1

    .line 6343
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v3, v2, v4

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v3, v2, v5

    .line 6347
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 6349
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 6350
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 6351
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6352
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public startAutoDeletion(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v5, 0x1

    .line 3388
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getStartupMode()I

    move-result v3

    if-ne v5, v3, :cond_0

    .line 3421
    :goto_0
    return-void

    .line 3396
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageMount()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3397
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3401
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->startAutoDeletion()V

    .line 3403
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteInvalidSchedule()V

    .line 3405
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelLongTimeExecution()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3406
    :catch_0
    move-exception v1

    .line 3407
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v4, v2, v3

    const-class v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v3, v2, v5

    .line 3411
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 3412
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 3413
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 3414
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3415
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public startComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 11
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4360
    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v8

    aput-object p2, v5, v9

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logEnterPublic([Ljava/lang/Object;)V

    .line 4364
    const-wide/32 v6, 0x1d4c0

    :try_start_0
    invoke-virtual {p0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->setWakeup(J)V

    .line 4366
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4367
    .local v3, "intent":Landroid/content/Intent;
    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4369
    const-string v5, "scheduleType"

    const/16 v6, 0x10

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4370
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4375
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v4, -0x1

    .line 4377
    .local v4, "result":I
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    invoke-virtual {v5, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->startComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    .line 4391
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logLeavePublic(Ljava/lang/Object;)V

    .line 4392
    return v4

    .line 4371
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 4372
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "failed wakeup %s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4378
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "result":I
    :catch_1
    move-exception v1

    .line 4379
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v5, 0x4

    new-array v2, v5, [Ljava/lang/Class;

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v5, v2, v8

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    aput-object v5, v2, v9

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v5, v2, v10

    const/4 v5, 0x3

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v6, v2, v5

    .line 4385
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 4386
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_1

    .line 4387
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_2
    move-exception v1

    .line 4388
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4389
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public startContentExecution(Ljava/lang/String;Ljava/lang/String;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aContentsPath"    # Ljava/lang/String;
    .param p3, "aIsRewrite"    # Z
    .param p4, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v5, -0x1

    .line 2285
    invoke-virtual {p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    .line 2341
    :cond_0
    :goto_0
    return v4

    .line 2292
    :cond_1
    const/4 v4, 0x0

    .line 2295
    .local v4, "ret":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startContentExecutionCheck(Ljava/lang/String;)I

    move-result v4

    .line 2296
    if-nez v4, :cond_0

    .line 2304
    const/4 v6, 0x5

    invoke-virtual {p0, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->registerDownloadContentState(Ljava/lang/String;I)I

    move-result v4

    .line 2307
    if-eqz v4, :cond_2

    move v4, v5

    .line 2311
    goto :goto_0

    .line 2315
    :cond_2
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v5, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->executeApk(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 2318
    .local v3, "result":Z
    if-eqz v3, :cond_3

    .line 2319
    const/4 v4, 0x0

    goto :goto_0

    .line 2321
    :cond_3
    const/4 v4, -0x1

    .line 2322
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeDownloadContentState(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2324
    .end local v3    # "result":Z
    :catch_0
    move-exception v1

    .line 2325
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v5, 0x4

    new-array v2, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v6, v2, v5

    .line 2331
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 2332
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    goto :goto_0

    .line 2333
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 2334
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2335
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public declared-synchronized startDownload(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 11
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xb

    .line 2698
    monitor-enter p0

    :try_start_0
    const-string v7, "[%s] startDownload Start"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2701
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v6

    .line 2702
    .local v6, "status":I
    const/16 v7, -0x15

    if-eq v6, v7, :cond_2

    .line 2703
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    const v8, 0x7f040004

    const/4 v9, 0x1

    invoke-virtual {v7, p1, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadFailedNotice(Ljava/lang/String;IZ)V

    .line 2706
    if-ne v10, p2, :cond_0

    .line 2708
    const/16 v7, -0x13

    invoke-direct {p0, p1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->checkStartDownloadResult(Ljava/lang/String;I)V

    .line 2711
    :cond_0
    sparse-switch v6, :sswitch_data_0

    .line 2723
    const-string v7, "This CRID already started Other. status[%d]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2816
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 2714
    :sswitch_0
    :try_start_1
    const-string v7, "This CRID already started Download. status[%d]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2698
    .end local v6    # "status":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 2719
    .restart local v6    # "status":I
    :sswitch_1
    :try_start_2
    const-string v7, "This CRID already started Complement. status[%d]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2720
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    invoke-virtual {v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschedAcquisition(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2732
    :cond_2
    const/4 v5, 0x0

    .line 2733
    .local v5, "result":I
    const/4 v2, 0x0

    .line 2737
    .local v2, "err":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->toAdjustArbitration()V

    .line 2739
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    invoke-virtual {v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->isCompleteOnlySchedule(Ljava/lang/String;)Z

    move-result v4

    .line 2740
    .local v4, "isCompleteOnly":Z
    if-eqz v4, :cond_3

    .line 2741
    invoke-virtual {p0, p1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2742
    const/4 v5, 0x0

    .line 2803
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2805
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startDownloadFatalReceived(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2748
    :cond_3
    :try_start_5
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startDownloadCheck(Ljava/lang/String;I)I

    move-result v5

    .line 2749
    invoke-direct {p0, p1, p2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startDownloadSetHistory(Ljava/lang/String;II)V
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2750
    if-eqz v5, :cond_7

    .line 2753
    :try_start_6
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    invoke-virtual {v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschedAcquisition(Ljava/lang/String;)I
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2759
    :goto_1
    const/16 v7, -0x1d

    if-eq v7, v5, :cond_4

    .line 2760
    :try_start_7
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v7

    const v8, 0x7f040004

    const/4 v9, 0x1

    invoke-virtual {v7, p1, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadFailedNotice(Ljava/lang/String;IZ)V

    .line 2763
    :cond_4
    invoke-virtual {p3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V
    :try_end_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2803
    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2805
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startDownloadFatalReceived(Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 2754
    :catch_0
    move-exception v1

    .line 2755
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_9
    const-string v7, "reschedule update error!"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    .line 2790
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v4    # "isCompleteOnly":Z
    :catch_1
    move-exception v1

    .line 2791
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    move-object v2, v1

    .line 2792
    const/4 v7, 0x2

    :try_start_a
    new-array v3, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v8, v3, v7

    .line 2796
    .local v3, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 2797
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2803
    if-eqz v2, :cond_5

    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2805
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startDownloadFatalReceived(Ljava/lang/String;I)V

    .line 2810
    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v3    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    :goto_2
    const-string v7, "[%s] startDownload End"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 2756
    .restart local v4    # "isCompleteOnly":Z
    :catch_2
    move-exception v1

    .line 2757
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :try_start_c
    const-string v7, "reschedule update error!"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_1

    .line 2798
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v4    # "isCompleteOnly":Z
    :catch_3
    move-exception v1

    .line 2799
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v1

    .line 2800
    :try_start_d
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2801
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 2803
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    if-eqz v2, :cond_6

    :try_start_e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2805
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startDownloadFatalReceived(Ljava/lang/String;I)V

    :cond_6
    throw v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 2773
    .restart local v4    # "isCompleteOnly":Z
    :cond_7
    :try_start_f
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v7, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->startDownload(Ljava/lang/String;I)I

    move-result v5

    .line 2776
    if-ne v10, p2, :cond_8

    .line 2777
    invoke-direct {p0, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->checkStartDownloadResult(Ljava/lang/String;I)V
    :try_end_f
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 2779
    :cond_8
    if-eqz v5, :cond_9

    .line 2781
    :try_start_10
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    invoke-virtual {v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschedAcquisition(Ljava/lang/String;)I
    :try_end_10
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 2785
    :goto_3
    :try_start_11
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v7

    const v8, 0x7f040004

    const/4 v9, 0x1

    invoke-virtual {v7, p1, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadFailedNotice(Ljava/lang/String;IZ)V

    .line 2787
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeLastSchduleStateMap(Ljava/lang/String;)V

    .line 2789
    :cond_9
    invoke-virtual {p3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V
    :try_end_11
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2803
    if-eqz v2, :cond_5

    :try_start_12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2805
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startDownloadFatalReceived(Ljava/lang/String;I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_2

    .line 2782
    :catch_4
    move-exception v1

    .line 2783
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_13
    const-string v7, "reschedule update error!"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_13
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_3

    .line 2711
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x4a -> :sswitch_1
    .end sparse-switch
.end method

.method public startExportThumbnail(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;
    .locals 29
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aUri"    # Ljava/lang/String;
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2079
    invoke-static/range {p1 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 2080
    new-instance v25, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct/range {v25 .. v25}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v25

    .line 2083
    :cond_0
    if-nez p2, :cond_1

    .line 2084
    new-instance v25, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct/range {v25 .. v25}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v25

    .line 2087
    :cond_1
    new-instance v18, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;

    invoke-direct/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;-><init>()V

    .line 2088
    .local v18, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbReturnValue:I

    .line 2089
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    .line 2091
    const/4 v10, 0x0

    .line 2092
    .local v10, "foreignMode":I
    const/4 v11, 0x0

    .line 2094
    .local v11, "getThumbnailDataFlg":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v13

    .line 2095
    .local v13, "mConflict":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkForeignMode()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 2111
    const-string v25, "http"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 2113
    if-eqz v10, :cond_2

    move-object/from16 v19, v18

    .line 2245
    .end local v13    # "mConflict":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v18    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;
    .local v19, "result":Ljava/lang/Object;
    :goto_0
    return-object v19

    .line 2096
    .end local v19    # "result":Ljava/lang/Object;
    .restart local v18    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;
    :catch_0
    move-exception v7

    .line 2097
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    const-string v25, "%s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v7, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v19, v18

    .line 2101
    .restart local v19    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 2102
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    .end local v19    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v7

    .line 2103
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v25, "%s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v7, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v19, v18

    .line 2107
    .restart local v19    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 2119
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v19    # "result":Ljava/lang/Object;
    .restart local v13    # "mConflict":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    :cond_2
    const/16 v25, -0x24

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbReturnValue:I

    .line 2121
    const/4 v12, 0x0

    .line 2123
    .local v12, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v24, Ljava/net/URL;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2124
    .local v24, "url":Ljava/net/URL;
    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    .line 2126
    .local v15, "oc":Ljava/net/URLConnection;
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v16

    .line 2128
    .local v16, "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    const/16 v25, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2132
    .local v5, "connectiontimeout":I
    const/16 v25, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 2136
    .local v17, "readtimeout":I
    invoke-virtual {v15, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 2137
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 2140
    invoke-virtual {v15}, Ljava/net/URLConnection;->connect()V

    .line 2142
    invoke-virtual {v15}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v14

    .line 2143
    .local v14, "ob":Ljava/lang/Object;
    move-object v0, v14

    check-cast v0, Ljava/io/InputStream;

    move-object v12, v0

    .line 2145
    invoke-static {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2150
    if-eqz v12, :cond_3

    .line 2152
    :try_start_2
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v5    # "connectiontimeout":I
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v14    # "ob":Ljava/lang/Object;
    .end local v15    # "oc":Ljava/net/URLConnection;
    .end local v16    # "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v17    # "readtimeout":I
    .end local v24    # "url":Ljava/net/URL;
    :cond_3
    :goto_1
    move-object/from16 v19, v18

    .line 2245
    .restart local v19    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2153
    .end local v19    # "result":Ljava/lang/Object;
    .restart local v5    # "connectiontimeout":I
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v14    # "ob":Ljava/lang/Object;
    .restart local v15    # "oc":Ljava/net/URLConnection;
    .restart local v16    # "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .restart local v17    # "readtimeout":I
    .restart local v24    # "url":Ljava/net/URL;
    :catch_2
    move-exception v7

    .line 2154
    .local v7, "e":Ljava/io/IOException;
    const-string v25, "%s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v7, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2146
    .end local v5    # "connectiontimeout":I
    .end local v7    # "e":Ljava/io/IOException;
    .end local v14    # "ob":Ljava/lang/Object;
    .end local v15    # "oc":Ljava/net/URLConnection;
    .end local v16    # "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v17    # "readtimeout":I
    .end local v24    # "url":Ljava/net/URL;
    :catch_3
    move-exception v7

    .line 2147
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v25, "%s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v7, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2148
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2150
    if-eqz v12, :cond_3

    .line 2152
    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 2153
    :catch_4
    move-exception v7

    .line 2154
    const-string v25, "%s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v7, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2150
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v25

    if-eqz v12, :cond_4

    .line 2152
    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 2155
    :cond_4
    :goto_2
    throw v25

    .line 2153
    :catch_5
    move-exception v7

    .line 2154
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v26, "%s"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v7, v27, v28

    invoke-static/range {v26 .. v27}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2159
    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "is":Ljava/io/InputStream;
    :cond_5
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbReturnValue:I

    .line 2162
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v3

    .line 2163
    .local v3, "casdrmModule":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    const/16 v23, 0x0

    .line 2164
    .local v23, "thumbPath":Ljava/lang/String;
    const/16 v21, 0x0

    .line 2166
    .local v21, "thumbCrid":Ljava/lang/String;
    :try_start_6
    const-string v25, "#"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 2167
    .local v8, "endIndex":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v0, v8, :cond_6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v25

    if-le v8, v0, :cond_7

    .line 2168
    :cond_6
    const-string v25, "aUri -> parameter error"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2169
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbReturnValue:I

    move-object/from16 v19, v18

    .line 2173
    .restart local v19    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2176
    .end local v19    # "result":Ljava/lang/Object;
    :cond_7
    const/16 v25, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 2178
    .local v20, "thumbCommonCrid":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 2181
    .local v22, "thumbFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getCridFromMobileSpec(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 2182
    .local v6, "cridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v25

    if-nez v25, :cond_8

    move-object/from16 v19, v18

    .line 2189
    .restart local v19    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2191
    .end local v19    # "result":Ljava/lang/Object;
    :cond_8
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0

    .line 2194
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 2197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->isEncrypted(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 2199
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;-><init>()V

    .line 2200
    .local v4, "checkInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;
    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    .line 2203
    const/16 v25, 0x0

    move-object/from16 v0, v25

    iput-object v0, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmMetadatainfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .line 2206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getEntityId(Ljava/lang/String;)B

    move-result v9

    .line 2207
    .local v9, "entityId":B
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v4, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v3, v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V

    .line 2209
    iget-short v0, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v25, v0

    if-nez v25, :cond_a

    .line 2210
    if-nez v10, :cond_9

    .line 2211
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v3, v9, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->addLicenseInfo(BLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 2212
    const/4 v11, 0x1

    .line 2237
    .end local v4    # "checkInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;
    .end local v9    # "entityId":B
    :cond_9
    :goto_3
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_3

    .line 2238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getThumbnailData(Ljava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;

    move-result-object v18

    goto/16 :goto_1

    .line 2215
    .restart local v4    # "checkInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;
    .restart local v9    # "entityId":B
    :cond_a
    const/16 v25, 0x1

    :try_start_7
    iget-short v0, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 2216
    const/4 v11, 0x1

    goto :goto_3

    .line 2218
    :cond_b
    if-nez v10, :cond_c

    .line 2219
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v3, v9, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->addLicenseInfo(BLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 2221
    :cond_c
    const/4 v11, 0x1

    goto :goto_3

    .line 2224
    .end local v4    # "checkInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;
    .end local v9    # "entityId":B
    :cond_d
    const/4 v11, 0x1

    goto :goto_3

    .line 2226
    .end local v6    # "cridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "endIndex":I
    .end local v20    # "thumbCommonCrid":Ljava/lang/String;
    .end local v22    # "thumbFileName":Ljava/lang/String;
    :catch_6
    move-exception v7

    .line 2227
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2228
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    const-class v26, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 2229
    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    .end local v7    # "e":Ljava/lang/Exception;
    throw v7

    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_e
    move-object/from16 v19, v18

    .line 2234
    .restart local v19    # "result":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public startIndividualExport(Ljava/lang/String;Ljava/lang/String;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 9
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aContentsPath"    # Ljava/lang/String;
    .param p3, "aIsRewrite"    # Z
    .param p4, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v8, 0x1

    .line 5943
    const/4 v3, -0x1

    .line 5947
    .local v3, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getStartupMode()I

    move-result v5

    if-ne v8, v5, :cond_0

    .line 5949
    const/4 v3, -0x1

    move v4, v3

    .line 6001
    .end local v3    # "ret":I
    .local v4, "ret":I
    :goto_0
    return v4

    .line 5956
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5957
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid CRID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5984
    :catch_0
    move-exception v1

    .line 5985
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/4 v5, 0x3

    new-array v2, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    aput-object v6, v2, v5

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    aput-object v5, v2, v8

    const/4 v5, 0x2

    const-class v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    aput-object v6, v2, v5

    .line 5990
    .local v2, "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;-><init>([Ljava/lang/Class;)V

    .line 5992
    .local v0, "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;->checkException(Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;)V

    .end local v0    # "checker":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcServiceExceptionCheckerSv;
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .end local v2    # "exceptionClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_1
    move v4, v3

    .line 6001
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_0

    .line 5960
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_1
    if-nez p2, :cond_2

    .line 5961
    :try_start_1
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v6, "Invalid content path"

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5993
    :catch_1
    move-exception v1

    .line 5994
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5995
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 5964
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageMount()Z

    move-result v5

    if-nez v5, :cond_3

    .line 5965
    const/16 v3, -0x12

    move v4, v3

    .line 5969
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_0

    .line 5972
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_3
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isDownloaded(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 5973
    const/16 v3, -0x15

    move v4, v3

    .line 5977
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_0

    .line 5981
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_4
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceIndividualController()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->startIndividualExport(Ljava/lang/String;Ljava/lang/String;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    goto :goto_1
.end method

.method public startupModule()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    .line 600
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    .line 601
    .local v3, "main":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-direct {v6, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    .line 602
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    invoke-direct {v6, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    .line 603
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    invoke-direct {v6, v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)V

    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    .line 604
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    invoke-direct {v6, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentSchedule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    .line 605
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    invoke-direct {v6, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    .line 606
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;

    invoke-direct {v6, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mConflictCbMnr:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackManagerSv;

    .line 607
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    invoke-direct {v6, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    .line 608
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;

    invoke-direct {v6, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentRetry:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;

    .line 609
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->initialize()V

    .line 610
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    invoke-direct {v6, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)V

    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mIndividualCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    .line 611
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    invoke-direct {v6, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)V

    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementFdtStateManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    .line 612
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;

    invoke-direct {v6, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mComplementFdtNotice:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;

    .line 614
    const/4 v4, 0x0

    .line 616
    .local v4, "result":I
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;

    invoke-direct {v7, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    move-result v4

    .line 619
    if-ne v9, v4, :cond_0

    .line 620
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v6
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :catch_0
    move-exception v1

    .line 636
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 637
    throw v1

    .line 623
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentAccess:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExecutionEventListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->registerApkStateListener(Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwListener;)V

    .line 625
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v2, v6, :cond_2

    .line 626
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-direct {v0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;-><init>()V

    .line 627
    .local v0, "contClientMw":Lmmb/android/MmbFcContMw/MmbFcContMwClient;
    const/4 v5, 0x0

    .line 629
    .local v5, "retLsn":I
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContentUtility:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClient;Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    move-result v5

    .line 630
    if-ne v9, v5, :cond_1

    .line 631
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v6

    .line 633
    :cond_1
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mContClientMwList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_0

    .line 625
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 642
    .end local v0    # "contClientMw":Lmmb/android/MmbFcContMw/MmbFcContMwClient;
    .end local v5    # "retLsn":I
    :cond_2
    return-void
.end method

.method public unregistIndividualStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 5
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 6265
    const/4 v1, -0x1

    .line 6268
    .local v1, "result":I
    if-nez p1, :cond_0

    .line 6269
    :try_start_0
    const-string v3, "Invalid listener."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    .line 6287
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 6277
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceIndividualController()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualControllerSv;->unregistIndividualStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 6287
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 6280
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 6281
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6282
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method updateDownloadContentState(Ljava/lang/String;I)I
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aState"    # I

    .prologue
    .line 4034
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logEnterMethod([Ljava/lang/Object;)V

    .line 4035
    const/4 v0, 0x0

    .line 4038
    .local v0, "ret":I
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    monitor-enter v2

    .line 4039
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4041
    const/16 v0, -0x15

    .line 4047
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4048
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logLeaveMethod(Ljava/lang/Object;)V

    .line 4049
    return v0

    .line 4045
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4047
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
